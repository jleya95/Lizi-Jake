using Capstone.Exceptions;
using Capstone.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Wyrmspan_Backend.Models;

namespace Wyrmspan_Backend.DAO
{
    public class DragonDao : IDragonDao
    {
        private readonly string connectionString;
        public DragonDao(string dbConnectionString)
        {
            connectionString = dbConnectionString;
        }
        public List<Dragon> GetDragon()
        {
            List<Dragon> dragons = new List<Dragon>();

            string sql = "SELECT * from dragons";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(sql, conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Dragon dragon = MapRowToDragon(reader);
                        dragons.Add(dragon);
                    }
                }
            }
            catch (SqlException ex)
            {

                throw new DaoException("SQL exception occurred", ex);
            }

            return dragons; 
        }

        private Dragon MapRowToDragon(SqlDataReader reader)
        {
            Dragon dragon = new Dragon();
            dragon.dragon_number = Convert.ToInt32(reader["dragon_number"]);
            dragon.name = Convert.ToString(reader["name"]);
            dragon.habitat = Convert.ToString(reader["habitat"]);
            dragon.size = Convert.ToString(reader["size"]);
            dragon.cost = Convert.ToString(reader["cost"]);
            dragon.nest = Convert.ToString(reader["nest"]);
            dragon.trait = Convert.ToString(reader["trait"]);
            dragon.description = Convert.ToString(reader["description"]);

            return dragon;
        }

    }
}
