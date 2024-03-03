using System.Collections.Generic;
using Wyrmspan_Backend.Models;

namespace Wyrmspan_Backend.DAO
{
    public interface IDragonDao
    {
        List<Dragon> GetDragon();
        Dragon GetDragonById(int dragonId);
        List<Dragon> GetSearchResults(string searchQuery);
        Dragon GetDragonByNumber(int number);
        Dragon GetDragonByName(string dragonName);
        string GetDragonImgPath(int dragonNumber);

    }
}
