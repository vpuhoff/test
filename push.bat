echo 'test'>>test.txt
git add test.txt
git commit -m 'test'
git push
git gc
curl -X POST http://localhost:8000/api/syncapi?mode=sync -d @apireq.json --header "Content-Type: application/json"
pause