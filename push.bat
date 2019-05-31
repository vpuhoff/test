echo 'test'>>test.txt
git add test.txt
git commit -m 'test'
git push
git gc
curl -vX POST http://localhost:8000/api/backup/ -d @apireq.json --header "Content-Type: application/json"
pause