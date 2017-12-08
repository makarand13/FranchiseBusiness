#!/bin/bash

#Cleanup business names and get context roots

#sed 's/&#39;/-/g' busnames.out | sed 's/&amp;/-/g' | sed 's/(/-/g' | sed 's/)/-/g' | sed 's/ /-/g' | sed 's/--*/-/g' | sed 's/&quot;//g' | sed 's/&#233;//g' | sed 's/&#241;//g' | sed 's/&#174;//g' | sed 's/&#246;//g' | sed 's/&#237;/i/g' | sed 's/&#225;/a/g' | sed -E 's/(-)+$//' > url-context.out

cat business.out | sed 's/&#39;/-/g; s/&amp;/-/g; s/(/-/g; s/)/-/g; s/]//g; s/]//g; s/ /-/g; s/--*/-/g; s/&quot;//g; s/&#233;/e/g; s/&#241;//g; s/&#174;//g; s/&#246;//g; s/&#237;/i/g; s/&#225;/a/g' > context.out

cat context.out | sed 's/\./-/g; s/?//g; s/!//g; s/\//-/g; s/#//g; s/,//g; s/^-//g; s/+/-/g; s/’/-/g; s/:/-/g; s/--*/-/g; s/-–-/-/g' | sed -E 's/(-)+$//' | cut -c -46 > business-urls.out


# s/[//g; 
#233 - e with accent - remove
#241 - n with accent - remove
#174 - Registered symbol - remove
#246 - o with accent - remove
#237 - i with accent - replace with i
#225 - a with accent - replace with a
#178 - e to the power 2 - as is
# ! , # . / ?