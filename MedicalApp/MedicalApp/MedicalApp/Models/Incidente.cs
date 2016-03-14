namespace MedicalApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    [Table("incidente")]
    public partial class Incidente
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Incidente()
        {
            Asignacion = new HashSet<Asignacion>();
        }

        [Key]
        public int idIncidente { get; set; }

        [Required]
        [StringLength(100)]
        public string longitud { get; set; }

        [Required]
        [StringLength(100)]
        public string latitud { get; set; }

        [Column(TypeName = "date")]
        public DateTime fechaActualizacion { get; set; }

        [Required]
        [StringLength(100)]
        public string titulo { get; set; }

        [Required]
        [StringLength(200)]
        public string descripcion { get; set; }

        public int idEstatusIncidente { get; set; }

        public int idTipoIncidente { get; set; }

        public int idNotificacion { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Asignacion> Asignacion { get; set; }

        public virtual EstatusIncidente EstatusIncidente { get; set; }

        public virtual Notificacion Notificacion { get; set; }

        public virtual TipoIncidente TipoIncidente { get; set; }

        public static string GetIncidenesMap()
        {
            using (MedicalAppDBContext db = new MedicalAppDBContext())
            {
                List<Incidente> lstIncidentes = db.incidente.ToList();
                Markup[] markups = new Markup[lstIncidentes.Count];
                int x = 0;
                foreach (Incidente incidente in lstIncidentes)
                {
                    Markup markup = new Markup();
                    markup.Title = incidente.titulo;
                    markup.Latitud = incidente.latitud;
                    markup.Longitud = incidente.longitud;
                    markup.Id = incidente.idIncidente;

                    markups[x] = markup;
                    x++;
                }
                var javaScriptSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                return javaScriptSerializer.Serialize(markups);
            }
        }
    }


}
