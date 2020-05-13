using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using AnimalDataAccess;

namespace ZooApp.Controllers
{
    public class DetailController : ApiController
    {
        public List<detail> Get()
        {
            using (ZooCompanionWebApi_dbEntities entities = new ZooCompanionWebApi_dbEntities())
            {
                return entities.details.ToList();
            }
        }
    }
}
