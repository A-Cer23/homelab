# curl -X GET "https://api.cloudflare.com/client/v4/user/tokens/verify" \
#      -H "Authorization: Bearer WxcSUNt6TwKg1ZoJiCRbwkVNhWqdIskUO6IkszIW" \
#      -H "Content-Type:application/json"

ZONE_ID=70aa884b93aad85261978f9b0939edc5
IP=$(curl -s ifconfig.me)

RESPONSE=$(curl -s --request PUT \
            --url https://api.cloudflare.com/client/v4/zones/70aa884b93aad85261978f9b0939edc5/dns_records/
        )


RECORDS=$(curl -s --request GET \
  --url https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer WxcSUNt6TwKg1ZoJiCRbwkVNhWqdIskUO6IkszIW' | \
  jq -r .result)


for record in $(echo "$RECORDS" | jq .); do
  echo "RECORD: $record"
done
# NEW_RECORDS=$(echo "$RECORDS" | jq -r '{name: .name, id: .id}')

# for record in $(echo "$RECORDS" | jq -r '{name: .name, id: .id}'); do
#   echo "RECORD: " $(echo "RECORD" | jq -r .name)
# done