using System;
using Microsoft.Extensions.Configuration;

namespace BaseDatos
{
    public class Conexion
    {
        public string ConexionBd()
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(AppContext.BaseDirectory)
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true);

            IConfiguration configuration = builder.Build();
            string connectionString = configuration.GetConnectionString("Conexion");

            return connectionString;
        }
    }
}