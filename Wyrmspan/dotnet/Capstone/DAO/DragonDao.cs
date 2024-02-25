using Capstone.Exceptions;
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

        public Dragon GetDragonById(int dragonId)
        {
            Dragon dragon = new Dragon();
            string sql = "SELECT * FROM dragons WHERE dragon_id = @dragonId;";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@dragonId", dragonId);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        dragon = MapRowToDragon(reader);
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }

            return dragon;
        }

        public Dragon GetDragonByNumber(int number)
        {
            Dragon dragon = new Dragon();
            string sql = "SELECT * FROM dragons WHERE dragon_number = @dragon_number";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@dragon_number", number);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if(reader.Read())
                    {
                        dragon = MapRowToDragon(reader);
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }

            return dragon;
        }

        public Dragon GetDragonByName(string dragonName)
        {
            Dragon dragon = new Dragon();
            string sql = "SELECT * FROM dragons WHERE name = @name";

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    SqlCommand cmd = new SqlCommand(sql, conn);
                    cmd.Parameters.AddWithValue("@name", dragonName);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        dragon = MapRowToDragon(reader);
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }


            return dragon;
        }

        public List<Dragon> GetSearchResults(string searchQuery)
        {
            List<Dragon> dragons = new List<Dragon>();
            List<string> searchWords = SearchWords(searchQuery);

            string sql = null;
            string singleParamQuery = null;

            for (int i = 0; i < searchWords.Count; i++)
            {
                singleParamQuery = $"@querySearch{i}";
                sql = $"SELECT * FROM dragons WHERE name LIKE {singleParamQuery} OR dragon_number LIKE {singleParamQuery}";

                try
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();

                        SqlCommand cmd = new SqlCommand(sql, conn);
                        cmd.Parameters.AddWithValue($"@querySearch{i}", SearchStringWildcardAdder(searchWords[i]));
                        SqlDataReader reader = cmd.ExecuteReader();

                        while (reader.Read())
                        {
                            Dragon result = MapRowToDragon(reader);
                            if (!dragons.Contains(GetDragonByNumber(result.dragon_number)))
                            {
                                dragons.Add(result);
                            }
                        }

                    }

                }
                catch (Exception)
                {

                    throw;
                }
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

        protected string SearchStringWildcardAdder(string query)
        {
            return string.IsNullOrEmpty(query) ? "" : "%" + query + "%";
        }

        protected List<string> SearchWords(string searchString)
        {
            List<string> searchStringWords = new List<string>();
            if (searchString != null)
            {
                string[] searchStringSplit = searchString.Split(' ');
                foreach (string word in searchStringSplit)
                {
                    searchStringWords.Add(word);
                }
            }
            return searchStringWords;
        }

    }
}
