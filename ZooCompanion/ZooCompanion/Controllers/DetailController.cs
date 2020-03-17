using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using CalendarDataAccess;

namespace ZooCompanion.Controllers
{
    public class DetailController : ApiController
    {
        public List<details> Get()
        {
            using (CalendarEntities entities = new CalendarEntities())
            {
                return entities.details.ToList();
            }
        }
    }
}
