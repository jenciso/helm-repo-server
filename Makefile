prepare:
	mkdir -p html/{charts,sources}
	helm create html/sources/app1
	helm package -d html/charts/ html/sources/app1 
	helm repo index html/charts/ --url http://localhost:8088/charts/

start:
	docker run -it -p 8088:80 --name helm-repo-server --rm -d \
	  -v $$PWD/mime.types:/etc/nginx/mime.types \
  	  -v $$PWD/html:/usr/share/nginx/html \
  	  -v $$PWD/default.conf:/etc/nginx/conf.d/default.conf \
  	  nginx

clean:
	docker rm -f helm-repo-server

