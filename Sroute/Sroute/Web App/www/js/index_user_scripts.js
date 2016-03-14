(function()
{
 "use strict";
 /*
   hook up event handlers 
 */
 function register_event_handlers()
 {
    
        /* button  Iniciar Sesión */
    $(document).on("click", ".uib_w_20", function(evt)
    {
         activate_page("#login_page"); 
    });
    
        /* button  Registrar */
    $(document).on("click", ".uib_w_21", function(evt)
    {
         activate_page("#register_page"); 
    });
    
    
    
        /* button  Atras */
    
    
        /* button  Atras */
    $(document).on("click", ".uib_w_23", function(evt)
    {
         activate_page("#mainpage"); 
    });
    
        /* button  #menu */
    $(document).on("click", "#menu", function(evt)
    {
         /*global uib_sb */
         /* Other possible functions are: 
           uib_sb.open_sidebar($sb)
           uib_sb.close_sidebar($sb)
           uib_sb.toggle_sidebar($sb)
            uib_sb.close_all_sidebars()
          See js/sidebar.js for the full sidebar API */
        
         uib_sb.toggle_sidebar($(".uib_w_25"));  
    });
     
         $(document).on("click", "#menu_inicio", function(evt)
    {
      activate_page("#control");  
    });
     
              $(document).on("click", "#menu_rutas", function(evt)
    {
      activate_page("#maps");  
    });
    
        /* button  Atras */
    $(document).on("click", ".uib_w_22", function(evt)
    {
         /*global activate_page */
         activate_page("#mainpage"); 
    });
    
        /* button  #menu */
    $(document).on("click", "#menu", function(evt)
    {
         /*global uib_sb */
         /* Other possible functions are: 
           uib_sb.open_sidebar($sb)
           uib_sb.close_sidebar($sb)
           uib_sb.toggle_sidebar($sb)
            uib_sb.close_all_sidebars()
          See js/sidebar.js for the full sidebar API */
        
         uib_sb.toggle_sidebar($(".uib_w_25"));  
    });
    
    }
 document.addEventListener("app.Ready", register_event_handlers, false);
})();
