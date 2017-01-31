# movie_web_service
install docker

build your image
`docker build -t rails .`

run your instance
`docker run -it --rm -v /Users/bmo/Desktop/rest_api/:/usr/src/app -p 3000:3000 rails bash`

run your rails env
`cd webapp` then `rails s`
