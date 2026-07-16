import miyoo.server.Server;

class MiyooCraft
{
    public static function main()
    {
        var server = new Server();

        while (true) {
            var client = server.server.accept();
            trace("Client connected!");
            var request = client.input.readLine();
            trace(request);

            var text =  "<h1>Hello from MiyooCraft!</h1>";

            client.output.writeString(
                "HTTP/1.1 200 OK\r\n" +
                "Content-Type: text/html; charset=UTF-8\r\n" +
                'Content-Length' + Std.string(text.length - 1) +'\r\n' +
                "Connection: close\r\n" +
                text + '\r\n'
            );

            client.output.flush();
            client.close();
        }
    }
}