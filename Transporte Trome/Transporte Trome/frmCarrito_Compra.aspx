<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCarrito_Compra.aspx.cs" Inherits="Transporte_Trome.frmCarrito_Compra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Carrito de Compras</h2>
 <asp:GridView ID="gvCarrito" runat="server" AutoGenerateColumns="False" OnRowCommand="gvCarrito_RowCommand" DataKeyNames="IdCarrito,IdServicio,TarifaBase">
            <Columns>
                     
                <asp:BoundField DataField="IdCarrito" HeaderText="ID Carrito" />
                <asp:BoundField DataField="IdServicio" HeaderText="ID Servicio" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                <asp:TemplateField HeaderText="Cantidad">
                    <ItemTemplate>
                        <asp:TextBox runat="server" ID="txtCantidad" Text='<%# Bind("Cantidad") %>' AutoPostBack="True" OnTextChanged="txtCantidad_TextChanged" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="TarifaBase" HeaderText="Tarifa Base" DataFormatString="{0:C}" />
                <asp:TemplateField HeaderText="Subtotal">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="lblSubtotal" Text='<%# Eval("Subtotal", "{0:C}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                        <asp:Button runat="server" Text="Eliminar" CommandName="Eliminar" CommandArgument='<%# Eval("IdCarrito") %>' CssClass="btnEliminar" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <br />
        <asp:Button runat="server" Text="Pagar" OnClick="Pagar_Click" CssClass="btnPagar" style="height: 26px" />
        <asp:Button runat="server" Text="Volver a Servicios" CssClass="btnVolver" OnClick="Regresar_Servicios_Click" />
        <br />
        <h2>Total del Carrito: <asp:Label runat="server" ID="lblTotalCarrito" Text="0.00" /></h2>
        <h2>Seguimiento de Servicios adquiridos</h2>

        <asp:GridView ID="gvServiciosAdquiridos" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="IdServicio" HeaderText="ID Servicio" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" />
                 <asp:BoundField DataField="EstadoEnvio" HeaderText="Estado Envio" />
            </Columns>
        </asp:GridView>
    </div>
     <!-- Pie de página fuera del Content principal -->
<footer>
    <div style="text-align: center;">
        <p>Empresa de transportes Trome Express Cargo</p>
        <p>Empresa de Carga Cusco - Lima</p>
        <p>Dirección: Av. República De Argentina Mza. H Lote. 17 B, Cusco 08200</p>
        <p>Teléfonos: 984 102 690 / 984 102 689</p>
        <p>Email: transportestrome@gmail.com</p>
        <!-- Aquí puedes colocar la imagen -->
        <img src="images/logo.jpg" alt="Logo Transporte Trome" style="max-width: 200px; height: auto; margin-top: 10px;" />
    </div>
</footer>
</asp:Content>
