DEST=epfl-suri-root:/var/www/html/
SRC=public/

server:
	hugo server --buildDrafts --forceSyncStatic --verbose

build:
	hugo

deploy:
	rsync -Paivz --delete $(SRC) $(DEST)

archive:
	./archive.sh
