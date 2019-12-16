heroku container:login
heroku apps:create
heroku stack:set container
cat Web/Dockerfile
cat heroku.yml
git push heroku master
docker pull registry.heroku.com/"$(heroku apps:info --json | jq -r .app.name)"/web
