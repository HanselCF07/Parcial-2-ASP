<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarClientes.aspx.cs" Inherits="Parcial_2.EditarClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Editar Clientes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">           
            <div class="col-lg-6">
                <br/>                 
                <br/>
                <h3>Editar Cliente</h3>
                <br/>    
                <asp:Label ID="Label10" runat="server" Text="Digite ID"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ControlToValidate="tb_id" runat="server" ErrorMessage="Debe ingresar id" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_id" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                                         
                <br/>    
                <asp:Label ID="Label1" runat="server" Text="Cedula"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_1a" runat="server" ErrorMessage="Debe ingresar su Cedula" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_1a" runat="server" TextMode="Number" class="form-control"></asp:TextBox>                                         
                <br/>
                <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_1b" ErrorMessage="Debe ingresar su Nombre" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="tb_1b" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1,15}"> Digite solo letras</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1b" runat="server" class="form-control"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label3" runat="server" Text="Apellido:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_1c" ErrorMessage="Debe ingresar su Apellido" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_1c" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1,25}"> Digite solo letras</asp:RegularExpressionValidator>               
                <asp:TextBox ID="tb_1c" runat="server" class="form-control"></asp:TextBox>
                <br/>                               
                <asp:Label ID="Label4" runat="server" Text="Dirección:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_1d" ErrorMessage="Debe ingresar Dirección" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                                                      
                <asp:TextBox ID="tb_1d" runat="server" class="form-control"></asp:TextBox>                            
                <br/>
                <asp:Label ID="Label5" runat="server" Text="Telefono:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_1e" ErrorMessage="Debe ingresar Telefono" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="tb_1e" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9]){1,15}"> Digite solo numeros</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1e" runat="server" class="form-control" TextMode="Number"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label6" runat="server" Text="Correo"></asp:Label>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="tb_1f" runat="server" ErrorMessage="Debe ingresar su Correo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat ="server" 
                    ErrorMessage="Please give Email Address! "
                    ControlToValidate="tb_1f"
                    ValidationExpression="\S+@\S+\.\S+\w+"
                    ForeColor="Red" >
                </asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1f" runat="server" TextMode="Email" class="form-control"></asp:TextBox> 
                <br/>
                <asp:Label ID="Label7" runat="server" Text="Edad:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tb_1g" ErrorMessage="Debe ingresar Edad" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tb_1g" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9]){1,3}"> Digite solo numeros</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1g" runat="server" class="form-control" TextMode="Number"></asp:TextBox>                               
                <br/>
                <asp:Label ID="Label9" runat="server" Text="Sexo:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="tb_1h" ErrorMessage="Debe ingresar Sexo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tb_1h" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1}"> Digite solo letras</asp:RegularExpressionValidator>               
                <asp:TextBox ID="tb_1h" runat="server" class="form-control"></asp:TextBox>
                <br/>  
                <asp:Label ID="Label8" runat="server" Text="Forma de pago::"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Debe Seleccionar Metodo de Pago" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <br/>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" class="form-select">                     
                    <asp:ListItem>Tarjeta</asp:ListItem> 
                    <asp:ListItem>Efectivo</asp:ListItem> 
                    <asp:ListItem>Web(paypal)</asp:ListItem>
                </asp:DropDownList>
                <br/><br/>
                
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />   
                <asp:Button ID="Button1" class="btn btn-warning marging" runat="server" OnClick="Button_Click" Text="Editar" />
                <br/><br/>
                <asp:Label ID="Label15" runat="server" Text=""></asp:Label>  
                <br/>                
            </div>

            <div class="col-lg-6">
                <br/>
                <h3>Clientes</h3>
                <br/>  
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Vertical" ShowFooter="True" Width="1330px">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                        <asp:BoundField DataField="cedula" HeaderText="cedula" SortExpression="cedula" />
                        <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                        <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                        <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                        <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                        <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                        <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
                        <asp:BoundField DataField="sexo" HeaderText="sexo" SortExpression="sexo" />
                        <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                        <asp:BoundField DataField="forma_pago" HeaderText="forma_pago" SortExpression="forma_pago" />
                    </Columns>
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <RowStyle BorderColor="Black" BorderStyle="None" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Cliente] WHERE [Id] = @original_Id AND (([cedula] = @original_cedula) OR ([cedula] IS NULL AND @original_cedula IS NULL)) AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([apellido] = @original_apellido) OR ([apellido] IS NULL AND @original_apellido IS NULL)) AND (([direccion] = @original_direccion) OR ([direccion] IS NULL AND @original_direccion IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([correo] = @original_correo) OR ([correo] IS NULL AND @original_correo IS NULL)) AND (([edad] = @original_edad) OR ([edad] IS NULL AND @original_edad IS NULL)) AND (([sexo] = @original_sexo) OR ([sexo] IS NULL AND @original_sexo IS NULL)) AND (([fecha] = @original_fecha) OR ([fecha] IS NULL AND @original_fecha IS NULL)) AND (([forma_pago] = @original_forma_pago) OR ([forma_pago] IS NULL AND @original_forma_pago IS NULL))" InsertCommand="INSERT INTO [Cliente] ([cedula], [nombre], [apellido], [direccion], [telefono], [correo], [edad], [sexo], [fecha], [forma_pago]) VALUES (@cedula, @nombre, @apellido, @direccion, @telefono, @correo, @edad, @sexo, @fecha, @forma_pago)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cliente] ORDER BY [Id]" UpdateCommand="UPDATE [Cliente] SET [cedula] = @cedula, [nombre] = @nombre, [apellido] = @apellido, [direccion] = @direccion, [telefono] = @telefono, [correo] = @correo, [edad] = @edad, [sexo] = @sexo, [fecha] = @fecha, [forma_pago] = @forma_pago WHERE [Id] = @original_Id AND (([cedula] = @original_cedula) OR ([cedula] IS NULL AND @original_cedula IS NULL)) AND (([nombre] = @original_nombre) OR ([nombre] IS NULL AND @original_nombre IS NULL)) AND (([apellido] = @original_apellido) OR ([apellido] IS NULL AND @original_apellido IS NULL)) AND (([direccion] = @original_direccion) OR ([direccion] IS NULL AND @original_direccion IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([correo] = @original_correo) OR ([correo] IS NULL AND @original_correo IS NULL)) AND (([edad] = @original_edad) OR ([edad] IS NULL AND @original_edad IS NULL)) AND (([sexo] = @original_sexo) OR ([sexo] IS NULL AND @original_sexo IS NULL)) AND (([fecha] = @original_fecha) OR ([fecha] IS NULL AND @original_fecha IS NULL)) AND (([forma_pago] = @original_forma_pago) OR ([forma_pago] IS NULL AND @original_forma_pago IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_cedula" Type="Int32" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_apellido" Type="String" />
                        <asp:Parameter Name="original_direccion" Type="String" />
                        <asp:Parameter Name="original_telefono" Type="String" />
                        <asp:Parameter Name="original_correo" Type="String" />
                        <asp:Parameter Name="original_edad" Type="Int32" />
                        <asp:Parameter Name="original_sexo" Type="String" />
                        <asp:Parameter Name="original_fecha" Type="DateTime" />
                        <asp:Parameter Name="original_forma_pago" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="cedula" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="direccion" Type="String" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="correo" Type="String" />
                        <asp:Parameter Name="edad" Type="Int32" />
                        <asp:Parameter Name="sexo" Type="String" />
                        <asp:Parameter Name="fecha" Type="DateTime" />
                        <asp:Parameter Name="forma_pago" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cedula" Type="Int32" />
                        <asp:Parameter Name="nombre" Type="String" />
                        <asp:Parameter Name="apellido" Type="String" />
                        <asp:Parameter Name="direccion" Type="String" />
                        <asp:Parameter Name="telefono" Type="String" />
                        <asp:Parameter Name="correo" Type="String" />
                        <asp:Parameter Name="edad" Type="Int32" />
                        <asp:Parameter Name="sexo" Type="String" />
                        <asp:Parameter Name="fecha" Type="DateTime" />
                        <asp:Parameter Name="forma_pago" Type="String" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_cedula" Type="Int32" />
                        <asp:Parameter Name="original_nombre" Type="String" />
                        <asp:Parameter Name="original_apellido" Type="String" />
                        <asp:Parameter Name="original_direccion" Type="String" />
                        <asp:Parameter Name="original_telefono" Type="String" />
                        <asp:Parameter Name="original_correo" Type="String" />
                        <asp:Parameter Name="original_edad" Type="Int32" />
                        <asp:Parameter Name="original_sexo" Type="String" />
                        <asp:Parameter Name="original_fecha" Type="DateTime" />
                        <asp:Parameter Name="original_forma_pago" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>

            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">regresar</asp:HyperLink>
            <br/><br/> 
        </div>
    </form>
</body>
</html>
