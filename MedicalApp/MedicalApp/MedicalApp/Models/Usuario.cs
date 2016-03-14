namespace MedicalApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    [Table("Usuario")]
    public partial class Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuario()
        {
            Asignacion = new HashSet<Asignacion>();
        }

        [Key]
        public int idUsuario { get; set; }

        [Column("usuario")]
        [Required]
        [StringLength(50)]
        public string usuario1 { get; set; }

        [Required]
        [StringLength(50)]
        public string contrasena { get; set; }

        public int tipoUsuario { get; set; }

        [Required]
        [StringLength(100)]
        public string latitud { get; set; }

        [Required]
        [StringLength(100)]
        public string longitud { get; set; }

        [Column(TypeName = "date")]
        public DateTime fechaActualizacion { get; set; }

        public int estatus { get; set; }

        public int idEmpleado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Asignacion> Asignacion { get; set; }

        public virtual Empleado Empleado { get; set; }

        public static string GetUsuariosMap()
        {
            using (MedicalAppDBContext db = new MedicalAppDBContext())
            {
                List<Usuario> lstUsuario = db.Usuario.ToList();
                Markup[] markups = new Markup[lstUsuario.Count];
                int x = 0;
                foreach (Usuario usuario in lstUsuario)
                {
                    Markup markup = new Markup();
                    markup.Title = usuario.Empleado.nombre + " " + usuario.Empleado.paterno;
                    markup.Latitud = usuario.latitud;
                    markup.Longitud = usuario.longitud;
                    markup.Id = usuario.idUsuario;

                    markups[x] = markup;
                    x++;
                }
                var javaScriptSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
                return javaScriptSerializer.Serialize(markups);
            }
        }

        public static Usuario GetUsuarioById(int idUsuario)
        {
            using (MedicalAppDBContext db = new MedicalAppDBContext())
            {
                List<Usuario> lstUsuario = db.Usuario.Where(x => x.idUsuario == idUsuario).ToList();
                if (lstUsuario.Count > 0)
                    return lstUsuario.First();
                return null;
            }
        }
    }

    class Markup
    {
        public string Title { get; set; }
        public string Latitud { get; set; }
        public string Longitud { get; set; }
        public int Id { get; set; }
    }
}
