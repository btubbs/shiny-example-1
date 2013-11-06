APPNAME = shiny-example-1

create:
  heroku apps:create 
  heroku config:set BUILDPACK_URL=https://github.com/btubbs/heroku-buildpack-shiny.git
  heroku labs:enable websockets -a $(APPNAME)

deploy:
  git push heroku
