#!/bin/sh

value () {
          echo -e "Enter the domain, & hit Enter\n"
          while read dom; do
              echo -e "The value of ${dom} is USD $(curl -s "https://api.godaddy.com/v1/appraisal/${dom}" | jq '.govalue') \n Please proceed with the next\n\n"              
          done </dev/tty
}

# Find value of individual domains with value ()

bulk_value () {
              while read dom; do
                echo -e "The value of ${dom} is USD $(curl -s "https://api.godaddy.com/v1/appraisal/${dom}" | jq '.govalue') \n"
                sleep $2
              done < $1
}

# Find value from a list of domains (.txt) file, pasted one after the other line by line (delimited by newline)
