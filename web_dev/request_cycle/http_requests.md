# Common HTTP Status Codes

### 200
- represents a successful response

### 404
- most common error code
- the requested resource is no longer available/ not found

### 403
- access to the resource is forbidden

### 500
- server-side error code
- catchall for an error when none of the other codes make sense

### 503
- web server isn't available.

### 504
- this indicates a gateway timeout.
- could be a DNS issue
- access to a server from a proxy server has timed out


## GET and POST requests

### GET
- requests data froma a specified resource

### POST
- Submits data to be processed to a specified resource

### SOME DIFFERENCES
- there are a lot of differences between the two.
- GET methods can be cached while POST's cannot.
- They have different data types. GET: only ASCII chars, POST: no restrictions
- GET: data visible to everyone in the URL, POST: data not displayed in url.


## COOKIES
- these are small pieces of data that are sent from a webiste and stored in a user's webbrowser. Cookies can keep track of stateful information. For ex: shopping cart items, browsing activity, login info, previously entered data into form fields.
* Authentication cookies: used by web servers to know whether the user is logged in or not, and which account they are logged in with.