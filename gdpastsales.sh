#!/bin/sh

# This script makes it convenient to find past sales of a domain or, of similar domains, data is fetched from GoDaddy API

pastsales () {
              echo -e "\nDomain\tPrice\tSale Year\n\n Enter the domain and hit enter\n\n"
             
              while read dom; do
                    data=$(curl -s "https://api.godaddy.com/v1/appraisal/${dom}")
                    echo $data | jq -r '.comparable_sales[] | "\n\(.domain) sold for USD \(.price) in \(.year)"'
                    echo -e "\nPlease enter the next domain & hit enter\n"
              done </dev/tty
}

# Usage - add this to ~/.bashrc, then use command pastsales, then enter the domain you would like to find value for

