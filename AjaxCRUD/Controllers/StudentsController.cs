using AjaxCRUD.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AjaxCRUD.Controllers
{
    public class StudentsController : Controller
    {
        private AjaxCRUD_DBEntities db = new AjaxCRUD_DBEntities();

        [HttpGet]
        public ActionResult Index()
        {

            return View();
        }

        IEnumerable<Student> GetAllStudents()
        {

            return db.Students.ToList<Student>();

        }

        [HttpGet]
        public ActionResult AddOrEdit(int id = 0)
        {
            Student std = new Student();
            if (id != 0)
            {
                using (AjaxCRUD_DBEntities db = new AjaxCRUD_DBEntities())
                {
                    std = db.Students.Where(x => x.StudentId == id).FirstOrDefault<Student>();
                }
            }
            ViewBag.UniversityId = new SelectList(db.Universities, "UniversityId", "Name");
            return View(std);
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddOrEdit([Bind(Include = "StudentId,FirstName,LastName,Age,UniversityId")] Student std)
        {

            using (AjaxCRUD_DBEntities db = new AjaxCRUD_DBEntities())
            {
                if (std.StudentId == 0 && ModelState.IsValid)
                {

                    db.Students.Add(std);
                    db.SaveChanges();
                }
                else if (std.StudentId != 0 && ModelState.IsValid)
                {
                    db.Entry(std).State = EntityState.Modified;
                    db.SaveChanges();

                }
                ViewBag.StudentId = new SelectList(db.Universities, "UniversityId", "Name");
            }

            return Json(new
            {
                success = true,
                html = GlobalClass.RenderRazorViewToString(this, "ViewAll", GetAllStudents()),
                message = "Submitted Successfully."
            }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult ViewAll()
        {
            return View(GetAllStudents());
        }

        public ActionResult Delete(int id)
        {
            try
            {
                using (AjaxCRUD_DBEntities db = new AjaxCRUD_DBEntities())
                {
                    Student std = db.Students.Where(x => x.StudentId == id).FirstOrDefault<Student>();
                    db.Students.Remove(std);
                    db.SaveChanges();
                }
                return Json(new
                {
                    success = true,
                    html = GlobalClass.RenderRazorViewToString(this, "ViewAll", GetAllStudents()),
                    message = "Deleted Successfully."
                }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new
                {
                    success = false,
                    message = ex.Message
                }, JsonRequestBehavior.AllowGet);
            }

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