HOST="127.0.0.1"
PORT=${1:-"6666"}
CMD="./vuln"
#CMD="LD_PRELOAD=./hook.so ./vuln"

ncat -vk -c "${CMD}" -l ${HOST} ${PORT}
