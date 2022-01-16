curl --request POST \
  --url https://api.sendgrid.com/v3/mail/send \
  --header "Authorization: Bearer "${SEND_GRID_API_TOKEN}"" \
  --header 'Content-Type: application/json' \
  --data '{"personalizations": [{"to": [{"email": "suleparlat@gmail.com"}]}],"from": {"email": "suleparlat@gmail.com"},"subject": "Application has been deployed to production!","content": [{"type": "text/plain", "value": "The staging pipeline has been done!"}]}'
