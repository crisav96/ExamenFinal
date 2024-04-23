using System;

namespace ExamenFinal.Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string usuario = txtUsername.Text;
            string clave = txtPassword.Text;

            string connectionString = "Data Source=LAPTOP-4M73J555\\SQLEXPRESS;Initial Catalog=examenfinal;Integrated Security=True";

            ValidadorCredenciales validador = new ValidadorCredenciales();
            bool credencialesValidas = validador.Validar(connectionString, usuario, clave);

            if (credencialesValidas)
            {
                Response.Redirect("Menuprincipal.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Credenciales incorrectas. Inténtalo de nuevo.');", true);
            }
        }
    }
}
