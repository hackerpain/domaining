bulk_logo () {
     # Optional - gd_domains $1
     while read dom; do
        name=$(echo $dom | cut -d '.' -f 1)
        curl -s "https://api-cdn.logolava.com/v1/?margin=.15&w=600&h=300&&randicon=0.80&style=fancy&api_key=$LLkey&txt=$name" > $name.png # without API key workaround: https://api-cdn.logolava.com/v1/?homepage=1&txt=$name
        sleep $2
     done < $1
}

# Usage - bulk_logo domains.txt 0.5
#         bulk_logo input_domains.txt time_interval
