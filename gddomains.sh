gd_domains () {
  curl -s "https:/api.ote-godaddy.com/v1/domains" -H "Accept: application/json" -H "Authorization: sso-key $GDkey:$GDsecret" | jq -r '.[].domain' > $1
}

# Usage - gd_domains ouput_file_name.txt
