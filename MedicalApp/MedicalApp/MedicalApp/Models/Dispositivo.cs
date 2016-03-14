namespace MedicalApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Dispositivo")]
    public partial class Dispositivo
    {
        [Key]
        public int idDispositivo { get; set; }

        [Required]
        [StringLength(50)]
        public string marca { get; set; }

        [Required]
        [StringLength(50)]
        public string modelo { get; set; }

        [StringLength(150)]
        public string descripcion { get; set; }

        public int estatus { get; set; }

        public int cliente { get; set; }

        public virtual Cliente Cliente1 { get; set; }
    }
}
