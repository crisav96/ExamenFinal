<%@ Page Title="" Language="C#" MasterPageFile="~/Capa Presentacion/Menup.Master" AutoEventWireup="true" CodeBehind="Agente_Vista1.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Agente_Vista1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>   
        <h1>Gestión de Agentes</h1>

        <asp:Panel ID="pnlAgregarAgente" runat="server" CssClass="form-container" Width="248px">
            <asp:Label runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Label runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Label runat="server" Text="Teléfono:"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Button ID="btnAgregarAgente" runat="server" Text="Agregar Agente" OnClick="btnAgregarAgente_Click" CssClass="submit-button" />
        </asp:Panel>


        <asp:Panel ID="pnlBorrarAgente" runat="server" CssClass="form-container" Width="245px">
            <asp:Label runat="server" Text="ID del Agente:"></asp:Label>
            <asp:TextBox ID="txtIdBorrar" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Button ID="btnBorrarAgente" runat="server" Text="Borrar Agente" OnClick="btnBorrarAgente_Click" CssClass="submit-button" Width="135px" />
        </asp:Panel>

        <asp:Panel ID="pnlModificarAgente" runat="server" CssClass="form-container" Width="245px">
            <asp:Label runat="server" Text="ID del Agente:"></asp:Label>
            <asp:TextBox ID="txtIdModificar" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Label runat="server" Text="Nuevo Nombre:"></asp:Label>
            <asp:TextBox ID="txtNombreModificar" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Label runat="server" Text="Nuevo Email:"></asp:Label>
            <asp:TextBox ID="txtEmailModificar" runat="server" CssClass="form-control"></asp:TextBox><br />
            <asp:Label runat="server" Text="Nuevo Teléfono:"></asp:Label>
            <asp:TextBox ID="txtTelefonoModificar" runat="server" CssClass="form-control" OnTextChanged="txtTelefonoModificar_TextChanged"></asp:TextBox><br />
            <asp:Button ID="btnModificarAgente" runat="server" Text="Modificar Agente" OnClick="btnModificarAgente_Click" CssClass="submit-button" />
        </asp:Panel>

        <div>
            <asp:GridView ID="GridView1" runat="server" Width="316px" BackColor="#FF5050" BorderColor="Red" ForeColor="White" style="margin-left: 0px"></asp:GridView>
        </div>
    </form>
</body>
</asp:Content>
