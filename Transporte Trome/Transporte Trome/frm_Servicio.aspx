<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frm_Servicio.aspx.cs" Inherits="Transporte_Trome.frm_Servicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Catálogo de Servicios</h2>
        <asp:Repeater ID="rptServicios" runat="server" OnItemCommand="rptServicios_ItemCommand">
            <ItemTemplate>
                <div style="border: 1px solid #ccc; padding: 10px; margin-bottom: 10px;">
                    <asp:Image ID="imgServicio" runat="server" ImageUrl='<%# Eval("ImagenUrl") %>' 
                               AlternateText='<%# Eval("Descripcion") %>' Width="50px" Height="50px" />
                    <h3><%# Eval("Descripcion") %></h3>
                    <p>Tarifa Base: <%# Eval("TarifaBase", "{0:C}") %></p>
                    <asp:Button runat="server" Text="Agregar al Carrito" CommandName="AgregarCarrito" CommandArgument='<%# Eval("IdServicio") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <asp:Button runat="server" Text="Ver Carrito de Compras" OnClick="VerCarrito_Click" />
    </div>
</asp:Content>
