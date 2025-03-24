using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ARPA20250324.AppWebMVC.Models;

public partial class Product
{
    [Display(Name = "IdProducto")]
    public int Id { get; set; }
    [Display(Name = "Nombre")]
    [Required(ErrorMessage = "El nombre es obligatorio.")]
    public string ProductName { get; set; } = null!;
    [Display(Name = "Descripcion")]
    public string? Description { get; set; }
    [Display(Name = "Precio")]
    [Required(ErrorMessage = "El precio es obligatorio.")]
    public decimal Price { get; set; }
    [Display(Name = "Precio Compra")]
    [Required(ErrorMessage = "El precio compra es obligatorio.")]
    public decimal PurchasePrice { get; set; }
    [Display(Name = "Bodega")]

    public int? WarehouseId { get; set; }
    [Display(Name = "Marca")]
    public int? BrandId { get; set; }
    [Display(Name = "Marca")]
    public string? Notes { get; set; }

    public virtual Brand? Brand { get; set; }
    [Display(Name = "Bodega")]
    public virtual Warehouse? Warehouse { get; set; }
}
