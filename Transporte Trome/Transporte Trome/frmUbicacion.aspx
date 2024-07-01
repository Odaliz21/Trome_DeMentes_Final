<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmUbicacion.aspx.cs" Inherits="Transporte_Trome.frmUbicacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Sección de mapa y texto -->
    <section class="shop_section layout_padding">
        <div class="container">
            <div class="d-flex justify-content-center">
                <h2 class="heading_style">
                    UBICACIÓN
                </h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="d-flex align-items-center h-100">
                        <div class="shop-detail">
                            <h5>
                                Trome Express Cargo EIRL Cusco
                            </h5>
                            <p>
                                Sede: Wánchaq, Cusco
                            </p>
                            <p>
                                Dirección: Av. República de Argentina, Mza. H Lote. 17b
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="shop_img-box">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31032.392657359665!2d-71.96290356523441!3d-13.532579399999971!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x916e7f2d272349d7%3A0x779887fd61e4e9b3!2sTrome%20Express%20Cargo%20EIRL%20Cusco!5e0!3m2!1ses!2spe!4v1712617262343!5m2!1ses!2spe" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>

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