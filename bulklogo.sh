bulk_logo () {
     # Optional - gd_domains $1
     while read dom; do
        name=$(echo $dom | cut -d '.' -f 1)
        curl "https://api-cdn.logolava.com/v1/?margin=.15&w=600&h=300&api_key=$LLkey&txt=$name" > $name.png
        sleep $2
     done < $1
}

# Usage - bulk_logo domains.txt 0.5
#         bulk_logo input_domains.txt time_interval
