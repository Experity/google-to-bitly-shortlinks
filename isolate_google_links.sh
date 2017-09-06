while read p
do
  echo $p | grep -oh "goo\.gl/[^\s]\{6\}" >> google_urls.txt
done
