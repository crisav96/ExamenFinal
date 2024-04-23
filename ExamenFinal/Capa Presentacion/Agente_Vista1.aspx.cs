using System;
using System.Data;
using ExamenFinal.CapaLogica;

namespace ExamenFinal.Capa_Presentacion
{
    public partial class Agente_Vista1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatos();
            }
        }

        protected void btnAgregarAgente_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string email = txtEmail.Text;
            string telefono = txtTelefono.Text;

            Agente_OP agenteOP = new Agente_OP();
            agenteOP.AgregarAgente(nombre, email, telefono);

            LimpiarCampos();
            CargarDatos();
        }

        protected void btnBorrarAgente_Click(object sender, EventArgs e)
        {
            int idBorrar;
            if (int.TryParse(txtIdBorrar.Text, out idBorrar))
            {
                Agente_OP agenteOP = new Agente_OP();
                agenteOP.BorrarAgente(idBorrar);

                LimpiarCampos();
                CargarDatos();
            }
            else
            {

            }
        }

        protected void btnModificarAgente_Click(object sender, EventArgs e)
        {
            int idModificar;
            if (int.TryParse(txtIdModificar.Text, out idModificar))
            {
                string nombre = txtNombreModificar.Text;
                string email = txtEmailModificar.Text;
                string telefono = txtTelefonoModificar.Text;

                Agente_OP agenteOP = new Agente_OP();
                agenteOP.ModificarAgente(idModificar, nombre, email, telefono);

                LimpiarCampos();
                CargarDatos();
            }
            else
            {

            }
        }

        protected void txtTelefonoModificar_TextChanged(object sender, EventArgs e)
        {

        }

        private void CargarDatos()
        {
            Agente_OP agenteOP = new Agente_OP();
            GridView1.DataSource = agenteOP.ObtenerAgentes();
            GridView1.DataBind();
        }

        private void LimpiarCampos()
        {
            txtNombre.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtTelefono.Text = string.Empty;

        }
    }
}
