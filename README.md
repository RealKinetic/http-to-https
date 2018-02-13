HTTP to HTTPS
=============

The web is moving to TLS. This is a Docker container that forces browser
redirection from HTTP to HTTPS for all hosts that hit it.

HTTP code 307 is used to redirect browsers so that the HTTP method does not
change (which would happen with old clients using 301/302).

Running:
--------

``docker run --rm -p80:80 -d realkinetic/http-to-https:latest``.

Building
--------

``make build``
