namespace MedicalApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EstatusIncidente")]
    public partial class EstatusIncidente
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EstatusIncidente()
        {
            incidente = new HashSet<Incidente>();
        }

        [Key]
        public int idEstatusIncidente { get; set; }

        [Required]
        [StringLength(20)]
        public string estatus { get; set; }

        [Required]
        [StringLength(100)]
        public string descripcion { get; set; }

        public int idCliente { get; set; }

        public virtual Cliente Cliente { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Incidente> incidente { get; set; }
    }
}
