using System;
using System.Data.SqlClient;

namespace ExamenFinal.Presentacion
{
    public class ValidadorCredenciales
    {
        public bool Validar(string connectionString, string usuario, string clave)
        {
            bool credencialesValidas = false;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string procedureName = "validar";

                using (SqlCommand command = new SqlCommand(procedureName, connection))
                {
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@login_Usuario", usuario);
                    command.Parameters.AddWithValue("@clave_Agente", clave);

                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();
                        credencialesValidas = reader.HasRows;
                        reader.Close();
                    }
                    catch (Exception ex)
                    {
                        // Manejar excepciones, si es necesario
                    }
                }
            }

            return credencialesValidas;
        }
    }
}
