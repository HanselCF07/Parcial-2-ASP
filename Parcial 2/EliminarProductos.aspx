<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarProductos.aspx.cs" Inherits="Parcial_2.EliminarProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Eliminar Productos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-6">
                <br/>                 
                <br/>
                <h3>Eliminar Productos</h3>
                <br/>    
                <asp:Label ID="Label1" runat="server" Text="Codigo"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_1a" runat="server" ErrorMessage="Debe ingresar Codigo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_1a" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                         
                <br/>
              
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />   
                <asp:Button ID="Button1" class="btn btn-danger marging" runat="server" OnClick="Button_Click" Text="Eliminar" />
                <br/><br/>
                <asp:Label ID="Label15" runat="server" Text=""></asp:Label>  
                <br/>                
            </div>

            <div class="col-lg-6">
                <br/>
                <h3>Productos</h3>
                <br/> 
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="539px" AllowPaging="True" AllowSorting="True">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Producto] WHERE [codigo] = @original_codigo AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([precio] = @original_precio) OR ([precio] IS NULL AND @original_precio IS NULL)) AND (([existencias] = @original_existencias) OR ([existencias] IS NULL AND @original_existencias IS NULL))" InsertCommand="INSERT INTO [Producto] ([codigo], [nombre], [precio], [existencias]) VALUES (@codigo, @nombre, @precio, @existencias)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Producto] ORDER BY [codigo]" UpdateCommand="UPDATE [Producto] SET [nombre] = @nombre, [precio] = @precio, [existencias] = @existencias WHERE [codigo] = @original_codigo">
                    <DeleteParameters>
                        <asp:Parameter Name="original_codigo" Type="Int32" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_precio" Type="Decimal" />
                        <asp:Parameter Name="original_existencias" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="codigo" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                        <asp:Parameter Name="existencias" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="precio" Type="Decimal" />
                        <asp:Parameter Name="existencias" Type="Int32" />
                        <asp:Parameter Name="original_codigo" Type="Int32" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_precio" Type="Decimal" />
                        <asp:Parameter Name="original_existencias" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br/>  
            </div>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">regresar</asp:HyperLink>
            <br/><br/> 
        </div>
    </form>
</body>
</html>
