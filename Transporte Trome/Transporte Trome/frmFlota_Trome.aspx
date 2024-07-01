


<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmFlota_Trome.aspx.cs" Inherits="Transporte_Trome.frmFlota_Trome" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Main content -->
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ul>

            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/furgon.png" alt="Slide 1" style="width:100%;">
                </div>
                <div class="carousel-item">
                    <img src="images/ii.jpg" alt="Slide 2" style="width:100%;">
                </div>
                <div class="carousel-item">
                    <img src="images/uuu.jpg" alt="Slide 3" style="width:100%;">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <div style="text-align: center;">
        <p>Empresa de transportes Trome Express Cargo</p>
        <p>Empresa de Carga Cusco - Lima</p>
        <p>Dirección: Av. República De Argentina Mza. H Lote. 17 B, Cusco 08200</p>
        <p>Teléfonos: 984 102 690 / 984 102 689</p>
        <p>Email: transportestrome@gmail.com</p>
        <!-- Aquí puedes colocar la imagen -->
        <img src="images/logo.jpg" alt="Logo Transporte Trome" style="max-width: 200px; height: auto; margin-top: 10px;" />
    </div>
</asp:Content>
