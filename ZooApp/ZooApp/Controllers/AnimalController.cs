using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using AnimalDataAccess;

namespace ZooApp.Controllers
{
    public class AnimalController : ApiController
    {
        public List<animal> GetAnimals()
        {
            using (ZooCompanionWebApi_dbEntities entities = new ZooCompanionWebApi_dbEntities())
            {
                return entities.animals.ToList();
            }
        }
    }
}
