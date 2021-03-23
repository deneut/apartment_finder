 curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'https://gc-apartment-finder.azurewebsites.net/api/search' \
  -H 'authority: gc-apartment-finder.azurewebsites.net' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36' \
  -H 'dnt: 1' \
  -H 'content-type: application/json' \
  -H 'accept: */*' \
  -H 'origin: https://gc-apartment-finder.azurewebsites.net' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://gc-apartment-finder.azurewebsites.net/editor' \
  -H 'accept-language: en,cs;q=0.9,de-DE;q=0.8,de;q=0.7,en-US;q=0.6,fr;q=0.5,en-GB;q=0.4,es;q=0.3,it;q=0.2,nl;q=0.1' \
  --data-raw '{"address_components":[{"long_name":"2450","short_name":"2450","types":["street_number"]},{"long_name":"West Pecos Road","short_name":"W Pecos Rd","types":["route"]},{"long_name":"Phoenix","short_name":"Phoenix","types":["locality","political"]},{"long_name":"Maricopa County","short_name":"Maricopa County","types":["administrative_area_level_2","political"]},{"long_name":"Arizona","short_name":"AZ","types":["administrative_area_level_1","political"]},{"long_name":"United States","short_name":"US","types":["country","political"]},{"long_name":"85045","short_name":"85045","types":["postal_code"]}],"adr_address":"<span class=\"street-address\">2450 W Pecos Rd</span>, <span class=\"locality\">Phoenix</span>, <span class=\"region\">AZ</span> <span class=\"postal-code\">85045</span>, <span class=\"country-name\">USA</span>","formatted_address":"2450 W Pecos Rd, Phoenix, AZ 85045, USA","geometry":{"location":{"lat":33.29353759999999,"lng":-111.8831456},"viewport":{"south":33.2920453697085,"west":-111.8844248802915,"north":33.2947433302915,"east":-111.8817269197085}},"icon":"https://maps.gstatic.com/mapfiles/place_api/icons/v1/png_71/geocode-71.png","name":"2450 W Pecos Rd","place_id":"ChIJpfMdCBMBK4cRK08-YMVCd18","plus_code":{"compound_code":"74V8+CP Phoenix, AZ, USA","global_code":"855C74V8+CP"},"reference":"ChIJpfMdCBMBK4cRK08-YMVCd18","types":["street_address"],"url":"https://maps.google.com/?q=2450+W+Pecos+Rd,+Phoenix,+AZ+85045,+USA&ftid=0x872b0113081df3a5:0x5f7742c5603e4f2b","utc_offset":-420,"vicinity":"Phoenix","html_attributions":[],"utc_offset_minutes":-420}' \
  --compressed

curl -Lo /dev/null -skw "\ntime_connect: %{time_connect}s\ntime_namelookup: %{time_namelookup}s\ntime_starttransfer: %{time_starttransfer}s\ntime_total: %{time_total}s\nDownload size: %{size_download}\n\n" \
'https://gc-apartment-finder.azurewebsites.net/api/map-features' \
  -H 'authority: gc-apartment-finder.azurewebsites.net' \
  -H 'pragma: no-cache' \
  -H 'cache-control: no-cache' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36' \
  -H 'dnt: 1' \
  -H 'content-type: application/json' \
  -H 'accept: */*' \
  -H 'origin: https://gc-apartment-finder.azurewebsites.net' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://gc-apartment-finder.azurewebsites.net/editor' \
  -H 'accept-language: en,cs;q=0.9,de-DE;q=0.8,de;q=0.7,en-US;q=0.6,fr;q=0.5,en-GB;q=0.4,es;q=0.3,it;q=0.2,nl;q=0.1' \
  --data-raw '{"type":"Feature","geometry":{"type":"Polygon","coordinates":[[[-93.45175747350844,45.10683718073714],[-93.45131247350844,45.107554182757156],[-93.45089047350845,45.107671183086794],[-93.45047847350845,45.10762118294594],[-93.45008247350844,45.10775118331217],[-93.44998647350843,45.10754118272056],[-93.4493777188774,45.10761377044781],[-93.44908547350845,45.10728418199652],[-93.44852747350843,45.10704918133439],[-93.44772847350843,45.10675818051454],[-93.44751947350845,45.106254179094655],[-93.44717647350845,45.1055871772155],[-93.44714947350843,45.10522217618724],[-93.44738047350843,45.104808175020885],[-93.44856012628708,45.10501222123729],[-93.44917447350844,45.10466017460395],[-93.44960047350844,45.10476617490255],[-93.44996247350844,45.10483817510537],[-93.45006747350844,45.10497417548852],[-93.45055547350843,45.105065175744905],[-93.45078147350844,45.10516317602101],[-93.45105947350844,45.10522417619285],[-93.45148947350843,45.10544717682111],[-93.45168247350846,45.10568917750286],[-93.45183747350845,45.10605617853682],[-93.45194747350843,45.106437179610175],[-93.45175747350844,45.10683718073714]]]},"properties":{"id":"baa5a33b-c5a7-4e06-a4e1-31a53779ffa2","label":null,"type":"building","highlight":null},"id":"baa5a33b-c5a7-4e06-a4e1-31a53779ffa2"}' \
  --compressed


  curl 'https://gc-apartment-finder.azurewebsites.net/api/search?x_min=-95.438919&y_min=43.775556&x_max=-90.885086&y_max=46.309469&page_size=11000&page=1' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  > /dev/null

