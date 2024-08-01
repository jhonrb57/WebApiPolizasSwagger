using Models;
using BaseDatos;
using DataObjects;
using Microsoft.AspNetCore.Mvc;

namespace WebApiPolizasSwagger.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class PolizaController : ControllerBase
    {
        private readonly Conexion conexionBd = new();
        private readonly PolizaDataObject polizaDO = new();

        // GET: api/<PolizaController>
        [HttpGet]
        public List<Poliza> Get()
        {
            return polizaDO.Listar(conexionBd.ConexionBd());
        }

        // GET api/<PolizaController>/5
        [HttpGet("{id}")]
        public Poliza Get(int id)
        {
            return polizaDO.Obtener(conexionBd.ConexionBd(), id);
        }

        // POST api/<PolizaController>
        [HttpPost]
        public bool Post([FromBody] Poliza poliza)
        {
            return polizaDO.Registrar(conexionBd.ConexionBd(), poliza);
        }

        // PUT api/<PolizaController>/5
        [HttpPut("{id}")]
        public bool Put(int id, [FromBody] Poliza poliza)
        {
            return polizaDO.Modificar(conexionBd.ConexionBd(), poliza);
        }

        // DELETE api/<PolizaController>/5
        [HttpDelete("{id}")]
        public bool Delete(int id)
        {
            return polizaDO.Eliminar(conexionBd.ConexionBd(), id);
        }
    }
}
