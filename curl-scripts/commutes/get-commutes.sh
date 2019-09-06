curl "http://localhost:4741/commutes" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo