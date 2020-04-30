using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using AnimalDataAccess;

namespace ZooCompanion.Controllers
{
    public class PictureController : ApiController
    {
        public List<pictures> Get()
        {
            using (AnimalEntities entities = new AnimalEntities())
            {
                return entities.pictures.ToList();
            }
        }
    }
}
