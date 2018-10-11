<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body bgcolor="#BCC7C7">
<xsl:for-each select="NewDataSet/Table1">
    <u><b>ID usuario : <xsl:value-of select="id_usuario" /><br/></b></u>
  <b>Nombre:</b><xsl:value-of select="nombre" /><br/>  
  <b>email:</b><xsl:value-of select="sector" /><br/>
  <b>Telefono:</b><xsl:value-of select="interno" /><br/><br/>
</xsl:for-each>

  </body>
  </html>
</xsl:template>
</xsl:stylesheet>