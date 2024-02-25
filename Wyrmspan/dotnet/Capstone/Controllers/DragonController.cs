using Microsoft.AspNetCore.Mvc;
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

        [HttpGet("{id}")]
        public ActionResult<Dragon> GetDragonById(int id)
        {
            Dragon dragonToReturn = dragonDao.GetDragonById(id);

            return dragonToReturn;
        }

        [HttpGet("Number/{number}")]
        public ActionResult<Dragon> GetDragonByNumber(int number)
        {
            Dragon dragonToReturn = dragonDao.GetDragonByNumber(number);

            return Ok(dragonToReturn);
        }

        [HttpGet("Name/{name}")]
        public ActionResult<Dragon> GetDragonByName(string name)
        {
            Dragon dragonToReturn = dragonDao.GetDragonByName(name);

            return Ok(dragonToReturn);
        }

        [HttpGet("search")]
        public ActionResult<List<Dragon>> SearchDragons(string q)
        {
            List<Dragon> dragonsFromSearch = dragonDao.GetSearchResults(q);

            return dragonsFromSearch;
        }

    }



}
