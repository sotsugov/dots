API="https://ipv4.am.i.mullvad.net/json"

data=$(curl -sf $API)

if [ -n "$data" ]; then
    data_city=$(echo "$data" | jq -r .city)
    data_country=$(echo "$data" | jq -r .country)
    echo "$data_city, $data_country"

fi