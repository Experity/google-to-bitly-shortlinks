while read p
do
  echo -n $p >> expanded_urls.txt
  curl -sIL $p | grep Location: | tail -1  >> expanded_urls.txt
done <google_urls.txt
