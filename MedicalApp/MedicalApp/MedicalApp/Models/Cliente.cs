namespace MedicalApp.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Linq;
    [Table("Cliente")]
    public partial class Cliente
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Cliente()
        {
            Dispositivo = new HashSet<Dispositivo>();
            Empleado = new HashSet<Empleado>();
            EstatusIncidente = new HashSet<EstatusIncidente>();
            Reporte = new HashSet<Reporte>();
            TipoIncidente = new HashSet<TipoIncidente>();
        }

        [Key]
        public int idCliente { get; set; }

        [Required]
        [StringLength(50)]
        public string nombre { get; set; }

        [Required]
        [StringLength(50)]
        public string correo { get; set; }

        [Required]
        [StringLength(50)]
        public string usuario { get; set; }

        [Required]
        [StringLength(150)]
        public string contrasena { get; set; }

        public int estatus { get; set; }

        public bool esLimitado { get; set; }

        public int? numeroLicencias { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Dispositivo> Dispositivo { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Empleado> Empleado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<EstatusIncidente> EstatusIncidente { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Reporte> Reporte { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TipoIncidente> TipoIncidente { get; set; }


        public static Cliente SignIn(LoginViewModel model)
        {
            using (MedicalAppDBContext db = new MedicalAppDBContext())
            {
                Cliente cliente = new Cliente();
                cliente.nombre = "Master";
                cliente.estatus = 1;
                cliente.nombre = "Master";
                cliente.usuario = "Master";
                cliente.contrasena = Cliente.HashPassword("Master");
                cliente.esLimitado = false;
                db.Cliente.Add(cliente); ;
                db.SaveChanges();

                //model.Password = HashPassword(model.Password);
                //List<Cliente> lstClientes = db.Cliente.Where(m => m.usuario == model.Usuario && m.contrasena == model.Password).ToList();
                //if (lstClientes.Count > 0)
                    //return lstClientes.First();
                //else
                    return null;
            }
        }

        public static String HashPassword(String pass)
        {
            byte[] data = System.Text.Encoding.ASCII.GetBytes(pass);
            data = new System.Security.Cryptography.SHA256Managed().ComputeHash(data);
            return System.Text.Encoding.ASCII.GetString(data);

        }
    }
}
