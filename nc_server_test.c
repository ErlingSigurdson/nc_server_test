#include <stdio.h>

int main()
{
    char input[1000] = {};
    //scanf("%s", input);
    fgets(input, sizeof(input)-1, stdin);

    static char doc1[1000] = "HTTP/1.1 200 OK"
           "\r\n"
           "Content-Type: text/html; charset=utf-8"
           //"\r\n"
           //"Content-Length: 230"
           "\r\n"
           "\r\n"
           "<!DOCTYPE html>"
           "<html>"
               "<head>"
                   "<meta content=\"text/html; charset=utf-8\">"
                   "<title>nc_server_test_with_http_and_html</title>"
               "</head>"
               "<body>"
                   "<p style=\"color:blue;text-align:center\">Hello there!"
    ;

    static char doc2[1000] = "HTML has been served.</p>"
                   "</body>"
                "</html>"
    ;

    printf("%s%s%s%s%s", doc1, " ", input, " ", doc2);

    /*
	printf("HTTP/1.1 200 OK"
	       "\r\n"
	       "Content-Type: text/html; charset=utf-8"
	       //"\r\n"
	       //"Content-Length: 230" 
	       "\r\n"
	       "\r\n" 
	       "<!DOCTYPE html>"
	       "<html>"
	           "<head>"
	               "<meta content=\"text/html; charset=utf-8\">"
	               "<title>nc_server_test_with_http_and_html</title>"
	           "</head>"
	           "<body>"
	               "<p style=\"color:blue;text-align:center\">Hello there! HTML has been served.</p>"
	           "</body>"
	        "</html>"
    );
    */

    return 0;
}
