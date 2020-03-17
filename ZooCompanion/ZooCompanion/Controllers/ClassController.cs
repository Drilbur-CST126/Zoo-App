using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using AnimalDataAccess;

namespace ZooCompanion.Controllers
{
    public class ClassController : ApiController
    {
        public List<classes> Get()
        {
            using (AnimalEntities entities = new AnimalEntities())
            {
                return entities.classes.ToList();
            }
        }
    }
}

