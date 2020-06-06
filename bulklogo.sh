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
#
# ------------Another quick hack, if you don't have an API key-----------------
#
# 2nd workaround without API key - (working as of now)
# curl -X "referer: https://www.logolava.com/"  "https://api.logolava.com/v1/?api_key=31337&h=200&w=540&margin=0.07&randicon=0.80&style=fancy&text=ALLtheoptins"

