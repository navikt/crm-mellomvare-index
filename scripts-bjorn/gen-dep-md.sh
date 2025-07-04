#!/bin/bash

# Script to run in folder with build.gradle file to fetch documentation snippets from local instance of crm-mellomvare-index/dep-docs and generate a dependencies.md file from them

# Full path to dep-docs
DEP_DOCS_PATH="../crm-mellomvare-index/dep-docs"

# Output file
OUTPUT_FILE="dependencies.md"

echo "📦 Leser dependencies fra build.gradle..."

##############
# Dependencies
##############
echo "## Dependencies" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

grep -E '^\s*implementation\s+"[^"]+"' build.gradle | sed -E 's/.*"([^"]+)".*/\1/' | while IFS= read -r dep; do
    IFS=':' read -r group artifact version <<< "$dep"
    key="$group:$artifact"
    filename="${artifact}.md"
    doc_file="$DEP_DOCS_PATH/$filename"

    echo "🔍 Fant avhengighet: $key:$version"
    echo "<details>" >> "$OUTPUT_FILE"
    echo "<summary><strong>\`$key:$version\`</strong></summary>" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    if [[ -f "$doc_file" ]]; then
        echo "✅ Dokumentasjon funnet: $filename"
        cat "$doc_file" >> "$OUTPUT_FILE"
    else
        echo "⚠️ Mangler dokumentasjon: $filename"
        echo "_Manglende dokumentasjon i dep-docs for \`$key\`_" >> "$OUTPUT_FILE"
    fi

    echo "" >> "$OUTPUT_FILE"
    echo "</details>" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
done

echo "## Plugins" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

echo "🔌 Leser plugins fra build.gradle..."

while IFS=: read -r plugin_id plugin_version; do
    artifact_name="${plugin_id##*.}"

    echo "🔍 Fant plugin: $plugin_id:$plugin_version"
    echo "<details>" >> "$OUTPUT_FILE"
    echo "<summary><strong>\`$plugin_id:$plugin_version\`</strong></summary>" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    filename="${artifact_name}.md"
    doc_file="$DEP_DOCS_PATH/$filename"

    if [[ -f "$doc_file" ]]; then
        echo "✅ Dokumentasjon funnet: $filename"
        cat "$doc_file" >> "$OUTPUT_FILE"
    else
        echo "⚠️ Mangler dokumentasjon: $filename"
        echo "_Manglende dokumentasjon i dep-docs for plugin \`$plugin_id\`_" >> "$OUTPUT_FILE"
    fi

    echo "" >> "$OUTPUT_FILE"
    echo "</details>" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
done < <(
  grep -E "^\s*id\s+'[^']+'\s+version\s+'[^']+'" build.gradle |
  sed "s/^[[:space:]]*id '\([^']*\)' version '\([^']*\)'.*/\1:\2/"
)

echo "✅ Filen '$OUTPUT_FILE' er generert."
