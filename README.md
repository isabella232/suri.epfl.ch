# Sources of EPFL's Summer Research Institute Website
See [https://suri.epfl.ch](https://suri.epfl.ch).

## Requirements

- [golang](https://golang.org/)
- [hugo](https://gohugo.io/)
- [make](https://www.gnu.org/software/make/)
- [rsync](https://rsync.samba.org/)

## Getting Started

Before you create a new version of the website make sure to archive the current
one, if it has not been done already. You can use the `archive.sh` script for
that as follows:

```
./archive.sh <year>
```

This takes the current site and archives it under https://suri.epfl.ch/&lt;year&gt;.

## Development and Deployment

Run a local server at [http://127.0.0.1:1313](http://127.0.0.1:1313):

```
make server
```

Build the site:

```
make build
```

Deploy the site:

```
make deploy
```
