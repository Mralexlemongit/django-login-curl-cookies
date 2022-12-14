LOGIN_URL=http://127.0.0.1:8000/login
USERNAME='admin'
PASSWORD='admin'
COOKIES=cookies.txt
CURL_BIN="curl -s -c $COOKIES -b $COOKIES -e $LOGIN_URL"

echo "----> Hit index without token"
echo $($CURL_BIN -X POST http://127.0.0.1:8000)

$CURL_BIN $LOGIN_URL > /dev/null
DJANGO_TOKEN="csrfmiddlewaretoken=$(grep csrftoken $COOKIES | sed 's/^.*csrftoken\s*//')"

echo "----> Hit index before login"
echo $($CURL_BIN -d "$DJANGO_TOKEN" -X POST http://127.0.0.1:8000)

$CURL_BIN -d "$DJANGO_TOKEN&username=$USERNAME&password=$PASSWORD" -X POST $LOGIN_URL
DJANGO_TOKEN="csrfmiddlewaretoken=$(grep csrftoken $COOKIES | sed 's/^.*csrftoken\s*//')"

echo "----> Hit index with token"
echo $($CURL_BIN -d "$DJANGO_TOKEN" -X POST http://127.0.0.1:8000)

rm $COOKIES