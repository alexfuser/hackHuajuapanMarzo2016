namespace MedicalApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Asignacion")]
    public partial class Asignacion
    {
        [Key]
        public int idAsignacion { get; set; }

        public int idIncidente { get; set; }

        public int idUsuario { get; set; }

        public int idEmpleado { get; set; }

        public virtual Empleado Empleado { get; set; }

        public virtual Incidente incidente { get; set; }

        public virtual Usuario Usuario { get; set; }
    }
}
