curl -i -s -k -X $'POST' \
    -H $'Host: 192.168.0.1' -H $'Content-Length: 49' -H $'Accept: application/json, text/javascript, */*; q=0.01' -H $'X-Requested-With: XMLHttpRequest' -H $'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.152 Safari/537.36' -H $'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H $'Sec-GPC: 1' -H $'Origin: http://192.168.0.1' -H $'Referer: http://192.168.0.1/index.html' -H $'Accept-Encoding: gzip, deflate' -H $'Accept-Language: en-US,en;q=0.9' -H $'Connection: close' \
    --data-binary $'isTest=false&goformId=LOGIN&password=c3lhZmlrMDAx' \
    $'http://192.168.0.1/goform/goform_set_cmd_process' &> /dev/null

curl 'http://192.168.0.1/goform/goform_get_cmd_process?multi_data=1&isTest=false&sms_received_flag_flag=0&sts_received_flag_flag=0&cmd=modem_main_state%2Cpin_status%2Cloginfo%2Cnew_version_state%2Ccurrent_upgrade_state%2Cis_mandatory%2Csignalbar%2Cnetwork_type%2Cnetwork_provider%2Cppp_status%2CEX_SSID1%2Csta_ip_status%2CEX_wifi_profile%2Cm_ssid_enable%2CRadioOff%2Csimcard_roam%2Clan_ipaddr%2Cstation_mac%2Cbattery_charging%2Cbattery_vol_percent%2Cbattery_pers%2Cspn_display_flag%2Cplmn_display_flag%2Cspn_name_data%2Cspn_b1_flag%2Cspn_b2_flag%2Crealtime_tx_bytes%2Crealtime_rx_bytes%2Crealtime_time%2Crealtime_tx_thrpt%2Crealtime_rx_thrpt%2Cmonthly_rx_bytes%2Cmonthly_tx_bytes%2Cmonthly_time%2Cdate_month%2Cdata_volume_limit_switch%2Cdata_volume_limit_size%2Cdata_volume_alert_percent%2Cdata_volume_limit_unit%2Croam_setting_option%2Cupg_roam_switch%2Cap_station_mode%2Chplmn%2Chmcc%2Chmnc%2Csms_received_flag%2Csts_received_flag%2Csms_unread_num&_=1616862309334' \
  -H 'Connection: keep-alive' \
  -H 'Accept: application/json, text/javascript, */*; q=0.01' \
  -H 'User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.105 Mobile Safari/537.36' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'Sec-GPC: 1' \
  -H 'Referer: http://192.168.0.1/index.html' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  --insecure
