<xsl:stylesheet version="1.0"  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output omit-xml-declaration="yes" indent="yes"/>

  <xsl:template match="navigation">
      <ul>
		  <xsl:attribute name="class">
			<xsl:value-of select='normalize-space(@cssclass)'/>
		  </xsl:attribute>
        <xsl:for-each select="group">
          <li>
              <xsl:attribute name="class">
                nav-item
                <xsl:if test="@currentpageid = @pageid">
                      active
                </xsl:if>
              </xsl:attribute>
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
