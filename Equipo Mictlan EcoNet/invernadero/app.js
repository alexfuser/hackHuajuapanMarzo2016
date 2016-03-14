var express = require('express');
var http = require('http');

var app = express();
var server = http.createServer(app);
var io = require('socket.io').listen(server);

var serialport = require("serialport");
var SerialPort = serialport.SerialPort;

var sp = new SerialPort("/dev/cu.usbmodem1421", { baudrate: 9600, parser: serialport.parsers.readline("\n") });

app.use(express.static('public'));
app.use(express.static('files'));
app.use('/assets', express.static('public'));
app.set('views', __dirname + '/vista');
app.engine('html', require('ejs').renderFile);

server.listen(8080);
console.log('servidor levantado!');

app.get('/', function (req, res) {
  res.render('index1.html');
});




io.on('connection', function (socket) {

	var obj;

	sp.open( function (){
  		console.log("Puerto Serial  /dev/cu.usbmodem1421 abierto!");

  		socket.on('push-btn', function ( btn , state ) {
  			sp.write( btn + ' ' + state );
    	});

    	socket.on('levelled', function ( led , value ) {
  			console.log( led + "\n" + value);
  			sp.write( led + "\n" + value);
    	});

  		sp.on( "data" , function ( data ) {

  			obj = JSON.parse( data.toString() );

        socket.emit('chg-tmp',    obj.tmp   );
  			socket.emit('chg-light',  obj.light   );
  			socket.emit('chg-hum',    obj.hum   );
        socket.emit('chg-aire',   obj.aire   );

		});
  	});
});
