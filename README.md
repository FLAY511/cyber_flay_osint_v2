# CYBER FLAY OSINT v2

Tool OSINT sederhana untuk Termux/Linux dengan 7 fitur API nyata.

## ✨ Fitur
1. WHOIS Lookup (WhoisXMLAPI, butuh API key)
2. GeoIP Lookup (ip-api.com, gratis)
3. Extract Links Website (HackerTarget, gratis)
4. HTTP Headers Check (HackerTarget, gratis)
5. SSL Certificate Info (crt.sh, gratis)
6. Security Headers Scan (securityheaders.com, gratis)
7. ThreatFox IOC Lookup (Abuse.ch, gratis)

## 📦 Instalasi
```bash
pkg update -y && pkg upgrade -y
pkg install curl jq -y
git clone https://github.com/FLAY511/cyber_flay_osint_v2.git
cd cyber_flay_osint_v2
chmod +x cyber_flay.sh
./cyber_flay.sh
```

## 🔑 API Key
Untuk fitur WHOIS, masukkan API key WhoisXMLAPI kamu di bagian:
```bash
WHOISXML_KEY="API_KEY_KAMU"
```

## 📸 Screenshot
(Tambahkan screenshot hasil di sini setelah menjalankan)

---
Created by Flay 🕶️
