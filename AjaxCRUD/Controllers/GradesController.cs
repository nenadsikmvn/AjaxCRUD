using AjaxCRUD.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AjaxCRUD.Controllers
{
    public class GradesController : Controller
    {
        private AjaxCRUD_DBEntities db = new AjaxCRUD_DBEntities();

        [HttpGet]
        public ActionResult Index()
        {

            return View();
        }

        IEnumerable<Grade> GetAllGrades()
        {

            return db.Grades.ToList<Grade>();

        }

        [HttpGet]
        public ActionResult AddOrEdit(int id = 0)
        {
            Grade grd = new Grade();
            if (id != 0)
            {
                using (AjaxCRUD_DBEntities db = new AjaxCRUD_DBEntities())
                {
                    grd = db.Grades.Where(x => x.GradeId == id).FirstOrDefault<Grade>();
                }
            }
            ViewBag.StudentId = new SelectList(db.Students, "StudentId", "FirstName", "LastName");
            ViewBag.TeacherId = new SelectList(db.Teachers, "TeacherId", "FirstName", "LastName");
            return View(grd);
           
   
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult AddOrEdit([Bind(Include = "GradeId,Grade1,TeacherId,StudentId")] Grade grd)
        {

            using (AjaxCRUD_DBEntities db = new AjaxCRUD_DBEntities())
            {
                if (grd.GradeId == 0 && ModelState.IsValid)
                {

                    db.Grades.Add(grd);
                    db.SaveChanges();
                }
                else if (grd.GradeId != 0 && ModelState.IsValid)
                {
                    db.Entry(grd).State = EntityState.Modified;
                    db.SaveChanges();

                }
                ViewBag.StudentId = new SelectList(db.Students, "StudentId", "Name", "LastName");
                ViewBag.TeacherId = new SelectList(db.Teachers, "TeacherId", "FirstName", "LastName");
               
            }

            return Json(new
            {
                success = true,
                html = GlobalClass.RenderRazorViewToString(this, "ViewAll", GetAllGrades()),
                message = "Submitted Successfully."
            }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult ViewAll()
        {
            return View(GetAllGrades());
        }

        public ActionResult Delete(int id)
        {
            try
            {
                using (AjaxCRUD_DBEntities db = new AjaxCRUD_DBEntities())
                {
                    Grade grd = db.Grades.Where(x => x.GradeId == id).FirstOrDefault<Grade>();
                    db.Grades.Remove(grd);
                    db.SaveChanges();
                }
                return Json(new
                {
                    success = true,
                    html = GlobalClass.RenderRazorViewToString(this, "ViewAll", GetAllGrades()),
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