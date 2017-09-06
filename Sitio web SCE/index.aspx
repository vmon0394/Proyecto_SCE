<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Sitio_web_SCE.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SCE</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/noscript.css"/>
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
                                
								<li><a href="#intro">Inicio</a></li>
								<li><a href="#work">Estado del arte</a></li>
								<li><a href="#about">Nosotros</a></li>
								<li><a href="#contact">Contactenos</a></li>
                                <li><a href="html5/login.aspx">Inicio de sesión</a></li>
							</ul>
						</nav>
					</header>

					<div id="main">

						<!-- Intro -->
							<article id="intro">
								<h2 class="major">Ergonómia ¿Que es?</h2>
								<span class="image main"><img src="images/ergonomia.png" alt="" /></span>
								<p>Se entiende a la Ergonomía como la ciencia del trabajo, que elimina las barreras que se oponen a un trabajo humano seguro, productivo y de calidad mediante el adecuado ajuste de productos, tareas y ambientes a la persona.</p>
                                <br/>
                                <h2 class="major">¿Para qué sirve?</h2>
								<span class="image main"><img src="images/ergonomia1.png" alt="" /></span>
								<p>Trata de ajustar las condiciones de trabajo a las características del trabajador,
                                la forma de actuar de la ergonomía consiste en identificar los riesgos ocasionados por las condiciones de trabajo y buscar soluciones para eliminarlos.</p>
                                <br/>
                                <h2 class="major">ARDUINO Y SENSORES</h2>
								<p>Arduino es una plataforma de prototipos electrónica de código abierto basada en hardware y software flexibles y fáciles de usar. Está pensado para artistas, diseñadores, como hobby y para cualquiera interesado en crear objetos o entornos interactivos.</p>
                                <p>Un Sensor, no es más que un dispositivo diseñado para recibir información de una magnitud del exterior y transformarla en otra magnitud, normalmente eléctrica, que seamos capaces de cuantificar y manipular. Normalmente estos dispositivos se encuentran realizados mediante la utilización de componentes pasivos (resistencias variables, PTC, NTC, LDR, entre otros... todos aquellos componentes que varían su magnitud en función de alguna variable), y la utilización de componentes activos.</p>
                                <br/>
                                <h2 class="major">Arduino MEGA</h2>
								<span class="image main"><img src="images/arduinomega.jpg" alt="" /></span>
								<p>El Arduino Mega es probablemente el microcontrolador más capaz de la familia Arduino. Posee 54 pines digitales que funcionan como entrada/salida; 16 entradas análogas, un cristal oscilador de 16 MHz, una conexión USB, un boton de reset y una entrada para la alimentación de la placa.</p>
                                <br/>
                                <h2 class="major">Arduino UNO</h2>
								<span class="image main"><img src="images/arduinouno.jpg" alt="" /></span>
								<p>Arduino Uno es una placa electronica basada en el ATmega328P ( ficha técnica ). Cuenta con 14 pines digitales de entrada / salida (de los cuales 6 se podrán utilizar como salidas PWM), 6 entradas analógicas, un cristal de cuarzo de 16 MHz, una conexión USB, un conector de alimentación, una cabecera ICSP y un botón de reinicio. Contiene todo lo necesario para apoyar el microcontrolador; basta con conectarlo a un ordenador con un cable USB o la corriente con un adaptador de CA a CC o una batería para empezar.</p>s
                                <br/>
                                <h2 class="major">Sensor de Fuerza MF01</h2>
								<span class="image main"><img src="images/sensormmf01.jpg" alt="" /></span>
								<p>Estos sensores son de bajo costo, funciona con cualquier tarjeta de desarrollo o microcontrolador con etapa de ADC. Tiene una extensión que termina en dos puntas que se pueden soldar cómodamente. Es muy sencillo de utilizar y puede tener multitud de aplicaciones en muchos proyectos electrónicos. Sirve para la mayoría de las aplicaciones sensibles al tacto. Puede utilizar cualquier fuente de alimentación ya que utiliza menos de 1 mA de corriente.</p>
                                <br/>
                                <h2 class="major">Sensores FSR de fuerza</h2>
								<span class="image main"><img src="images/arduinoFRS1.png" alt="" /></span>
								<p>Estos sensores permiten detectar la presión física, pulsación y peso. Son fácil de usar y de bajo costo. Esta imagen del FSR, específicamente el modelo interlink 402. La parte gris redonda es  sensible al tacto. El FRS está  hecho de 2 capas separadas. Cuánto más se presiona, la parte redonda de tu sensor se activa, toca el semiconductor y eso hace que la resistencia disminuya.</p>
                                <br/>
                                </article>
						<!-- Work -->
							<article id="work">
								<h2 class="major">Estado del arte</h2>
								<%--<span class="image main"><img src="Fotos/IMG-20160929-WA0012.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0013.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0014.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0015.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0017.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0018.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0019.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0020.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0021.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0022.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0024.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0025.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0026.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0028.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0029.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0030.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0031.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0032.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0033.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0034.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0036.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0037.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0038.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0039.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0040.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0041.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0052.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0054.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0055.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0057.jpg"/></span>
                                <span class="image main"><img src="Fotos/IMG-20160929-WA0061.jpg"/></span>--%>
							</article>

						<!-- About -->
							<article id="about">
								<h2 class="major">ACERCA...</h2>
                                <br/>
								<h3 class="major">Misión.</h3>
								<p>Mision</p>
                                <br/>
                                <h3 class="major">Visión.</h3>
								<p>Vision</p>
							</article>

                        <!-- Contact -->
                        <article id="contact">
                            <h2 class="major">Contáctenos</h2>
                            <form method="post" action="#" runat="server">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="">
                                            <label for="name">Nombre</label>
                                            <asp:TextBox ID="txtNombre" runat="server" Style="display: inline-block;"></asp:TextBox>
                                        </div>
                                        <br />
                                        <div class="">

                                            <label for="email">Correo</label>
                                            <asp:TextBox ID="txtCorreo" runat="server" Style="display: inline-block;"></asp:TextBox>
                                        </div>
                                        <br />
                                    </div>
                                    <div class="col-md-2">
                                        <div class="">
                                            <label for="message">Mensaje</label>
                                            <asp:TextBox ID="txtMensaje" runat="server" TextMode="MultiLine" Style="display: inline-block;"></asp:TextBox>
                                        </div>
                                        <br />
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="">

                                                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" class="special" />

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </form>
                            <ul class="icons">
                                <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                                <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                                <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                            </ul>
                        </article>
                    </div>
        <footer id="footer">
            <p>&copy Derechos reservados</p>
        </footer>

    </div>

    <div id="bg"></div>

    <!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>
