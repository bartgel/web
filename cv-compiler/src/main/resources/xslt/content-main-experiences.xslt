<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">
    <xsl:template name="jobTitleTemplate">
        <xsl:param name="job"/>
        <fo:block>
            <xsl:value-of select="$job/from"/>&#160;-&#160;
            <xsl:value-of select="$job/to"/>&#160;
            <xsl:value-of select="$job/title[@lang=$language]"/>

        </fo:block>
        <xsl:for-each select="$job/speciality">
            <fo:block>- <xsl:value-of select="name"/></fo:block>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="show-main-experiences">
        <fo:block xsl:use-attribute-sets="right-content-title">
            <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
                <svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 20 20" height="20" viewBox="0 0 20 20" width="20">
                    <g><rect fill="none" height="20" width="20"/></g>
                    <g>
                        <g>
                            <rect fill="#5f5fc4" height="7" width="3" x="4" y="10"/>
                            <rect fill="#5f5fc4" height="7" width="3" x="10.5" y="10"/>
                            <rect fill="#5f5fc4" height="3" width="20" x="2" y="19"/>
                            <rect fill="#5f5fc4" height="7" width="3" x="17" y="10"/>
                            <polygon fill="#5f5fc4" points="12,1 2,6 2,8 22,8 22,6"/>
                        </g>
                    </g>
                </svg>
            </fo:instream-foreign-object> &#160;
            <xsl:value-of select="cv/translations/workExperience[@lang=$language]"/>
        </fo:block>

        <fo:table table-layout="fixed" width="100%">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-header>
                <fo:table-row font-weight="700">
                    <fo:table-cell width="60pt"><fo:block><xsl:value-of select="cv/translations/company[@lang=$language]"/></fo:block></fo:table-cell>
                    <fo:table-cell width="70pt"><fo:block><xsl:value-of select="cv/translations/client[@lang=$language]"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="cv/translations/jobtitle[@lang=$language]"/></fo:block></fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell >
                        <fo:block >
                            <fo:external-graphic  height="40px" width="80px" content-height="40px"
                                                  content-width="80px" src="url('src/main/resources/img/logo/confluent.jpg')">
                            </fo:external-graphic>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px">
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px" text-decoration="underline">Confluent</fo:block>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[1]"/>
                        </xsl:call-template>
                    </fo:table-cell>
                </fo:table-row>





                  <fo:table-row>
                    <fo:table-cell >
                              <fo:block >
                                <fo:external-graphic  height="40px" width="80px" content-height="40px"
                                                      content-width="80px" src="url('src/main/resources/img/logo/inetum.png')">
                                </fo:external-graphic>
                            </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px">
                        </fo:block>
                    </fo:table-cell>                   
                    <fo:table-cell>
                        <fo:block margin-top="8px" text-decoration="underline">Inetum</fo:block>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[2]"/>
                        </xsl:call-template>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell number-columns-spanned="2">
                        <fo:block>
                            <fo:external-graphic  height="60px" width="80px" content-height="60px"
                                                  content-width="80px" src="url('src/main/resources/img/logo/aquafin.jpeg')">
                            </fo:external-graphic>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px" text-decoration="underline">Aquafin</fo:block>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[3]"/>
                        </xsl:call-template>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[4]"/>
                        </xsl:call-template>
                    </fo:table-cell>
                </fo:table-row>

                <fo:table-row>
                    <fo:table-cell number-rows-spanned="3">
                        <fo:block-container reference-orientation="90" margin-top="80px">
                            <fo:block >
                                <fo:external-graphic  height="40px" width="80px" content-height="40px"
                                                      content-width="80px" src="url('src/main/resources/img/logo/hpe.png')">
                                </fo:external-graphic>
                            </fo:block>
                        </fo:block-container>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px">
                            <fo:external-graphic  height="30px" width="60px" content-height="30px"
                                                  content-width="60px" src="url('src/main/resources/img/logo/vo-hfb.png')">
                            </fo:external-graphic>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px" text-decoration="underline">Het facilitair bedrijf</fo:block>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[5]"/>
                        </xsl:call-template>
                    </fo:table-cell>
                </fo:table-row>

                <fo:table-row>
                    <!--fo:table-cell ><fo:block>HPE</fo:block></fo:table-cell-->
                    <fo:table-cell>
                        <fo:block margin-top="8px">
                            <fo:external-graphic  height="30px" width="60px" content-height="30px"
                                                  content-width="60px" src="url('src/main/resources/img/logo/vo-wvl.png')">
                            </fo:external-graphic>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px" text-decoration="underline">Wonen Vlaanderen</fo:block>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[6]"/>
                        </xsl:call-template>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <!--fo:table-cell ><fo:block>HPE</fo:block></fo:table-cell-->
                    <fo:table-cell>
                        <fo:block>
                            <fo:external-graphic  height="40px" width="60px" content-height="40px"
                                                  content-width="60px" src="url('src/main/resources/img/logo/vo-vlabel.jpeg')">
                            </fo:external-graphic>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px" text-decoration="underline">VLABEL</fo:block>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[7]"/>
                        </xsl:call-template>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[8]"/>
                        </xsl:call-template>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[9]"/>
                        </xsl:call-template>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell number-rows-spanned="2">
                        <fo:block-container reference-orientation="90" margin-top="80px">
                            <fo:block >
                                <fo:external-graphic  height="40px" width="80px" content-height="40px"
                                                      content-width="80px" src="url('src/main/resources/img/logo/capgemini.png')">
                                </fo:external-graphic>
                            </fo:block>
                        </fo:block-container>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <fo:external-graphic  height="40px" width="60px" content-height="40px"
                                                  content-width="60px" src="url('src/main/resources/img/logo/usg.png')">
                            </fo:external-graphic>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px" text-decoration="underline">USG People</fo:block>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[10]"/>
                        </xsl:call-template>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[11]"/>
                        </xsl:call-template>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[12]"/>
                        </xsl:call-template>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[13]"/>
                        </xsl:call-template>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell> <fo:block>
                        <fo:external-graphic  height="40px" width="60px" content-height="40px"
                                              content-width="60px" src="url('src/main/resources/img/logo/fortis.jpg')">
                        </fo:external-graphic>
                    </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block margin-top="8px" text-decoration="underline">FORTIS</fo:block>
                        <xsl:call-template name="jobTitleTemplate">
                            <xsl:with-param name="job" select="cv/jobs/job[14]"/>
                        </xsl:call-template>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>

    </xsl:template>
</xsl:stylesheet>