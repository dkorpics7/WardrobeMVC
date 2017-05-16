using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeMVC.Models;

namespace WardrobeMVC.Controllers
{
    public class BottomsController : Controller
    {
        private WardrobeMVCEntities db = new WardrobeMVCEntities();

        // GET: Bottoms
        public ActionResult Index()
        {
            var bottoms = db.Bottoms.Include(b => b.Color).Include(b => b.Occasion).Include(b => b.Season);

            return View(bottoms.ToList());
        }

        //I was trying to add a filter option here, but it didn't work.  
        // GET: Bottoms
        //public ActionResult Index(int? ucolor, int? useason, int? uoccasion)
        //{
        //    var bottoms = db.Bottoms.Include(b => b.Color).Include(b => b.Occasion).Include(b => b.Season);



        //    //List<Bottom> bottomList = db.Bottoms.ToList();     // All current bottoms
        //    //List<Bottom> newlist = new List<Bottom>();         // list to store only bottoms requested

        //    //foreach (Bottom b in bottomList)
        //    //{
        //    //    if (b.ColorID == ucolor && b.SeasonID == useason && b.OccasionID == uoccasion)
        //    //    {
        //    //        newlist.Add(b);
        //    //    }
        //    //}
        //    //return RedirectToAction("Index(newlist)");
        //    return View();
        //}

        // GET: Bottoms/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bottom bottom = db.Bottoms.Find(id);
            if (bottom == null)
            {
                return HttpNotFound();
            }
            return View(bottom);
        }

        // GET: Bottoms List (List Details of All Items)
        public ActionResult List()
        {
            var bottoms = db.Bottoms.Include(b => b.Color).Include(b => b.Occasion).Include(b => b.Season);

            return View(bottoms.ToList());
        }

// I tried to add an option to filter the list by color, season, and occasion, but I couldn't do it.
        //// GET: Bottoms/Filter -- List only items that match user specifications
        //public ActionResult Filter()
        //{
        //    ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Color1");
        //    ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Occassion");
        //    ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Season1");
        //    return View();
        //}

        //// POST: Bottoms/Filter -- List only items that match user specifications
        //// To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        //// more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult Filter([Bind(Include = "BottomID,Name,Photo,ColorID,SeasonID,OccasionID")] Bottom bottom)
        //{
        //    List<Bottom> bottomList = db.Bottoms.ToList();     // All current bottoms
        //    List<Bottom> newlist = new List<Bottom>();         // list to store only bottoms requested

        //    foreach (Bottom b in bottomList)
        //    {
        //       if (b.BottomID !=null && b !- null && b.ColorID == ColorID && b.SeasonID == SeasonID && b.OccasionID == OccasionID)
        //       {
        //        newlist.Add(b);
        //       }
        //    }
        //    return RedirectToAction("Index(newlist)");

        //    //return RedirectToAction("Index(ColorID, SeasonID, OccasionID");
        //    //return View();
        //}

        // GET: Bottoms/Create
        public ActionResult Create()
        {
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Color1");
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Occassion");
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Season1");
            return View();
        }

        // POST: Bottoms/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "BottomID,Name,Photo,ColorID,SeasonID,OccasionID")] Bottom bottom)
        {
            if (ModelState.IsValid)
            {
                db.Bottoms.Add(bottom);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Color1", bottom.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Occassion", bottom.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Season1", bottom.SeasonID);
            return View(bottom);
        }

        // GET: Bottoms/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bottom bottom = db.Bottoms.Find(id);
            if (bottom == null)
            {
                return HttpNotFound();
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Color1", bottom.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Occassion", bottom.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Season1", bottom.SeasonID);
            return View(bottom);
        }

        // POST: Bottoms/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "BottomID,Name,Photo,ColorID,SeasonID,OccasionID")] Bottom bottom)
        {
            if (ModelState.IsValid)
            {
                db.Entry(bottom).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ColorID = new SelectList(db.Colors, "ColorID", "Color1", bottom.ColorID);
            ViewBag.OccasionID = new SelectList(db.Occasions, "OccasionID", "Occassion", bottom.OccasionID);
            ViewBag.SeasonID = new SelectList(db.Seasons, "SeasonID", "Season1", bottom.SeasonID);
            return View(bottom);
        }

        // GET: Bottoms/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bottom bottom = db.Bottoms.Find(id);
            if (bottom == null)
            {
                return HttpNotFound();
            }
            return View(bottom);
        }

        // POST: Bottoms/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Bottom bottom = db.Bottoms.Find(id);
            db.Bottoms.Remove(bottom);
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
