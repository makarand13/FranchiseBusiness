#Get categories



for bus in `cat business-urls.out`
do
  curl -v -s http://www.franchisebusiness.com.au/brands/$bus#taball > $bus.html
  grep "<dt>" $bus.html | cut -f2 -d">" | cut -f1 -d"<" >> categories.out
done
