namespace MedicalApp.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using System.Collections.Generic;
    public partial class MedicalAppDBContext : DbContext
    {
        public MedicalAppDBContext()
            : base("name=MedicalApp")
        {
        }

        public virtual DbSet<Asignacion> Asignacion { get; set; }
        public virtual DbSet<Camara> Camara { get; set; }
        public virtual DbSet<Cliente> Cliente { get; set; }
        public virtual DbSet<Dispositivo> Dispositivo { get; set; }
        public virtual DbSet<Empleado> Empleado { get; set; }
        public virtual DbSet<EstatusIncidente> EstatusIncidente { get; set; }
        public virtual DbSet<Incidente> incidente { get; set; }
        public virtual DbSet<Notificacion> Notificacion { get; set; }
        public virtual DbSet<Persona> Persona { get; set; }
        public virtual DbSet<Reporte> Reporte { get; set; }
        public virtual DbSet<TipoIncidente> TipoIncidente { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Camara>()
                .Property(e => e.nombre)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Camara>()
                .Property(e => e.direccion)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Camara>()
                .Property(e => e.latitud)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Camara>()
                .Property(e => e.longitud)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Camara>()
                .HasMany(e => e.Reporte)
                .WithRequired(e => e.Camara)
                .HasForeignKey(e => e.idCliente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Cliente>()
                .Property(e => e.nombre)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Cliente>()
                .Property(e => e.correo)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Cliente>()
                .Property(e => e.usuario)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Cliente>()
                .Property(e => e.contrasena)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Cliente>()
                .HasMany(e => e.Dispositivo)
                .WithRequired(e => e.Cliente1)
                .HasForeignKey(e => e.cliente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Cliente>()
                .HasMany(e => e.Empleado)
                .WithRequired(e => e.Cliente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Cliente>()
                .HasMany(e => e.EstatusIncidente)
                .WithRequired(e => e.Cliente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Cliente>()
                .HasMany(e => e.Reporte)
                .WithRequired(e => e.Cliente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Cliente>()
                .HasMany(e => e.TipoIncidente)
                .WithRequired(e => e.Cliente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Dispositivo>()
                .Property(e => e.marca)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Dispositivo>()
                .Property(e => e.modelo)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Dispositivo>()
                .Property(e => e.descripcion)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.nombre)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.paterno)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.materno)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.correo)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.telefono)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.codEmpleado)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.Asignacion)
                .WithRequired(e => e.Empleado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.Usuario)
                .WithRequired(e => e.Empleado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<EstatusIncidente>()
                .Property(e => e.estatus)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<EstatusIncidente>()
                .Property(e => e.descripcion)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<EstatusIncidente>()
                .HasMany(e => e.incidente)
                .WithRequired(e => e.EstatusIncidente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Incidente>()
                .Property(e => e.longitud)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Incidente>()
                .Property(e => e.latitud)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Incidente>()
                .Property(e => e.titulo)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Incidente>()
                .Property(e => e.descripcion)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Incidente>()
                .HasMany(e => e.Asignacion)
                .WithRequired(e => e.incidente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Notificacion>()
                .Property(e => e.mensaje)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Notificacion>()
                .HasMany(e => e.incidente)
                .WithRequired(e => e.Notificacion)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Persona>()
                .Property(e => e.nombre)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Persona>()
                .Property(e => e.paterno)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Persona>()
                .Property(e => e.materno)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Persona>()
                .Property(e => e.telefono)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<TipoIncidente>()
                .Property(e => e.tipo)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<TipoIncidente>()
                .Property(e => e.descripcion)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<TipoIncidente>()
                .HasMany(e => e.incidente)
                .WithRequired(e => e.TipoIncidente)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.usuario1)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.contrasena)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.latitud)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .Property(e => e.longitud)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.Asignacion)
                .WithRequired(e => e.Usuario)
                .WillCascadeOnDelete(false);
        }

        
    }
    
}
