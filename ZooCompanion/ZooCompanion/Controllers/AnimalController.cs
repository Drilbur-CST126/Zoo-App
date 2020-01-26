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
        public IEnumerable<animals> GetAnimals()
        {
            using (ZooCompanionEntities entities = new ZooCompanionEntities())
            {
                return entities.animals.ToList();
            }
        }

        public animals GetAnimals(string commonName)
        {
            using(ZooCompanionEntities entities = new ZooCompanionEntities())
            {
                return entities.animals.FirstOrDefault(e => e.common_name == commonName);
            }
        }
    }
}
