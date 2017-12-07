#!/bin/bash

for i in {1..175..1}
	do
	curl -v -s "http://www.franchisebusiness.com.au/brands/?sort=TitleSort&dir=asc&page="$i > page.html
	grep "alt=" page.html | grep -v "src" | grep -v "a href" | cut -f2 -d"=" | sed 's/^.\(.*\)..$/\1/' >> business.out
done
rm page.html