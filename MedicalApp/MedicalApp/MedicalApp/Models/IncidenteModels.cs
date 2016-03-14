using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MedicalApp.Models
{
    public class RegistroIncidente
    {
        [Required]
        [StringLength(100)]
        public string longitud { get; set; }

        [Required]
        [StringLength(100)]
        public string latitud { get; set; }

        [Required]
        [StringLength(100)]
        public string titulo { get; set; }

        [Required]
        [StringLength(200)]
        public string descripcion { get; set; }
        
        public int idTipoIncidente { get; set; }
        public virtual TipoIncidente TipoIncidente { get; set; }

        public int idUsuario { get; set; }
        public virtual Usuario Usuario { get; set; }
    }
}