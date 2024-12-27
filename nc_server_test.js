// Raw
//console.log("Hello there! Raw text has been served.");

// HTTP plain
/*
console.log(
    "HTTP/1.1 200 OK" +
    "\r\n" +
    "Content-Type: text/plain; charset=utf-8" +
	//"\r\n" +
	//"Content-Length: 40" + 
    "\r\n" +
    "\r\n" +
    "Hello there! Plain text has been served."
)
*/

// HTTP html
console.log(
    "HTTP/1.1 200 OK" +
    "\r\n" +
    "Content-Type: text/html; charset=utf-8" +
    //"\r\n" +
    //"Content-Length: 230" +
    "\r\n" +
    "\r\n" +
    "<!DOCTYPE html>" +
    "<html>" +
        "<head>" +
            "<meta content=\"text/html; charset=utf-8\">" +
            "<title>nc_server_test_with_http_and_html</title>" +
        "</head>" +
        "<body>" +
            "<p style=\"color:blue;text-align:center\">Hello there! HTML has been served.</p>" +
        "</body>" +
    "</html>"
)
