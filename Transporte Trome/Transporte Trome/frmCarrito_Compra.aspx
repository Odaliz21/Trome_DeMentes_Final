<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmCarrito_Compra.aspx.cs" Inherits="Transporte_Trome.frmCarrito_Compra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
       

        h2 {
            color:#000000;
            font-family:Times New Roman, Times, serif;
            color: #000000;

        }

        .btnEliminar, .btnPagar, .btnVolver {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }

        .btnEliminar:hover, .btnPagar:hover, .btnVolver:hover {
            background-color: #0056b3;
        }

        .grid-view {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        .grid-view th, .grid-view td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        .grid-view th {
            background-color: #ffd800;
            color: white;
            text-align: left;
        }

        .grid-view tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .grid-view tr:hover {
            background-color: #ddd;
        }

        footer {
            text-align: center;
       
        }

        footer p {
            margin: 5px 0;
        }

        footer img {
            margin-top: 10px;
        }
    </style>

    <div class="container">
        <h2>Carrito de Compras</h2>
        <asp:GridView ID="gvCarrito" runat="server" AutoGenerateColumns="False" OnRowCommand="gvCarrito_RowCommand" DataKeyNames="IdCarrito,IdServicio,TarifaBase" CssClass="grid-view">
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
        <asp:Button runat="server" Text="Pagar" OnClick="Pagar_Click" CssClass="btnPagar" />
        <asp:Button runat="server" Text="Volver a Servicios" CssClass="btnVolver" OnClick="Regresar_Servicios_Click" />
        <br />
        <h2>Total del Carrito: <asp:Label runat="server" ID="lblTotalCarrito" Text="0.00" /></h2>
        <h2>Seguimiento de Servicios adquiridos</h2>

        <asp:GridView ID="gvServiciosAdquiridos" runat="server" AutoGenerateColumns="False" CssClass="grid-view">
            <Columns>
                <asp:BoundField DataField="IdServicio" HeaderText="ID Servicio" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" />
                <asp:BoundField DataField="EstadoEnvio" HeaderText="Estado Envio" />
            </Columns>
        </asp:GridView>
    </div>

    <footer>
        <div>
            <p>Empresa de transportes Trome Express Cargo</p>
            <p>Empresa de Carga Cusco - Lima</p>
            <p>Dirección: Av. República De Argentina Mza. H Lote. 17 B, Cusco 08200</p>
            <p>Teléfonos: 984 102 690 / 984 102 689</p>
            <p>Email: transportestrome@gmail.com</p>
            <img src="images/logo.jpg" alt="Logo Transporte Trome" style="max-width: 200px; height: auto;" />
        </div>
    </footer>
</asp:Content>