curl 'https://gc-apartment-finder.azurewebsites.net/api/search?x_min=-95.438919&y_min=43.775556&x_max=-90.885086&y_max=46.309469&page_size=11000&page=1' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  > /dev/null


curl 'http://gc-apartment-finder.azurewebsites.net/api/search?x_min=-95.43891913281252&y_min=43.77555603670788&x_max=-90.88508612500002&y_max=46.30946989768324&page_size=10&page=1' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  -H 'DNT: 1' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Accept-Language: en,cs;q=0.9,de-DE;q=0.8,de;q=0.7,en-US;q=0.6,fr;q=0.5,en-GB;q=0.4,es;q=0.3,it;q=0.2,nl;q=0.1' \
  --compressed \
  --insecure > /dev/null


curl 'http://gc-apartment-finder.azurewebsites.net/api/search?x_min=-95.43891913281252&y_min=43.77555603670788&x_max=-90.88508612500002&y_max=46.30946989768324&page_size=5000&page=1' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  -H 'DNT: 1' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Accept-Language: en,cs;q=0.9,de-DE;q=0.8,de;q=0.7,en-US;q=0.6,fr;q=0.5,en-GB;q=0.4,es;q=0.3,it;q=0.2,nl;q=0.1' \
  --compressed \
  --insecure > /dev/null


  curl 'http://localhost/api/search?x_min=-95.43&y_min=43.77555603670788&x_max=-90.88508612500002&y_max=46.30946989768324&page_size=10000&page=1' \
  -H 'Connection: keep-alive' \
  -H 'Pragma: no-cache' \
  -H 'Cache-Control: no-cache' \
  -H 'DNT: 1' \
  -H 'Upgrade-Insecure-Requests: 1' \
  --compressed \
  --insecure > /dev/null


  curl 'https://groundcloud.io/api/routes/?zones_wkt=true&id_not=4484&customer=223&page_size=10' \
-X 'GET' \
-H 'Accept: application/json, text/plain, */*' \
-H 'Pragma: no-cache' \
-H 'Cookie: csrftoken=8ocor7B7KXtpfpU9Z5Tr8ZsNsmSH1VqADmWfkID5YDck3mV4Tpo40HYfHHpC7IHh; sessionid=kfuejyq750velytkvmixntg9kos6tlsa; _ga=GA1.2.1426408116.1584473351' \
-H 'Referer: https://groundcloud.io/dashboard/routes/4484/zones' \
-H 'Cache-Control: no-cache' \
-H 'Host: groundcloud.io' \
-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Safari/605.1.15' \
-H 'Accept-Language: en-us' \
-H 'Accept-Encoding: gzip, deflate, br' \
-H 'Connection: keep-alive' > /dev/null
