function pushBtn( number ) {

    if( number ==  1 ){
        if( btn1state == 'on' )
            btn1state = 'off';
        else
            btn1state = 'on';

        socket.emit('push-btn', 'btn1' ,  btn1state );
    }

    if( number ==  2 ){
        if( btn2state == 'on' )
            btn2state = 'off';
        else
            btn2state = 'on';
        socket.emit('push-btn', 'btn2' ,  btn2state );
    }

}


function chglevel1( level ){ //cambia la humedad
    document.getElementById("temp").innerHTML = level;
}
function chglevel2( level ){ // cambia el valor de la luz
    document.getElementById("light").innerHTML = level;
}
function chglevel3( level ){// cambia la humedad
    document.getElementById("humedad").innerHTML = level;
}
function chglevel4( level ){
    document.getElementById("aire").innerHTML = level;
}
