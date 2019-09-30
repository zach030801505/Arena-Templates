<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>
  <xsl:template match="navigation">
    <ul class="nav flex-column">
      <xsl:for-each select="group">
        <li class="nav-item">
          <a class="nav-link">
            <xsl:attribute name="href">
              default.aspx?page=<xsl:value-of select="@pageid"/>
            </xsl:attribute>
            <xsl:value-of select="@name"/>
          </a>
        </li>
      </xsl:for-each>
    </ul>
  </xsl:template>
</xsl:stylesheet>
