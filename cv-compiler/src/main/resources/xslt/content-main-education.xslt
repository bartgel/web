<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">

    <xsl:template name="show-education">
        <fo:block xsl:use-attribute-sets="right-content-title">
            <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
                <svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 0 20 20" width="20">
                    <path d="M0 0h24v24H0z" fill="none"/>
                    <path fill="#5f5fc4"  d="M12 11.55C9.64 9.35 6.48 8 3 8v11c3.48 0 6.64 1.35 9 3.55 2.36-2.19 5.52-3.55 9-3.55V8c-3.48 0-6.64 1.35-9 3.55zM12 8c1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3 1.34 3 3 3z"/>
                </svg>
            </fo:instream-foreign-object> &#160;
            <xsl:value-of select="cv/translations/education[@lang=$language]"/>
        </fo:block>

        <fo:table table-layout="fixed" width="100%">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell width="160pt">
                        <fo:block>
                            <fo:external-graphic  height="40px" width="150pt" content-height="40px"
                                                  content-width="150pt" src="url('src/main/resources/img/logo/avans.png')">
                            </fo:external-graphic>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block font-weight="700">
                            <xsl:value-of select="cv/educations/education[1]/name[@lang=$language]"/>
                        </fo:block>
                        <fo:block>
                            <xsl:value-of select="cv/educations/education[1]/when[@lang=$language]"/>
                        </fo:block>
                        <fo:block>
                            <xsl:value-of select="cv/educations/education[1]/type[@lang=$language]"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell >
                        <fo:block>
                            <fo:external-graphic  height="40px" width="150pt" content-height="40px"
                                                  content-width="150pt" src="url('src/main/resources/img/logo/kdg.png')">
                            </fo:external-graphic>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block font-weight="700">
                            <xsl:value-of select="cv/educations/education[2]/name[@lang=$language]"/>
                        </fo:block>
                        <fo:block>
                            <xsl:value-of select="cv/educations/education[2]/when[@lang=$language]"/>
                        </fo:block>
                        <fo:block>
                            <xsl:value-of select="cv/educations/education[2]/type[@lang=$language]"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>
</xsl:stylesheet>