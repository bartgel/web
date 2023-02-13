<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">

    <xsl:template name="show-stars">
        <xsl:param name="level"/>
        <!-- Workaround for loop -->
        <xsl:if test="$level = 1">
            <xsl:call-template name="show-black-star"/>
        </xsl:if>
        <xsl:if test="$level = 2">
            <xsl:call-template name="show-black-star"/>
            <xsl:call-template name="show-black-star"/>
        </xsl:if>
        <xsl:if test="$level = 3">
            <xsl:call-template name="show-black-star"/>
            <xsl:call-template name="show-black-star"/>
            <xsl:call-template name="show-black-star"/>
        </xsl:if>
        <xsl:if test="$level = 4">
            <xsl:call-template name="show-black-star"/>
            <xsl:call-template name="show-black-star"/>
            <xsl:call-template name="show-black-star"/>
            <xsl:call-template name="show-black-star"/>
        </xsl:if>
    </xsl:template>

    <xsl:template name="show-skill">
        <xsl:param name="skill"/>

        <fo:block xsl:use-attribute-sets="right-content-subtitle">
            <xsl:value-of select="$skill/name[@lang=$language]"/>
        </fo:block>
        <fo:table table-layout="fixed" width="100%">
            <fo:table-body>
                <xsl:for-each select="$skill/skills/skill">
                <fo:table-row>
                    <xsl:choose>
                    <xsl:when test="level = 0">
                        <fo:table-cell>
                            <fo:block>
                                <xsl:value-of select="name[@lang=$language]"/>
                            </fo:block>
                        </fo:table-cell>
                    </xsl:when>
                        <xsl:otherwise>
                    <fo:table-cell>
                        <fo:block>
                             <xsl:value-of select="name[@lang=$language]"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell width="46px">
                        <fo:block>
                            <xsl:call-template name="show-stars">
                                <xsl:with-param name="level"><xsl:value-of select="level"/></xsl:with-param>
                            </xsl:call-template>
                        </fo:block>
                    </fo:table-cell>
                    </xsl:otherwise>
                    </xsl:choose>

                </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
    </xsl:template>
</xsl:stylesheet>