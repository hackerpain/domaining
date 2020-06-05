#!/bin/sh

value () {
          echo -e "Enter the domain, & hit Enter\n"
          while read dom; do
              echo -e "The value of ${dom} is USD $(curl -s "https://api.godaddy.com/v1/appraisal/${dom}" | jq '.govalue') \n Please proceed with the next\n\n"              
          done </dev/tty
}

# Find value of individual domains with value ()

bulk_value () {
              declare -i wait=10
              declare -i ctr=1
              while read dom; do
                data=$(curl -s "https://api.godaddy.com/v1/appraisal/${dom}" -H "Authorization: sso-key $GDkey:$GDsecret")
                if [ "$(echo $data | jq '.message')" != "null" ]; then
                    echo -e "\nWe hit the rate limit, so slowing down for $(( wait*ctr ))s\n"; sleep $(( wait * ctr )); echo -e "\nStarting bulk search, if its still unreliable, end the process, wait for longer, then continue\n"; ((ctr++));
                else
                    echo -e "The value of ${dom} is USD $(echo $data | jq '.govalue') \n" > $(echo $1 | cut -d '.' -f 1)-value.txt; sleep $2;
                fi
                done < $1
}

# Find value from a list of domains (.txt) file, pasted one after the other line by line (delimited by newline)
