DEST=epfl-suri:/var/www/html/
DRAFT=epfl-dedis:~/www/
SRC=public/

server:
	hugo server --buildDrafts --forceSyncStatic --disableFastRender --verbose

build:
	hugo

deploy:
	rsync -Paivz --delete $(SRC) $(DEST)

draft:
	rsync -Paivz --delete $(SRC) $(DRAFT)

archive:
	./archive.sh
