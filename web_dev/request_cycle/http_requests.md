## What are some common HTTP status codes?
* 1xx Informational. This class of status code indicates a provisional response, consisting only of the Status-Line and optional headers, and is terminated by an empty line. ...
* xx Success. ...
* 3xx Redirection. ...
* 4xx Client Error. ...
* 5xx Server Error.

## What is the difference between a GET request and a POST request? When might each be used?
* GET - Requests data from a specified resource
* POST - Submits data to be processed to a specified resource

* GET requests should be used only to retrieve data
* POST requests should be used only to send data

## What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

* The server sends the following in its response header to set a cookie field. If there is a cookie set, then the browser sends the following in its request header. ... Cookies are passed as HTTP headers, both in the request (client -> server), and in the response (server -> client)