using AnimalDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ZooCompanion.Controllers
{
    public class ExhibitController : ApiController
    {
        public List<exhibits> Get()
        {
            using (ZooCompanionWebApi_dbEntities entities = new ZooCompanionWebApi_dbEntities())
            {
                return entities.exhibits.ToList();
            }
        }
    }
}
