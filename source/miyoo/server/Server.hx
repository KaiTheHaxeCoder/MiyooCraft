package miyoo.server;

import sys.net.Host;
import sys.net.Socket;

class Server
{
    public var server:Socket;

    public function new()
    {
        server = new Socket();
        server.bind(new Host("0.0.0.0"), 25565);
        server.listen(10);
    }
}