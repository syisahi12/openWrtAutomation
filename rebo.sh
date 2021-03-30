logger -p daemon.info -t "watchcat[EXECUTED]" "Modem Reboot!"
curl -i -s -k -X $'POST' \
    -H $'Host: 192.168.0.1' -H $'Content-Length: 49' -H $'Accept: application/json, text/javascript, */*; q=0.01' -H $'X-Requested-With: XMLHttpRequest' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Safari/537.36' -H $'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H $'Sec-GPC: 1' -H $'Origin: http://192.168.0.1' -H $'Referer: http://192.168.0.1/index.html' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Connection: close' \
    --data-binary $'isTest=false&goformId=LOGIN&password=c3lhZmlrMDAx' \
    $'http://192.168.0.1/goform/goform_set_cmd_process' &> /dev/null
sleep 10
curl -i -s -k -X $'POST' \
    -H $'Host: 192.168.0.1' -H $'Content-Length: 35' -H $'Accept: application/json, text/javascript, */*; q=0.01' -H $'X-Requested-With: XMLHttpRequest' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36' -H $'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H $'Sec-GPC: 1' -H $'Origin: http://192.168.0.1' -H $'Referer: http://192.168.0.1/index.html' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Connection: close' \
    --data-binary $'isTest=false&goformId=REBOOT_DEVICE' \
    $'http://192.168.0.1/goform/goform_set_cmd_process' &> /dev/null
sleep 20
