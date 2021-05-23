<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- 
		Para usar este XSL debemos de poner la siguiente sentencia
		en el XML
		<?xml-stylesheet type="text/xsl" href="empresa_xslt.xsl"?>
 	-->
	<xsl:template match="/">
		<!-- Dentro podemos escribir lo que queramos, como quiero generar un HTML, escribo el lenguaje
		HTML -->
		<html>
			<head>
				<link rel="stylesheet" href="css/style.css" />
				<title>Empresa-Edix</title>
			<!-- Tambien podriamos meter un CSS al html resultante, es decir, renderizarlo
			con un XSL y añadirle estilos CSS (colores, formas, responsive...) -->
			<!-- <link rel="stylesheet" href="css/estilos.css" /> -->
			</head>
			<body>
				<main>
					<header>
						<div class="title_page">
							<h1>
							<a>
								<xsl:attribute name="href">
								<xsl:value-of select="ite/@web"/>
								</xsl:attribute>
								<xsl:value-of select="ite/@nombre"/>
							</a>							
							</h1>
						</div>					
					</header>
						<div class="tablas">
							<h2>Profesores en Edix</h2>
								<div class="adicional">
								<!--Creamos la primera tabla con los datos de los profesores-->
									<table class="datos">
										<tr>
										<xsl:for-each select="ite/profesores/profesor">	
											<!-- Con arroba (@) accedemos a atributos -->											
												<td>(<xsl:value-of select="id"/>)</td>
												<td><xsl:value-of select="nombre"/></td>
												<xsl:if test="id = 1">
													<td>
														<a href="https://github.com/fdepablo?tab=repositories">
														<img id="imgusuario" src="images/hombre.png" alt="profes" title="Profesorado Edix" />
														</a>
													</td>												
												</xsl:if>
												<xsl:if test="id = 2">
													<td>
														<a href="https://github.com/rauledix?tab=repositories">
														<img id="imgusuario" src="images/hombre.png" alt="profes" title="Profesorado Edix" />
														</a>
													</td>
												</xsl:if>
												<xsl:if test="id = 3">
													<td><img id="imgusuario" src="images/mujer.png" alt="profes" title="Profesorado Edix" /></td>
												</xsl:if>
												<xsl:if test="id = 4">
													<td><img id="imgusuario" src="images/hombre.png" alt="profes" title="Profesorado Edix" /></td>
												</xsl:if>																								
											
										</xsl:for-each> <!-- Fin de for each de profesor-->
										</tr>
									</table>
								</div>
						</div>
						<div class="tablas2">
							<h2>Grados impartidos en Edix</h2>
							<div class="adicional">
								<!--Creamos la segunda tabla con los datos de los ciclos impartidos-->
								<table class="datos">
									<tr>
										<th>Grado</th>
										<th>Nivel</th>
										<th>Año</th>
									</tr>
									<xsl:for-each select="ite/ciclos/ciclo">
										<tr>
										<!-- Con arroba (@) accedemos a atributos -->
											<td><xsl:value-of select="nombre"/></td>
											<td><xsl:value-of select="grado"/></td>
											<td><xsl:value-of select="decretoTitulo/@año"/></td>	
										</tr>
									</xsl:for-each> <!-- Fin de for each de ciclo-->
								</table>
							</div>
						</div>

						<div class="listas">
							<h2>Grados más demandados</h2>
							<div class="adicional">
							<ol class="datos">
								<xsl:for-each select="ite/ciclos/ciclo">
									<li><xsl:value-of select="decretoTitulo/@año"/>-<xsl:value-of select="nombre"/></li>
								</xsl:for-each>
							</ol>
							</div>
						</div>
					
						<form action="" method="post">
							<div class="contacto">
								<h2>Formulario de Contacto</h2>
								<div class="datos_1">
									<div class="insert_datos_apellidos">
										<label for="apellidos" id="apellidos">Apellidos:</label>
										<input type="text" id="apellidos"/>
									</div>
									<div class="insert_datos_nombre">
										<label for="nombre">Nombre:</label>
										<input type="text" id="nombre" />
									</div>
									<div class="insert_datos_dni">
									<label for="dni">DNI:</label>
									<input type="dni" id="dni" />
									</div>
								</div>
								<div class="datos_2">
									<div class="insert_datos_email">
										<label for="email">Email:</label>
										<input type="email" id="email" placeholder="example@example.com" />
									</div>
									<div class="insert_datos_telefono">
										<label for="telefono">Teléfono:</label>
										<input type="numero" id="telefono" />
									</div>
									<div class="insert_datos_fecha_nacimiento">
									<label for="fecha_nacimiento">Fecha nacimiento:</label>
									<input type="fecha" id="fecha_nacimiento" placeholder="dd/mm/aaaa" />
									</div>
								</div>
								<div class="datos_3">
									<div class="insert_datos_domicilio">
										<label for="domicilio">Domicilio :</label>
										<input type="text" id="domicilio" placeholder="Calle, plaza y número" />
									</div>
									<div class="insert_datos_codigo_postal">
										<label for="codigo_postal">Código Postal:</label>
										<input type="numero" id="codigo_postal" />
									</div>
								</div>
								<div class="datos_4">
									<div class="insert_datos_localidad">
										<label for="localidad">Localidad:</label>
										<input type="text" id="localidad" />
									</div>
									<div class="insert_datos_provincia_domicilio">
										<label for="provincia_domicilio">Provincia:</label>
										<select name="provincia_domicilio" id="provincia_domicilio" >
											<option value="alava">Álava</option>
											<option value="albacete">Albacete</option>
											<option value="alicante">Alicante</option>
											<option value="almeria">Almería</option>
											<option value="asturias">Asturias</option>
											<option value="avila">Ávila</option>
											<option value="badajoz">Badajoz</option>
											<option value="barcelona">Barcelona</option>
											<option value="burgos">Burgos</option>
											<option value="caceres">Cáceres</option>
											<option value="cadiz">Cádiz</option>
											<option value="cantabria">Cantabria</option>
											<option value="castellon">Castellón</option>
											<option value="ceuta">Ceuta</option>
											<option value="ciudad_real">Ciudad Real</option>
											<option value="cordoba">Córdoba</option>
											<option value="cuenca">Cuenca</option>
											<option value="gerona">Gerona</option>
											<option value="granada">Granada</option>
											<option value="guadalajara">Guadalajara</option>
											<option value="guipuzcoa">Guipúzcoa</option>
											<option value="huelva">Huelva</option>
											<option value="huesca">Huesca</option>
											<option value="islas_baleares">Islas Baleares</option>
											<option value="jaen">Jaén</option>
											<option value="la_coruna">La Coruña</option>
											<option value="la_rioja">La Rioja</option>
											<option value="las_palmas">Las Palmas</option>
											<option value="leon">León</option>
											<option value="lerida">Lérida</option>
											<option value="lugo">Lugo</option>
											<option value="madrid">Madrid</option>
											<option value="malaga">Málaga</option>
											<option value="melilla">Melilla</option>
											<option value="murcia">Murcia</option>
											<option value="navarra">Navarra</option>
											<option value="orense">Orense</option>
											<option value="palencia">Palencia</option>
											<option value="pontevedra">Pontevedra</option>
											<option value="salamanca">Salamanca</option>
											<option value="santa_cruz_trenerife">Santa Cruz de Tenerife</option>
											<option value="segovia">Segovia</option>
											<option value="sevilla">Sevilla</option>
											<option value="soria">Soria</option>
											<option value="tarragona">Tarragona</option>
											<option value="teruel">Teruel</option>
											<option value="toledo">Toledo</option>
											<option value="valencia">Valencia</option>
											<option value="valladolid">Valladolid</option>
											<option value="vizcaya">Vizcaya</option>
											<option value="zamora">Zamora</option>
											<option value="zaragoza">Zaragoza</option>
										</select>
									</div>
								</div>
								<div class="datos_5">
									<label for="selectCiclo">Ciclo que desea cursar: </label>
									<select name="selectCiclo">
										<xsl:for-each select="ite/ciclos/ciclo">
											<option>
												<!--Creamos un atributo value para almacenar el id seleccionado-->
												<xsl:attribute name="value">
													<xsl:value-of select="@id"/>
												</xsl:attribute>
												<xsl:value-of select="@id"/>-<xsl:value-of select="nombre"/>
											</option>
										</xsl:for-each>
									</select>
								</div>
							</div>
						</form>

						<div class="masinformacion">
						<!--Para mas informacion-->
								<h2>+ Información</h2>
								<div class="adicional">
									<table class="datos" >
										<tr>
											<td class="celda" colspan="2">Centro de estudios</td>
										</tr>
							
										<tr>			
											<td><xsl:value-of select="ite/empresa"/></td>									
											<td>
												<a>
													<xsl:attribute name="href">
													tel:<xsl:value-of select="ite/telefono"/>
													</xsl:attribute>
													<xsl:value-of select="ite/telefono"/>
												</a>
											</td>
										</tr>
										<tr>
											<td class="celda" colspan="2">Director</td>
										</tr>
										<tr>			
											<td><xsl:value-of select="ite/director/nombre"/></td>
											<td><xsl:value-of select="ite/director/despacho"/></td>
										</tr>
										<tr>
											<td class="celda" colspan="2">Jefe de estudios</td>
										</tr>
										<tr>			
											<td><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
											<td><xsl:value-of select="ite/jefe_estudios/despacho"/></td>
										</tr>
									</table>
							</div>
						</div>
					
				</main>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>