curl -c cookie-tenda.txt 'http://192.168.1.2:8090/login/Auth' \
  -H 'Connection: keep-alive' \
  -H 'Cache-Control: max-age=0' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'Origin: http://192.168.1.2:8090' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Sec-GPC: 1' \
  -H 'Referer: http://192.168.1.2:8090/login.html' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'Cookie: bLanguage=en; ecos_pw=c3lhZmlrMDAxazx:language=cn' \
  --data-raw 'password=c3lhZmlrMDAx' \
  --insecure

curl -b cookie-tenda.txt 'http://192.168.1.2:8090/goform/sysReboot' \
  -H 'Connection: keep-alive' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36' \
  -H 'Content-Type: application/x-www-form-urlencoded;' \
  -H 'Accept: */*' \
  -H 'Sec-GPC: 1' \
  -H 'Origin: http://192.168.1.2:8090' \
  -H 'Referer: http://192.168.1.2:8090/index.html' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  --data-raw 'module1=sysOperate&action=reboot' \
  --insecure
