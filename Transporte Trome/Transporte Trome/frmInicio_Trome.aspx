<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmInicio_Trome.aspx.cs" Inherits="Transporte_Trome.frmInicio_Trome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Contenido principal -->
    <div class="container-fluid px-0">
        <div class="row">
            <div class="col-md-12">
                <h2 style="text-align: left; font-size: 50px;">Sobre nosotros</h2>
                <p>Empresa de Carga Cusco - Lima</p>
            </div>
        </div>

        <div class="row">
            <div class="col-md-6">
                <h3 style="text-align: left; font-size: 50px;">Empresa y transporte</h3>
                <p style="text-align: justify;">Trome Express Cargo es una Empresa Individual de Responsabilidad Limitada con el RUC 20527866732, con sede en Wanchaq, Cusco, Perú. Fundada el 1 de mayo de 2007, se dedica al transporte de carga por carretera, con 5 empleados y operaciones de facturación y contabilidad manuales. Su dirección legal está en Av. República de Argentina, Mza. H Lote. 17b, y está registrada como empresa activa. Destaca por estar empadronada en el Registro Nacional de Proveedores, lo que le permite contratar con el Estado Peruano, consolidando así su posición en el mercado regional.</p>
            </div>
            <div class="col-md-6 text-center">
                <img src="images/logo.jpg" alt="Logo Transporte Trome" class="img-fluid" style="max-width: 80%; height: auto; margin-top: 20px;" />
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <h3 style="text-align: center; font-size: 50px;">Nuestros servicios</h3>
                <div class="servicio" >
                    <img src="images/cargo.jpg" alt="Servicio de CARGO" class="img-servicio" width="763" height="476" />

                    <h4 style="text-align: center; font-size: 50px;">CARGO</h4>
                    <p style="text-align: justify;">La carga en las empresas de transporte terrestre se refiere a los bienes, productos o mercancías que son transportados por carretera o ferrocarril de un lugar a otro. Esta carga puede variar en tamaño, peso y naturaleza, y es responsabilidad de la empresa de transporte asegurar su entrega segura y oportuna al destino especificado por el cliente. La gestión eficiente de la carga es crucial para el éxito operativo y económico de estas empresas</p>
                    
                </div>
                
                <div class="servicio">
                    <img src="images/logistica.jpg" alt="Servicio de LOGÍSTICA" class="img-servicio" width="763" height="476" />
                    <h4 style="text-align: center; font-size: 50px;">SERVICIO DE LOGÍSTICA</h4>
                    <p>La logística es el proceso de planificar, ejecutar y controlar el flujo eficiente de bienes y servicios desde su origen hasta su destino, para satisfacer las necesidades del cliente.</p>
                    
                </div>
                
                <div class="servicio">
                    <img src="images/almacen.jpeg" alt="Servicio de ALMACÉN" class="img-servicio" width="763" height="476" />
                    <h4 style="text-align: center; font-size: 50px;">ALMACÉN</h4>
                    <p style="text-align: justify;">El almacenamiento es la actividad de guardar y gestionar productos en un lugar específico hasta que sean necesarios para su distribución o venta. Implica la recepción, ubicación, organización y control de inventario dentro de un espacio designado, con el objetivo de maximizar la eficiencia y facilitar el acceso a los productos cuando sea necesario.</p>
                    
                </div>
            </div>
        </div>
    </div>

    <!-- Pie de página dentro del Content principal -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <p>Empresa de transportes Trome Express Cargo</p>
                    <p>Empresa de Carga Cusco - Lima</p>
                    <p>Dirección: Av. República De Argentina Mza. H Lote. 17 B, Cusco 08200</p>
                    <p>Teléfonos: 984 102 690 / 984 102 689</p>
                    <p>Email: transportestrome@gmail.com</p>
                    <!-- Aquí puedes colocar la imagen -->
                    <img src="images/logo.jpg" alt="Logo Transporte Trome" style="max-width: 200px; height: auto; margin-top: 10px;" />
                </div>
            </div>
        </div>
    </footer>

    <!-- CSS para dar estilo -->
    <style>
        .container-fluid {
            padding: 20px;
            color: #333;
        }
        h2, h3, h4 {
            color: #333;
        }
        p {
            color: #666;
        }
        footer {
            background-color: #f8f8f8;
            padding: 20px 0;
            text-align: center;
            margin-top: 20px; /* Añadir un margen top adicional para separar del contenido principal */
        }
        footer p {
            margin-bottom: 5px;
        }
        .servicio {
            margin-bottom: 40px;
            text-align: center;
        }
        .img-servicio {
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
