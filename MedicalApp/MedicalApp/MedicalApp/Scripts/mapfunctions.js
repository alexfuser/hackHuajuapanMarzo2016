
function mostrarUsuarios() {
    $.ajax({
        url: "/Incidentes/GetUsuarios",
    })
 .done(function (data, textStatus, jqXHR) {
     var markups = JSON.parse(data);

     var pinColor = "00686B";
     var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
         new google.maps.Size(21, 34),
         new google.maps.Point(0, 0),
         new google.maps.Point(10, 34));
     var pinShadow = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_shadow",
         new google.maps.Size(40, 37),
         new google.maps.Point(0, 0),
         new google.maps.Point(12, 35));    

     $.each(markups, function (index, markup) {

         var miLatLng = { lat: parseFloat(markup.Latitud), lng: parseFloat(markup.Longitud) };

         var contentString =
          '<div id="content">' +
            '<p id="firstHeading" class="firstHeading"  style="color:black;">' + markup.Title + '</p>' +
          '</div>';

        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });

        var marker = new google.maps.Marker({
            position: miLatLng,
            title: markup.Title,
            icon: pinImage,
            shadow: pinShadow,
            id: markup.Id,
         });


         google.maps.event.addListener(marker, 'click', function (event) {
             infowindow.open(map, marker);
             userSelected = marker;
             if (objective) {
                 calculateAndDisplayRoute();
             }  
             $("#txtUsuario").val(marker.title.replace(/\s\s+/g, ' '));
             $("#idUsuario").val(marker.id);
         });
         /*
         marker.addListener('click', function (event, ob) {
             
         });
         */
         marker.setMap(map);

     });
     

 })
}


function mostrarIncidentes() {
    $.ajax({
        url: "/Incidentes/GetIncidentes",
    })
 .done(function (data, textStatus, jqXHR) {
     var markups = JSON.parse(data);

     var pinColor = "D64747";
     var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
         new google.maps.Size(21, 34),
         new google.maps.Point(0, 0),
         new google.maps.Point(10, 34));
     var pinShadow = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_shadow",
         new google.maps.Size(40, 37),
         new google.maps.Point(0, 0),
         new google.maps.Point(12, 35));

     $.each(markups, function (index, markup) {

         var miLatLng = { lat: parseFloat(markup.Latitud), lng: parseFloat(markup.Longitud) };

         var contentString =
          '<div id="content">' +
            '<p id="firstHeading" class="firstHeading" style="color:black;">' + markup.Title + '</p>' +
          '</div>';

         var infowindow = new google.maps.InfoWindow({
             content: contentString
         });

         var marker = new google.maps.Marker({
             position: miLatLng,
             title: markup.Title,
             icon: pinImage,
             shadow: pinShadow,
             id: markup.Id,
         });


         google.maps.event.addListener(marker, 'click', function (event) {
             infowindow.open(map, marker);
         });
         marker.setMap(map);

     });


 })
}





function calculateAndDisplayRoute() {
    var directionsService = new google.maps.DirectionsService;
    if (!direction)
        direction = new google.maps.DirectionsRenderer;
    direction.setMap(null);
    direction.setMap(map);

    var origen = { lat: userSelected.position.lat(), lng: userSelected.position.lng() };
    var destino = { lat: objective.position.lat(), lng: objective.position.lng() };

    directionsService.route({
        origin: origen,
        destination: destino,
        travelMode: google.maps.TravelMode.DRIVING
    }, function (response, status) {
        if (status === google.maps.DirectionsStatus.OK) {
            direction.setDirections(response);
        } else {
            window.alert('Directions request failed due to ' + status);
        }
    });
}