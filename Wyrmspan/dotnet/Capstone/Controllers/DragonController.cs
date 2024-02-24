﻿using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using Wyrmspan_Backend.DAO;
using Wyrmspan_Backend.Models;

namespace Wyrmspan_Backend.Controllers
{

    [Route("[controller]")]
    [ApiController]
    public class DragonController : ControllerBase
    {
        private readonly IDragonDao dragonDao;
        public DragonController(IDragonDao dragonDao)
        {
            this.dragonDao = dragonDao;
        }

        [HttpGet("/All")]

        public ActionResult<List<Dragon>> GetDragon()
        {
            List<Dragon> dragons = dragonDao.GetDragon();

            return dragons;
        }

    }



}
