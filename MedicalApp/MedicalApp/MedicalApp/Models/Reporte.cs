namespace MedicalApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Reporte")]
    public partial class Reporte
    {
        [Key]
        public int idReporte { get; set; }

        public int tipoReporte { get; set; }

        [Column(TypeName = "date")]
        public DateTime fecha { get; set; }

        public int idCliente { get; set; }

        public int? idCamara { get; set; }

        public int? idPersona { get; set; }

        public virtual Camara Camara { get; set; }

        public virtual Cliente Cliente { get; set; }

        public virtual Persona Persona { get; set; }
    }
}
