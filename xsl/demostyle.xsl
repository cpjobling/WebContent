<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" version="1.0" encoding="ISO-8859-1" 
 omit-xml-declaration="yes" media-type="text/html" indent="yes" />

  <xsl:template match="/">
   <html>
   <head>
    <title>A Simple XSL style sheet</title>
    <meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
   </head>
   <body>
    <xsl:for-each select="booklist/book">
     <p><xsl:value-of select="title"/></p>
    </xsl:for-each>
   </body>
   </html>
  </xsl:template>
</xsl:stylesheet>
