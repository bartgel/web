<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">
    <xsl:template name="mainValueTemplate">
        <xsl:param name="value"/>
        <fo:inline border-style="solid"
                   border-width="2"
                   border-color="#001064"
                   fox:border-radius="40pt"
                   background-color="#5f5fc4"
                   padding="5pt"
                   color="white"
                   font-weight="700"
                   text-align="center"
                   margin-left="0px"
                   margin-bottom="0pt">

            <xsl:value-of select="$value/short[@lang=$language]"/>
        </fo:inline>&#160;
        <xsl:value-of select="$value/name[@lang=$language]"/>
    </xsl:template>

    <xsl:template name="show-main-value">
        <fo:block margin-top="8pt" text-align="center">
            <xsl:call-template name="mainValueTemplate">
                <xsl:with-param name="value" select="cv/mainValues/value[1]"/>
            </xsl:call-template>&#160;&#160;&#160;
            <xsl:call-template name="mainValueTemplate">
                <xsl:with-param name="value" select="cv/mainValues/value[2]"/>
            </xsl:call-template>
        </fo:block>
        <fo:block margin-top="16pt" text-align="center">
            <xsl:call-template name="mainValueTemplate">
                <xsl:with-param name="value" select="cv/mainValues/value[3]"/>
            </xsl:call-template>&#160;&#160;&#160;
            <xsl:call-template name="mainValueTemplate">
                <xsl:with-param name="value" select="cv/mainValues/value[4]"/>
            </xsl:call-template>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>