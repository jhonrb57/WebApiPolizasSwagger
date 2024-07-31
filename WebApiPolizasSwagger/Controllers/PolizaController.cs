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
        private readonly Conexion conexionBd = new Conexion();

        // GET: api/<PolizaController>
        [HttpGet]
        public List<Poliza> Get()
        {
            return PolizaDataObject.Listar(conexionBd.ConexionBd());
        }

        // GET api/<PolizaController>/5
        [HttpGet("{id}")]
        public Poliza Get(int id)
        {
            return PolizaDataObject.Obtener(conexionBd.ConexionBd(), id);
        }

        // POST api/<PolizaController>
        [HttpPost]
        public bool Post([FromBody] Poliza poliza)
        {
            return PolizaDataObject.Registrar(conexionBd.ConexionBd(), poliza);
        }

        // PUT api/<PolizaController>/5
        [HttpPut("{id}")]
        public bool Put(int id, [FromBody] Poliza poliza)
        {
            return PolizaDataObject.Modificar(conexionBd.ConexionBd(), poliza);
        }

        // DELETE api/<PolizaController>/5
        [HttpDelete("{id}")]
        public bool Delete(int id)
        {
            return PolizaDataObject.Eliminar(conexionBd.ConexionBd(), id);
        }
    }
}
