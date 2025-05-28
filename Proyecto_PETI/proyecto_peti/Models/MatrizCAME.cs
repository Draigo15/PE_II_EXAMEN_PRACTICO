using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace proyecto_peti.Models
{
    [Table("MatrizCAME")]
    public class MatrizCAME
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public int PlanId { get; set; }

        // Acciones para Corregir (C)
        public string Corregir1 { get; set; }
        public string Corregir2 { get; set; }
        public string Corregir3 { get; set; }
        public string Corregir4 { get; set; }

        // Acciones para Afrontar (A)
        public string Afrontar1 { get; set; }
        public string Afrontar2 { get; set; }
        public string Afrontar3 { get; set; }
        public string Afrontar4 { get; set; }

        // Acciones para Mantener (M)
        public string Mantener1 { get; set; }
        public string Mantener2 { get; set; }
        public string Mantener3 { get; set; }
        public string Mantener4 { get; set; }

        // Acciones para Explotar (E)
        public string Explotar1 { get; set; }
        public string Explotar2 { get; set; }
        public string Explotar3 { get; set; }
        public string Explotar4 { get; set; }

        public DateTime? CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }

        [ForeignKey("PlanId")]
        public virtual PlanEstrategico PlanEstrategico { get; set; }
    }
}
