#To deploy and what not

INDEX = index.html
FILES = 404.html humans.txt robots.txt favicon.ico 
DIRS = css blog img

upload-index:
	s3cmd put $(INDEX) s3://christian.delahousse.ca/;\


all: upload-dirs upload-pages upload-index


upload-dirs:
	s3cmd put --recursive $(DIRS) s3://christian.delahousse.ca/;\


upload-pages:
	s3cmd put $(FILES) s3://christian.delahousse.ca/


.PHONY: all upload-pages upload-dirs upload-index
