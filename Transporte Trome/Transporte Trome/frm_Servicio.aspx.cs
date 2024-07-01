using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Transporte_Trome
{
    public partial class frm_Servicio : System.Web.UI.Page
    {
        private static string cadena = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
        private TromeDataContext trome = new TromeDataContext(cadena);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCatalogoServicios();
            }
        }

        protected void CargarCatalogoServicios()
        {
            var servicios = from s in trome.Servicio
                            select new
                            {
                                s.IdServicio,
                                s.Descripcion,
                                s.TarifaBase,
                                ImagenUrl = GetImageUrl(s.IdServicio) // Añadir la URL de la imagen
                            };

            rptServicios.DataSource = servicios.ToList();
            rptServicios.DataBind();
        }

        private string GetImageUrl(int idServicio)
        {
            switch (idServicio)
            {
                case 1:
                    return "~/images/servicio1.png";
                case 2:
                    return "~/images/servicio2.png";
                case 3:
                    return "~/images/servicio3.png";
                case 4:
                    return "~/images/servicio4.png";
                case 5:
                    return "~/images/servicio5.png";
                case 6:
                    return "~/images/servicio6.png";
                default:
                    return "~/images/default.png";
            }
        }

        protected void rptServicios_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "AgregarCarrito")
            {
                int idServicio = Convert.ToInt32(e.CommandArgument);
                // Obtener el carrito de servicios desde la sesión o inicializar si es null
                var carritoServicios = Session["CarritoServicios"] as List<int> ?? new List<int>();

                if (!carritoServicios.Contains(idServicio))
                {
                    carritoServicios.Add(idServicio);
                    Session["CarritoServicios"] = carritoServicios;
                }

                Response.Redirect("frmCarrito_Compra.aspx"); // Redirige al carrito de compras después de agregar
            }
        }

        protected void VerCarrito_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCarrito_Compra.aspx");
        }
    }
}
