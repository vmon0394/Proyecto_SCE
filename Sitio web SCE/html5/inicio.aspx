<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="Sitio_web_SCE.html5.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>SCE</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="../assets/css/main.css" />
    <link rel="stylesheet" href="../assets/css/noscript.css" />
</head>
<body>
    <div id="wrapper">

        <header id="header">
            <div class="logo">
                <span class="icon fa fa-lock"></span>
            </div>
            <div class="content">
                <div class="inner">
                    <h1>Sistema de Control Ergonómico</h1>
                </div>
            </div>
            <nav>
                <ul>
                    <li><a href="#usuario">Cuenta</a></li>
                    <li><a href="#sillas">Sillas</a></li>
                    <li><a href="#arduino">Arduino</a></li>
                    <li><a href="#sensores">Sensores</a></li>
                    <li><a href="../index.aspx">Cerrar sesión</a></li>
                </ul>
            </nav>
        </header>

        <form method="post" runat="server">
            <div id="main">
                <article id="usuario" runat="server">
                    <div runat="server" id="labels">
                        <h2 class="major">Administrador de usuarios</h2>
                        <div id="oculto" runat="server">
                                <div class="field half">
                                    <label for="name">Codigo de cuenta</label>
                                    <asp:TextBox ID="txtCodigoC" runat="server" AutoComplete="off"></asp:TextBox>
                                </div>
                                <div class="field half">
                                    <label for="name">Nombre</label>
                                    <asp:TextBox ID="txtNombreC" runat="server" AutoComplete="off"></asp:TextBox>
                                </div>
                                <div class="field half">
                                    <label for="name">Apellido</label>
                                    <asp:TextBox ID="txtApellidoC" runat="server" AutoComplete="off"></asp:TextBox>
                                </div>
                                <div class="field half">
                                    <label for="name">Tipo de documento</label>
                                    <asp:DropDownList ID="ddlTipo_documento" runat="server" AutoComplete="off">
                                        <asp:ListItem Value="0" Text="Seleccionar"></asp:ListItem>
                                        <asp:ListItem Value="T.I" Text="T.I"></asp:ListItem>
                                        <asp:ListItem Value="C.C" Text="C.C"></asp:ListItem>
                                        <asp:ListItem Value="C.E" Text="C.E"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            <div class="field half">
                                <label for="name">Numero de documento</label>
                                <asp:TextBox ID="txtNumero_documentoC" runat="server" AutoComplete="off"></asp:TextBox>
                            </div>
                            <div class="field half">
                                <label for="name">Edad</label>
                                <asp:TextBox ID="txtEdadC" runat="server" AutoComplete="off"></asp:TextBox>
                            </div>
                            <div class="field half">
                                <label for="name">Sexo</label>
                                <asp:DropDownList ID="ddlSexoC" runat="server" AutoComplete="off">
                                    <asp:ListItem Value="0" Text="Seleccionar"></asp:ListItem>
                                    <asp:ListItem Value="M" Text="M"></asp:ListItem>
                                    <asp:ListItem Value="F" Text="F"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="field half">
                                <label for="name">Telefono</label>
                                <asp:TextBox ID="txtTelefonoC" runat="server" AutoComplete="off"></asp:TextBox>
                            </div>
                            <div class="field half">
                                <label for="email">Correo</label>
                                <asp:TextBox ID="txtCorreoC" runat="server" TextMode="Email" AutoComplete="off"></asp:TextBox>
                            </div>
                            <div class="field half">
                                <label for="name">Nombre de usuario</label>
                                <asp:TextBox ID="txtUsuarioC" runat="server" AutoComplete="off"></asp:TextBox>
                            </div>
                            <div class="field half">
                                <label for="name">Contraseña</label>
                                <asp:TextBox ID="txtContraseñaC" runat="server" TextMode="Password" AutoComplete="off"></asp:TextBox>
                            </div>
                            <div class="field half">
                                <label for="name">Rol</label>
                                <asp:DropDownList ID="ddlRol" runat="server" AutoComplete="off">
                                    <asp:ListItem Value="0" Text="Seleccionar"></asp:ListItem>
                                    <asp:ListItem Value="1" Text="Aprendiz"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Profesor"></asp:ListItem>
                                    <asp:ListItem Value="3" Text="Administrador"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <ul class="actions">
                                <li>
                                    <asp:Button UseSubmitBehavior="true" ID="btnGuardarC" runat="server" Text="Guardar" class="special" OnClick="btnGuardarC_Click" /></li>
                                <li>
                                    <asp:Button ID="btnModificarC" runat="server" Text="Modificar" class="special" OnClick="btnModificarC_Click" /></li>
                                <li>
                                    <asp:Button ID="btnListarC" runat="server" Text="Listar" class="special" OnClick="btnListarC_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="btnEliminarC" Text="Eliminar" runat="server" class="special" OnClick="btnEliminarC_Click" />
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div>
                        <asp:GridView ID="gvUsuario" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="Nombre_us" HeaderText="Nombre" />
                                <asp:BoundField DataField="Apellido_us" HeaderText="Apellido" />
                                <asp:BoundField DataField="Tipo_Documento_us" HeaderText="Tipo Documento" />
                                <asp:BoundField DataField="Numero_Documento_us" HeaderText="Numero Documento" />
                                <asp:BoundField DataField="Correo_us" HeaderText="Correo" />
                            </Columns>
                        </asp:GridView>
                        <asp:Button Visible="false" ID="btnVolver" Text="Volver" class="special" OnClick="btnVolver_Click" runat="server" />
                    </div>
                </article>


                <article id="sillas">
                    <h2 class="major">Administrador de sillas</h2>
                    <div class="field">
                        <label for="name">Codigo de silla</label>
                        <asp:TextBox ID="txtCodigoSi" runat="server"></asp:TextBox>
                    </div>
                    <div class="field">
                        <label for="name">Nombre</label>
                        <asp:TextBox ID="txtNombreSi" runat="server"></asp:TextBox>
                    </div>
                    <div class="field">
                        <label for="name">Modelo</label>
                        <asp:TextBox ID="txtModeloSi" runat="server"></asp:TextBox>
                    </div>
                    <div class="field">
                        <label for="name">Tamaño</label>
                        <asp:TextBox ID="txtTamañoSi" runat="server"></asp:TextBox>
                    </div>
                    <div class="field">
                        <label for="message">Descripción</label>
                        <asp:TextBox ID="txtDescripcionSi" runat="server"></asp:TextBox>
                        <!--<textarea name="message" id="message" rows="4"></textarea>-->
                    </div>
                    <ul class="actions">
                        <li>
                            <asp:Button ID="btnGuardarSi" runat="server" Text="Guardar" class="special" /></li>
                        <li>
                            <asp:Button ID="btnModificarSi" runat="server" Text="Modificar" class="special" /></li>
                        <li>
                            <asp:Button ID="btnListarSi" runat="server" Text="Listar" class="special" /></li>
                    </ul>
                </article>

                <article id="arduino">
                    <h2 class="major">Administrador de Arduinos</h2>
                    <div class="field">
                        <label for="name">Codigo de arduino</label>
                        <asp:TextBox ID="txtCodigoA" runat="server"></asp:TextBox>
                    </div>
                    <div class="field">
                        <label for="name">Nombre</label>
                        <asp:TextBox ID="txtNombreA" runat="server"></asp:TextBox>
                    </div>
                    <div class="field">
                        <label for="name">Tipo de arduino</label>
                        <asp:TextBox ID="txtTipoA" runat="server"></asp:TextBox>
                    </div>
                    <div class="field">
                        <label for="name">Modelo del arduino</label>
                        <asp:TextBox ID="txtModeloA" runat="server"></asp:TextBox>
                    </div>
                    <ul class="actions">
                        <li>
                            <asp:Button ID="btnGuardarA" runat="server" Text="Guardar" class="special" /></li>
                        <li>
                            <asp:Button ID="btnModificarA" runat="server" Text="Modificar" class="special" /></li>
                        <li>
                            <asp:Button ID="btnListarrA" runat="server" Text="Listar" class="special" /></li>
                    </ul>
                </article>

                <article id="sensores">
                    <h2 class="major">Administrador de Sensores</h2>
                    <div runat="server" id="ocultarSen">
                        <div class="field">
                            <label for="name">Codigo de sensor</label>
                            <asp:TextBox ID="txtCodigoSe" runat="server" AutoComplete="off"></asp:TextBox>
                        </div>
                        <div class="field">
                            <label for="name">Magnitud</label>
                            <asp:TextBox ID="txtMagnitudSe" runat="server" AutoComplete="off"></asp:TextBox>
                        </div>
                        <div class="field">
                            <label for="name">Caracteristicas</label>
                            <asp:TextBox ID="txtCaracteristicaSe" runat="server" AutoComplete="off"></asp:TextBox>
                        </div>
                        <ul class="actions">
                            <li>
                                <asp:Button ID="btnGuardarSe" runat="server" Text="Guardar" class="special" OnClick="btnGuardarSe_Click" /></li>
                            <li>
                                <asp:Button ID="btnModificarSe" runat="server" Text="Modificar" class="special" OnClick="btnModificarSe_Click" /></li>
                            <li>
                                <asp:Button ID="btnListarSe" runat="server" Text="Listar" class="special" OnClick="btnListarSe_Click" /></li>
                        </ul>
                    </div>
                    <div>
                        <asp:GridView ID="gvSensor" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:BoundField DataField="Id_sen" HeaderText="Id_sen" />
                                <asp:BoundField DataField="Magnitud_sen" HeaderText="Magnitud_sen" />
                                <asp:BoundField DataField="Caracteristica_sen" HeaderText="Caracteristica_sen" />
                            </Columns>
                        </asp:GridView>
                        <asp:Button Visible="false" ID="btnVolverSen" Text="Volver" class="special" OnClick="btnVolverSen_Click" runat="server" />
                    </div>
                </article>

            </div>
        </form>

        <footer id="footer">
            <p>&copy Derechos reservados SCE</p>
        </footer>

    </div>

    <div id="bg"></div>

    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/skel.min.js"></script>
    <script src="../assets/js/util.js"></script>
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/Validaciones.js"></script>
</body>
</html>
