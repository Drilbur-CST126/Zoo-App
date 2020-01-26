using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using AnimalDataAccess;

namespace ZooCompanion.Controllers
{
    public class AnimalController : ApiController
    {
        public List<animals> Get()
        {
            using (ZooCompanionEntities entities = new ZooCompanionEntities())
            {
                return entities.animals.ToList();
            }
        }

        public animals Get(string commonName)
        {
            using(ZooCompanionEntities entities = new ZooCompanionEntities())
            {
                return entities.animals.FirstOrDefault(e => e.common_name == commonName);
            }
        }
    }
}
