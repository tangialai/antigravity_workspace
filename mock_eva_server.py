from http.server import HTTPServer, BaseHTTPRequestHandler
import sys


class MockHandler(BaseHTTPRequestHandler):
    def do_POST(self):
        content_length = int(self.headers['Content-Length'])
        post_data = self.rfile.read(content_length)
        print("\n" + "=" * 50)
        print("  --- RECEIVED XML FROM ODOO ---")
        print("=" * 50)
        # Decode using ISO-8859-1 as specified in eVA XML
        print(post_data.decode('iso-8859-1'))
        print("=" * 50 + "\n")

        # Respond back to Odoo
        self.send_response(200)
        self.send_header('Content-type', 'application/xml')
        self.end_headers()
        self.wfile.write(b"<?xml version='1.0' encoding='UTF-8'?><Response>ACK</Response>")


def run_server():
    server_address = ('localhost', 8099)
    httpd = HTTPServer(server_address, MockHandler)
    print("Mock eVA Server listening on http://localhost:8099...")
    print("Press Ctrl+C to stop.\n")
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nStopping Mock Server...")
        httpd.server_close()


if __name__ == "__main__":
    run_server()
