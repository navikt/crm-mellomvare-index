# Build quickly with lint correction:
alias g="./gradlew clean formatKotlin lintKotlin build"
alias f="./gradlew formatKotlin lintKotlin build"

# Reconfigure kubectl quickly to look at different relevant clusters and namespaces
alias dev-fss="kubectl config use-context dev-fss"
alias prod-fss="kubectl config use-context prod-fss"
alias dev-gcp="kubectl config use-context dev-gcp"
alias prod-gcp="kubectl config use-context prod-gcp"
alias teamcrm="kubectl config set-context dev-gcp --namespace=teamcrm ; kubectl config set-context prod-gcp --namespace=teamcrm ; kubectl config set-context dev-fss --namespace=teamcrm ; kubectl config set-context prod-fss --namespace=teamcrm"
alias teamnks="kubectl config set-context dev-gcp --namespace=teamnks ; kubectl config set-context prod-gcp --namespace=teamnks ; kubectl config set-context dev-fss --namespace=teamnks ; kubectl config set-context prod-fss --namespace=teamnks"
alias team-dialog="kubectl config set-context dev-gcp --namespace=team-dialog ; kubectl config set-context prod-gcp --namespace=team-dialog ; kubectl config set-context dev-fss --namespace=team-dialog ; kubectl config set-context prod-fss --namespace=team-dialog"
alias slack="kubectl config set-context dev-gcp --namespace=slack ; kubectl config set-context prod-gcp --namespace=slack ; kubectl config set-context dev-fss --namespace=slack ; kubectl config set-context prod-fss --namespace=slack"

# Short for kubectl commands
alias k="kubectl"
alias current-context="kubectl config current-context"
alias pods="kubectl get pods"
alias topics="kubectl get topics"
alias redeploy="kubectl rollout restart deployment"

# Trigger scripts from here, if made executable and placed in ~/bin/
alias enter=~/bin/enter.sh
alias logfind=~/bin/logfind.sh
alias rescale=~/bin/rescale.sh
alias logs=~/bin/logs.sh
alias gen-dep-md=~/bin/gen-dep-md.sh
