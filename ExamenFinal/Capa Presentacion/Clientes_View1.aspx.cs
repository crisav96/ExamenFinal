using System;
using System.Data;
using System.Web.UI.WebControls;
using ExamenFinal.CapaLogica;

namespace ExamenFinal.Capa_Presentacion
{
    public partial class Clientes_View1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatos();
            }
        }

        protected void btnAgregarCliente_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string email = txtEmail.Text;
            string telefono = txtTelefono.Text;

            Cliente_OP clienteOP = new Cliente_OP();
            clienteOP.AgregarCliente(nombre, email, telefono);

            LimpiarCampos();
            CargarDatos();
        }

        protected void btnBorrarCliente_Click(object sender, EventArgs e)
        {
            int idBorrar;
            if (int.TryParse(txtIdBorrar.Text, out idBorrar))
            {
                Cliente_OP clienteOP = new Cliente_OP();
                clienteOP.BorrarCliente(idBorrar);

                LimpiarCampos();
                CargarDatos();
            }
            else
            {
                // Manejar el caso en el que el ID no sea un número válido
            }
        }

        protected void btnModificarCliente_Click(object sender, EventArgs e)
        {
            int idModificar;
            if (int.TryParse(txtIdModificar.Text, out idModificar))
            {
                string nombre = txtNombreModificar.Text;
                string email = txtEmailModificar.Text;
                string telefono = txtTelefonoModificar.Text;

                Cliente_OP clienteOP = new Cliente_OP();
                clienteOP.ModificarCliente(idModificar, nombre, email, telefono);

                LimpiarCampos();
                CargarDatos();
            }
            else
            {
                // Manejar el caso en el que el ID no sea un número válido
            }
        }

        private void CargarDatos()
        {
            Cliente_OP clienteOP = new Cliente_OP();
            GridView1.DataSource = clienteOP.ObtenerClientes();
            GridView1.DataBind();
        }

        private void LimpiarCampos()
        {
            txtNombre.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtTelefono.Text = string.Empty;
            txtIdBorrar.Text = string.Empty;
            txtIdModificar.Text = string.Empty;
            txtNombreModificar.Text = string.Empty;
            txtEmailModificar.Text = string.Empty;
            txtTelefonoModificar.Text = string.Empty;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
