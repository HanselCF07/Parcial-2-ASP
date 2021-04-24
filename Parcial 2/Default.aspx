<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Parcial_2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <div class="jumbotron">

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clientes.aspx">Crear Clientes</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/EditarClientes.aspx">Editar Clientes</asp:HyperLink>    
         <br />
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/EliminarClientes.aspx">Eliminar Clientes</asp:HyperLink>    
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Productos.aspx">Crear Productos</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/EditarProductos.aspx">Editar Productos</asp:HyperLink>
         <br />
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/EliminarProductos.aspx">Eliminar Productos</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Facturas.aspx">Gestion Factura</asp:HyperLink>

    </div>

</asp:Content>
