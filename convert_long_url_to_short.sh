curl -G \
  --data-urlencode "access_token=$1" \
  --data-urlencode "url=$2" \
  https://api-ssl.bitly.com/v3/shorten | grep -oh 'bit\.ly/[^\s"]*' > generated_bitly_links.txt
