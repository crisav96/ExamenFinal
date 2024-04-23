<%@ Page Title="" Language="C#" MasterPageFile="~/Capa Presentacion/Menup.Master" AutoEventWireup="true" CodeBehind="Clientes_View1.aspx.cs" Inherits="ExamenFinal.Capa_Presentacion.Clientes_View1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .submit-button {
            margin-left: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <h1>Gestión de Clientes</h1>

    <asp:Label runat="server" AssociatedControlID="txtNombre" Text="Nombre:" />
    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" ></asp:TextBox><br />
    <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email:" />
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ></asp:TextBox><br />
    <asp:Label runat="server" AssociatedControlID="txtTelefono" Text="Teléfono:" />
    <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" ></asp:TextBox><br />
    <asp:Button ID="btnAgregarCliente" runat="server" Text="Agregar Cliente" OnClick="btnAgregarCliente_Click" CssClass="submit-button" />
    <asp:Label runat="server" AssociatedControlID="txtIdBorrar" Text="ID del Cliente:" />
    <asp:TextBox ID="txtIdBorrar" runat="server" CssClass="form-control" ></asp:TextBox><br />
    <asp:Button ID="btnBorrarCliente" runat="server" Text="Borrar Cliente" OnClick="btnBorrarCliente_Click" CssClass="submit-button" />

    <asp:Label runat="server" AssociatedControlID="txtIdModificar" Text="ID del Cliente:" />
    <asp:TextBox ID="txtIdModificar" runat="server" CssClass="form-control" ></asp:TextBox><br />
    <asp:Label runat="server" AssociatedControlID="txtNombreModificar" Text="Nuevo Nombre:" />
    <asp:TextBox ID="txtNombreModificar" runat="server" CssClass="form-control"></asp:TextBox><br />
    <asp:Label runat="server" AssociatedControlID="txtEmailModificar" Text="Nuevo Email:" />
    <asp:TextBox ID="txtEmailModificar" runat="server" CssClass="form-control"></asp:TextBox><br />
    <asp:Label runat="server" AssociatedControlID="txtTelefonoModificar" Text="Nuevo Teléfono:" />
    <asp:TextBox ID="txtTelefonoModificar" runat="server" CssClass="form-control"></asp:TextBox><br />
    <asp:Button ID="btnModificarCliente" runat="server" Text="Modificar Cliente" OnClick="btnModificarCliente_Click" CssClass="submit-button" Width="311px" />
</body>
    
    <div>
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="316px" BackColor="#FF5050" BorderColor="Red" ForeColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="text-align: center"></asp:GridView> </div>
</asp:Content>
