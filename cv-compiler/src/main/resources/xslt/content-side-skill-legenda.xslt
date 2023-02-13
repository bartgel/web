<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">

    <xsl:template name="show-side-skills-legenda">
        <fo:block xsl:use-attribute-sets="left-content-title">
            <xsl:value-of select="cv/translations/skillLegenda[@lang=$language]"/>
        </fo:block>

        <fo:block xsl:use-attribute-sets="left-content">
            <xsl:value-of select="cv/translations/skills/skill[1]//level[@lang=$language]"/>
        </fo:block>
        <fo:block margin-left="10px">
                <xsl:call-template name="show-white-star"/>
        </fo:block>

        <fo:block xsl:use-attribute-sets="left-content">
            <xsl:value-of select="cv/translations/skills/skill[2]/level[@lang=$language]"/>
        </fo:block>
        <fo:block margin-left="10px">
            <xsl:call-template name="show-white-star"/>
            <xsl:call-template name="show-white-star"/>
        </fo:block>

        <fo:block xsl:use-attribute-sets="left-content">
            <xsl:value-of select="cv/translations/skills/skill[3]/level[@lang=$language]"/>
        </fo:block>
        <fo:block margin-left="10px">
            <xsl:call-template name="show-white-star"/>
            <xsl:call-template name="show-white-star"/>
            <xsl:call-template name="show-white-star"/>
        </fo:block>

        <fo:block xsl:use-attribute-sets="left-content">
            <xsl:value-of select="cv/translations/skills/skill[4]/level[@lang=$language]"/>
        </fo:block>
        <fo:block margin-left="10px">
            <xsl:call-template name="show-white-star"/>
            <xsl:call-template name="show-white-star"/>
            <xsl:call-template name="show-white-star"/>
            <xsl:call-template name="show-white-star"/>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>