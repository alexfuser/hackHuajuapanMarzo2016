using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MedicalApp.Models;

namespace MedicalApp.Controllers
{
    public class IncidentesController : Controller
    {
        private MedicalAppDBContext db = new MedicalAppDBContext();

        // GET: incidentes
        public ActionResult Index()
        {
            var incidente = db.incidente.Include(i => i.EstatusIncidente).Include(i => i.Notificacion).Include(i => i.TipoIncidente);
            return View(incidente.ToList());
        }

        // GET: incidentes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Incidente incidente = db.incidente.Find(id);
            if (incidente == null)
            {
                return HttpNotFound();
            }
            return View(incidente);
        }

        // GET: incidentes/Create
        public ActionResult Create()
        {
            ViewBag.UsuariosMarkups = Usuario.GetUsuariosMap(); 

            ViewBag.idEstatusIncidente = new SelectList(db.EstatusIncidente, "idEstatusIncidente", "estatus");
            ViewBag.idTipoIncidente = new SelectList(db.TipoIncidente, "idTipoIncidente", "tipo");
            //ViewBag.idNotificacion = new SelectList(db.Notificacion, "idNotificacion", "mensaje");

            return View();
        }
        

        public String GetUsuarios()
        {
            return Usuario.GetUsuariosMap();
        }

        public String GetIncidentes()
        {
            return Incidente.GetIncidenesMap();
        }

        // POST: incidentes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "longitud,latitud,idUsuario,titulo,descripcion,idTipoIncidente,idNotificacion")] RegistroIncidente registroIncidente)
        {
            if (ModelState.IsValid)
            {
                Notificacion notificacion = new Notificacion();
                notificacion.mensaje = registroIncidente.titulo + "\n" + registroIncidente.descripcion;
                notificacion.estatus = 1;
                notificacion = db.Notificacion.Add(notificacion);
                db.SaveChanges();

                Incidente incidente = new Incidente();
                incidente.latitud = registroIncidente.latitud;
                incidente.longitud = registroIncidente.longitud;
                incidente.titulo = registroIncidente.titulo;
                incidente.descripcion = registroIncidente.descripcion;
                incidente.idEstatusIncidente = 1;
                incidente.idTipoIncidente = registroIncidente.idTipoIncidente;
                incidente.idNotificacion = notificacion.idNotificacion;
                incidente.fechaActualizacion = DateTime.Now;
                incidente = db.incidente.Add(incidente);
                db.SaveChanges();

                Usuario usuario = Usuario.GetUsuarioById(registroIncidente.idUsuario);

                Asignacion asignacion = new Asignacion();
                asignacion.idUsuario = usuario.idUsuario;
                asignacion.idEmpleado = usuario.idEmpleado;
                asignacion.idIncidente = incidente.idIncidente;
                db.Asignacion.Add(asignacion);
                db.SaveChanges();


                //db.incidente.Add(incidente);
                //db.SaveChanges();
                RedirectToAction("Incidentes", "Home");
            }

            //ViewBag.idEstatusIncidente = new SelectList(db.EstatusIncidente, "idEstatusIncidente", "estatus", incidente.idEstatusIncidente);
            //ViewBag.idNotificacion = new SelectList(db.Notificacion, "idNotificacion", "mensaje", incidente.idNotificacion);
            //ViewBag.idTipoIncidente = new SelectList(db.TipoIncidente, "idTipoIncidente", "tipo", incidente.idTipoIncidente);
            return RedirectToAction("","");
        }

        // GET: incidentes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Incidente incidente = db.incidente.Find(id);
            if (incidente == null)
            {
                return HttpNotFound();
            }
            ViewBag.idEstatusIncidente = new SelectList(db.EstatusIncidente, "idEstatusIncidente", "estatus", incidente.idEstatusIncidente);
            ViewBag.idNotificacion = new SelectList(db.Notificacion, "idNotificacion", "mensaje", incidente.idNotificacion);
            ViewBag.idTipoIncidente = new SelectList(db.TipoIncidente, "idTipoIncidente", "tipo", incidente.idTipoIncidente);
            return View(incidente);
        }

        // POST: incidentes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idIncidente,longitud,latitud,fechaActualizacion,titulo,descripcion,idEstatusIncidente,idTipoIncidente,idNotificacion")] Incidente incidente)
        {
            if (ModelState.IsValid)
            {
                db.Entry(incidente).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.idEstatusIncidente = new SelectList(db.EstatusIncidente, "idEstatusIncidente", "estatus", incidente.idEstatusIncidente);
            ViewBag.idNotificacion = new SelectList(db.Notificacion, "idNotificacion", "mensaje", incidente.idNotificacion);
            ViewBag.idTipoIncidente = new SelectList(db.TipoIncidente, "idTipoIncidente", "tipo", incidente.idTipoIncidente);
            return View(incidente);
        }

        // GET: incidentes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Incidente incidente = db.incidente.Find(id);
            if (incidente == null)
            {
                return HttpNotFound();
            }
            return View(incidente);
        }

        // POST: incidentes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Incidente incidente = db.incidente.Find(id);
            db.incidente.Remove(incidente);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
