api="https://tgstat.ru"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"
function citation_index() {
		curl --request GET \
		--url "$api/channel/$1/stat/citation-index-chart" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function related_channels() {
		curl --request GET \
		--url "$api/channel/$1/related-channels" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function history_channel() {
		curl --request GET \
		--url "$api/channel/$1/history" \
		--user-agent "$user_agent" \
		--header "accept: application/json"
}
function get_r_list() {
		curl --request POST \
		--url "$api/quotes/$1/r-list" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=&page=$2&offset=$3"
}
function get_channels() {
		curl --request POST \
		--url "$api/quotes/$1/channels" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=&page=$2&offset=$3"
}
function get_list() {
		curl --request POST \
		--url "$api/quotes/$1/list" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=&page=$2&offset=$3"
}
function r_channels_list() {
		curl --request POST \
		--url "$api/quotes/$1/r-channels-list" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=&page=$2&offset=$3"
}
function get_channels_list() {
		curl --request POST \
		--url "$api/quotes/$1/channels-list" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=&page=$2&offset=$3"
}
function list_all() {
		curl --request POST \
		--url "$api/quotes/$1/list-all/$2" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=&page=$3&offset=$4"
}
function ads_efficiency() {
		curl --request POST \
		--url "$api/channel/$1/stat/ads-efficiency/list" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=&page=$2&offset=$3"
}
function members_attraction_list() {
		curl --request POST \
		--url "$api/channel/$1/stat/members-attraction-list" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=&page=$2&offset=$3"
}
function add_channel() {
		curl --request POST \
		--url "$api/add/channel/" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "username=$1&country=ru&language=russian&category_id=$2"
}
function search_channel() {
		curl --request POST \
		--url "$api/api/channels/search" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "q=$1"
}
function posts_popular_table() {
		curl --request POST \
		--url "$api/channel/$1/stat/posts-popular-table" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "date=&view=columns&sort=views"
}
function posts_views_avg() {
		curl --request POST \
		--url "$api/channel/$1/stat/posts-views-avg-chart" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "interval=$2&group=$3day&startTs=$4&endTs=$5"
}
function engagements_chart() {
		curl --request POST \
		--url "$api/channel/$1/stat/engagements-chart" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "interval=$2&group=$3day&startTs=$4&endTs=$5"
}
function posts_list() {
		curl --request POST \
		--url "$api/charts/posts?channel_name=$1&lang=ru" \
		--user-agent "$user_agent" \
		--header "accept: application/json"\
		--data "interval=$2&group=$3day&startTs=$4&endTs=$5"
}