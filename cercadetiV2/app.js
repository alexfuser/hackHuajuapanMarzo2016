window.addEventListener("load", function() { 
});

      var map;
      var infoWindow;
      var service;
      var latitud;
      var longitud;
      var tipo;
//////////////////////////
    function busqueda(estado){
    
        if (!navigator.geolocation){
        alert('Geolocalización no soportada por tu navegador');
                                   };
    function obtainGeolocation(){
        window.navigator.geolocation.getCurrentPosition(localitation);
                                 };
    function localitation(geo){
        latitud= geo.coords.latitude;
        longitud=geo.coords.longitude;
          alert("Ya se ha cargado tu ubicación.") };
obtainGeolocation();

       
     if(estado=="escaner"){
          alert("Se realiza una busqueda general");
          $("#buscar").hide();
          $("#resultados").show();
                          }
      else{
          alert("Estado: " + estado);
          $("#buscar").hide();
          $("#resultados").show();
          }
          
  if(estado== "aburrido")
  {
    tipo="'movie_theater','amusement_park','clothing_store','park','shopping_mall'";
  }else
    {
      if(estado== "cansado")
      {
        tipo='lodging';
      }else
        {
          if(estado== "curioso")
          {
            tipo="'art_gallery','book_store','church','museum','school'";
          }else
            { 
              if(estado== "enojado")
              {
                tipo="'atm','gas_station','night_club','bar'";
              }else
                {
                  if(estado== "hambriento")
                  {
                    tipo="'cafe','food','restaurant'";
                  }else
                      {
                        if(estado== "enfermo")
                        {
                          tipo="'dentist','doctor','hospital','pharmacy','physiotherapist'";
                        }
                      }
                }
            }
        }
    }
      
localStorage.setItem("var",estado);
$('iframe').attr('src',$('iframe').attr('src'))
};




function cerrarRes(){
     $("#resultados").hide();  
     $("#buscar").show();
       
     };

       
   
       
       
       
       
       
       