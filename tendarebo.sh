curl -i -s -k -X $'POST' \
    -H $'Host: 192.168.3.1' -H $'Content-Length: 21' -H $'Cache-Control: max-age=0' -H $'Upgrade-Insecure-Requests: 1' -H $'Origin: http://192.168.3.1' -H $'Content-Type: application/x-www-form-urlencoded' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Safari/537.36' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' -H $'Sec-GPC: 1' -H $'Referer: http://192.168.3.1/login.html' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Cookie: bLanguage=en; ecos_pw=c3lhZmlrMDAxazx:language=cn' -H $'Connection: close' \
    -b $'bLanguage=en; ecos_pw=c3lhZmlrMDAxazx:language=cn' \
    --data-binary $'password=c3lhZmlrMDAx' \
    $'http://192.168.3.1/login/Auth'
