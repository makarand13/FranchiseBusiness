#!/bin/bash
#Written by Makarand Joshi on 11/16/2017
#Script to scrape brand information from www.franchisebusiness.com.au
#
#echo "Filename with listing of brand URLs?"
#read filename

for i in `cat urls.txt`
  do
  	curl -v -s http://www.franchisebusiness.com.au/brands/$i#taball > $i.html
  	grep "<dd>" -A 3 $i.html | grep -v "<dd>" | grep -v "</dd>" | sed -e 's/^[ \t]*//' | sed 's/<br\/>//g' | grep -v "\--" | sed '/^\s*$/d' > $i.txt
    tr -d $'\r' < $i.txt > $i.out
  done


#for url in `cat bricks-4-kidz.html`
#	do
#		sitename=`echo $url | cut -f1 -d"#" | cut -f5 -d"/"`
#		curl $url > $sitename.html
#		grep "<dd>" -A 3 $sitename.html | grep -v "<dd>" | grep -v "</dd>" | sed -e 's/^[ \t]*//' | sed 's/<br\/>//g'
#		cat $sitename.html | grep "<h4>" | head -n -3 | cut -f2 -d">" | cut -f1 -d"<"
#done

#grep "<dd>" -A 3 bricks-4-kidz.html | grep -v "<dd>" | grep -v "</dd>" | sed -e 's/^[ \t]*//' | sed 's/<br\/>//g' | grep -v "\--" | sed '/^\s*$/d' > abc


#From Notes
#grep "<dd>" -A 3 HTML | grep -v "<dd>" | grep -v "</dd>" | grep . | grep -v "\--" | sed -e 's/^[ \t]*//' | sed 's/<br\/>//g'

#grep "<p>" HTML | grep -i Investment| sed -n -e 's/^.*strong//p'| cut -f1 -d"<"

#grep -A 1 company-description-summary HTML | grep -v company-description-summary | grep -v "\--" 
