using System;
using System.ComponentModel.DataAnnotations;

namespace Models
{
    public class Poliza
    {
        [Key]
        public int NumeroPoliza { get; set; }
        public string NombreCliente { get; set; }
        public string IdCliente { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public DateTime FechaPoliza { get; set; }
        public string Coberturas { get; set; }
        public decimal ValorMaximo { get; set; }
        public string NombrePoliza { get; set; }
        public string CiudadResidencia { get; set; }
        public string DireccionResidencia { get; set; }
        public string PlacaAutomotor { get; set; }
        public string ModeloAutomotor { get; set; }
        public char Inspeccion { get; set; }
    }
}
