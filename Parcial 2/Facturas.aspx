<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Facturas.aspx.cs" Inherits="Parcial_2.Facturas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Facturas</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-6">
                <br/>
                <h3>Productos</h3>
                <br/> 
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="539px" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                        <asp:BoundField DataField="existencias" HeaderText="existencias" SortExpression="existencias" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedAscendingCellStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Producto]">
                </asp:SqlDataSource>
                <br/>  
            </div>
            <br />
            <div class="col-lg-6">
                <br/>                 
                <br/>
                <h3>Registrar Factura</h3>
                <br/>    
                <asp:Label ID="Label1" runat="server" Text="ID Factura"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_1a" runat="server" ErrorMessage="Debe ingresar Codigo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_1a" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                         
                <br/>
                <asp:Label ID="Label2" runat="server" Text="ID Cliente"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tb_1b" runat="server" ErrorMessage="Debe ingresar Codigo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_1b" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                         
                <br/>  
                <asp:Label ID="Label3" runat="server" Text="Estado:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Debe Seleccionar Estado Factura" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <br/>
                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-select">                     
                    <asp:ListItem>Pendiente</asp:ListItem> 
                    <asp:ListItem>Pagado</asp:ListItem> 
                    <asp:ListItem>En Proceso</asp:ListItem>
                    <asp:ListItem>Enviado</asp:ListItem>
                    <asp:ListItem>Entregado</asp:ListItem>             
                </asp:DropDownList>                
                <br/>  
                <asp:Label ID="Label4" runat="server" Text="Codigo Producto 1:"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tb_2a" runat="server" ErrorMessage="Debe ingresar Codigo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_2a" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                         
                <br/>
                <asp:Label ID="Label5" runat="server" Text="Cantidad:"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tb_2b" runat="server" ErrorMessage="Debe ingresar Codigo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_2b" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                         
                <br/>
                <asp:Label ID="Label6" runat="server" Text="Codigo Producto 2:"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="tb_2c" runat="server" ErrorMessage="Debe ingresar Codigo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_2c" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                         
                <br/>
                <asp:Label ID="Label7" runat="server" Text="Cantidad:"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="tb_2d" runat="server" ErrorMessage="Debe ingresar Codigo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_2d" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                         
                <br/>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />   
                <asp:Button ID="Button1" class="btn btn-success marging" runat="server" OnClick="Button_Click" Text="Registrar" />
                <br/><br/>
                <asp:Label ID="Label15" runat="server" Text=""></asp:Label>  
                <br/>                
            </div>
            <br />
            <div class="col-lg-6">
                <br/>
                <h3>Facturas</h3>
                <br/> 
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="factura_id" DataSourceID="SqlDataSource2" HorizontalAlign="Center" Width="539px" AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="factura_id" HeaderText="factura_id" ReadOnly="True" SortExpression="factura_id" />
                        <asp:BoundField DataField="cliente_id" HeaderText="cliente_id" SortExpression="cliente_id" />
                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SortedAscendingCellStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Factura]">
                </asp:SqlDataSource>
                <br/>  
            </div>
            <br/>
            <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="detalle_factura_id" DataSourceID="SqlDataSource3" HorizontalAlign="Center" Width="507px">
                <Columns>
                    <asp:BoundField DataField="detalle_factura_id" HeaderText="detalle_factura_id" InsertVisible="False" ReadOnly="True" SortExpression="detalle_factura_id" />
                    <asp:BoundField DataField="factura_id" HeaderText="factura_id" SortExpression="factura_id" />
                    <asp:BoundField DataField="codigo_id" HeaderText="codigo_id" SortExpression="codigo_id" />
                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                    <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                </Columns>
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Detalle_Factura]"></asp:SqlDataSource>
            <br/>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">regresar</asp:HyperLink>
            <br/><br/> 
        </div>
    </form>
</body>
</html>
