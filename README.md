# Sources of EPFL's Summer Research Institute Website
See [https://suri.epfl.ch](https://suri.epfl.ch).

## Requirements

- [golang](https://golang.org/)
- [hugo](https://gohugo.io/)
- [make](https://www.gnu.org/software/make/)
- [rsync](https://rsync.samba.org/)

## Getting Started

You need to do something along the following lines:

1) Create a new config file in: https://github.com/dedis/suri.epfl.ch/tree/master/data

2) Create a new content folder in: https://github.com/dedis/suri.epfl.ch/tree/master/content

3) Create a new `past2019.html` file in:
https://github.com/dedis/suri.epfl.ch/tree/master/layouts/partials

4) Update `past.html` to the 2020 version:
https://github.com/dedis/suri.epfl.ch/blob/master/layouts/partials/past.html

5) Activate the new config file from step 1 by changing the following line to `{{ $config := $.Site.Data.suri2020 }}`
https://github.com/dedis/suri.epfl.ch/blob/master/layouts/index.html#L4

To make the website available online, you can use `make build && make deploy` after you've uploaded your ssh public key to dedis.ch and added the following entry to your .ssh/config file:

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
