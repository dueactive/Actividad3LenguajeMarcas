<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!-- Nos situamos en el nodo raiz -->
	<xsl:template match="/">	
		<html>
		<head>
		<title>Edix</title>
		</head>
		<body>
			<h1 style="color:black"><xsl:value-of select="/ite/@nombre" /></h1>

			<hr/>

			<!--
				Centro
			-->
			Centro
			<xsl:value-of select="ite/empresa" /> - 
			<xsl:value-of select="ite/web"/> - 
			<xsl:value-of select="ite/telefono"/> 
			<hr/>

			<!-- Listamos los profesores-->
			Profesorado <br/>
			<xsl:for-each select="ite/profesores/profesor">
				<!-- Accedemos de manera relativa a los valores de dentro del detalle -->
				<xsl:value-of select="@id" /> - 
				<xsl:value-of select="nombre" /> 
				<br/>
			</xsl:for-each>
			<hr/>

			<!-- Director
			 -->
			 Director/a
			<xsl:value-of select="ite/director/@nombre" /> - <xsl:value-of select="ite/director/despacho" /> 
			<hr/>

			<!--
				Jefe de estudios
			-->
			Jefe/a de estudios
			<xsl:value-of select="ite/jefe_estudios/@nombre" /> - <xsl:value-of select="ite/jefe_estudios/despacho" /> 
			<hr/>

			<!-- 
				Grados
			-->
			<xsl:for-each select="/ite/ciclos/ciclo">
				<!-- 
					Recorremos los distintos ciclos
				-->
				*** Grado 
				<xsl:value-of select="./@grado" />
				<xsl:value-of select="." /> -  <xsl:value-of select="./decretoTitulo/@año" /> 
				<br/>
			</xsl:for-each>
			<hr/>

		
		</body>
		</html>
		
	</xsl:template>
</xsl:stylesheet>