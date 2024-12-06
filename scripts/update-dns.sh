# curl -X GET "https://api.cloudflare.com/client/v4/user/tokens/verify" \
#      -H "Authorization: Bearer WxcSUNt6TwKg1ZoJiCRbwkVNhWqdIskUO6IkszIW" \
#      -H "Content-Type:application/json"

IP=$(curl -s ifconfig.me)

RESPONSE=$(curl -s --request PUT \
            --url https://api.cloudflare.com/client/v4/zones/70aa884b93aad85261978f9b0939edc5/dns_records/
        )






curl --request GET \
  --url https://api.cloudflare.com/client/v4/zones/70aa884b93aad85261978f9b0939edc5/dns_records \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer WxcSUNt6TwKg1ZoJiCRbwkVNhWqdIskUO6IkszIW'