#!/bin/bash
# CYBER FLAY - OSINT v1 (7 fitur)

WHOISXML_KEY="at_T6HoPk7qbCgBYyNhkGQXi0rOitsja"

while true; do
  clear
  echo "======================================"
  echo "        CYBER FLAY (7 fitur)          "
  echo "======================================"
  echo "1. WHOIS Lookup (WhoisXMLAPI)"
  echo "2. GeoIP Lookup (ip-api.com)"
  echo "3. Extract Links Website (HackerTarget)"
  echo "4. HTTP Headers Check (HackerTarget)"
  echo "5. SSL Certificate Info (crt.sh)"
  echo "6. Security Headers Scan"
  echo "7. ThreatFox IOC Lookup"
  echo "0. Keluar"
  echo "======================================"
  read -p "Pilih menu: " menu

  case $menu in
    1)
      read -p "Masukkan domain: " domain
      curl -s "https://www.whoisxmlapi.com/whoisserver/WhoisService?apiKey=$WHOISXML_KEY&domainName=$domain&outputFormat=JSON" | jq .
      read -p "Tekan enter untuk lanjut..."
      ;;
    2)
      read -p "Masukkan IP/domain: " target
      curl -s "http://ip-api.com/json/$target?fields=66846719" | jq .
      read -p "Tekan enter untuk lanjut..."
      ;;
    3)
      read -p "Masukkan domain: " domain
      curl -s "https://api.hackertarget.com/pagelinks/?q=$domain"
      read -p "Tekan enter untuk lanjut..."
      ;;
    4)
      read -p "Masukkan domain: " domain
      curl -s "https://api.hackertarget.com/httpheaders/?q=$domain"
      read -p "Tekan enter untuk lanjut..."
      ;;
    5)
      read -p "Masukkan domain: " domain
      curl -s "https://crt.sh/?q=$domain&output=json" | jq .
      read -p "Tekan enter untuk lanjut..."
      ;;
    6)
      read -p "Masukkan domain: " domain
      curl -s "https://securityheaders.com/?q=$domain&hide=on&followRedirects=on"
      read -p "Tekan enter untuk lanjut..."
      ;;
    7)
      read -p "Masukkan IOC (contoh: IP/Domain/Hash): " ioc
      curl -s "https://threatfox-api.abuse.ch/api/v1/" -H "Content-Type: application/json" -d "{\"query\":\"search_ioc\",\"search_term\":\"$ioc\"}" | jq .
      read -p "Tekan enter untuk lanjut..."
      ;;
    0)
      echo "Keluar..."
      exit 0
      ;;
    *)
      echo "Menu tidak valid!"
      ;;
  esac
done
