<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:fox="http://xmlgraphics.apache.org/fop/extensions">
  <xsl:output method="xml" indent="yes"/>

  <xsl:param name="language">es</xsl:param>
  <xsl:param name="primary">#283593</xsl:param>
  <xsl:variable name="primary_light">#5f5fc4</xsl:variable>
  <xsl:variable name="primary_dark">#001064</xsl:variable>
  <xsl:variable name="primary_background">#e8eaf6</xsl:variable>

  <xsl:include href="style.xslt"/>
  <xsl:include href="main-values.xslt"/>
  <xsl:include href="basic-header.xslt"/>
  <xsl:include href="content-side-personal.xslt"/>
  <xsl:include href="content-languages.xslt"/>
  <xsl:include href="content-side-basic.xslt"/>
  <xsl:include href="content-side-hobbies.xslt"/>
  <xsl:include href="content-main-experiences.xslt"/>
  <xsl:include href="content-main-education.xslt"/>
  <xsl:include href="content-success.xslt"/>
  <xsl:include href="star-helper.xslt"/>
  <xsl:include href="content-side-skill-legenda.xslt"/>
  <xsl:include href="skill-detail.xslt"/>

  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
        <fo:simple-page-master master-name="front-page" page-height="29.7cm" page-width="21.0cm" margin="0cm">
          <fo:region-body margin-top="0cm" margin-left="6.4cm"/>
          <fo:region-start extent="6.1cm" xsl:use-attribute-sets="left-region" />
        </fo:simple-page-master>

        <fo:simple-page-master master-name="base-page" page-height="29.7cm" page-width="21.0cm" margin="0cm">
          <fo:region-body margin-top="0cm" margin-right="6.4cm" margin-left=".4cm"/>
          <fo:region-end extent="6.1cm" xsl:use-attribute-sets="left-region"/>
        </fo:simple-page-master>
      </fo:layout-master-set>

      <fo:page-sequence master-reference="front-page">
        <fo:static-content flow-name="xsl-region-start" >
          <xsl:call-template name="show-profile-picture"/>
          <xsl:call-template name="show-personal-info"/>
          <xsl:call-template name="show-side-languages"/>
          <xsl:call-template name="show-side-basic-skills"/>
          <xsl:call-template name="show-side-hobbies"/>
        </fo:static-content>

        <fo:flow flow-name="xsl-region-body">
          <xsl:call-template name="show-basic-header"/>
          <xsl:call-template name="show-main-value"/>
          <xsl:call-template name="show-main-experiences"/>
          <xsl:call-template name="show-education"/>
        </fo:flow>
      </fo:page-sequence>

      <fo:page-sequence master-reference="base-page">

        <fo:static-content flow-name="xsl-region-end" >
          <xsl:call-template name="show-profile-picture2"/>
          <xsl:call-template name="show-personal-info"/>
          <xsl:call-template name="show-side-skills-legenda"/>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">
          <xsl:call-template name="show-basic-header"/>
          <fo:block xsl:use-attribute-sets="right-content-title">
            <fo:instream-foreign-object xmlns:svg="http://www.w3.org/2000/svg">
              <svg  height="20" width="20" viewBox="0 0 700 800" version="1.1" xmlns="http://www.w3.org/2000/svg">
                <path fill="#5f5fc4" d="M448.512 479.232a54.272 54.272 0 1 1 56.32-55.296 55.296 55.296 0 0 1-56.32 55.296z m343.04 91.136l-73.728-110.592V450.56a245.76 245.76 0 0 0-244.736-245.76 225.28 225.28 0 0 0-58.368 7.168A244.736 244.736 0 0 0 228.352 450.56a224.256 224.256 0 0 0 36.864 130.048c43.008 61.44 71.68 110.592 54.272 177.152a47.104 47.104 0 0 0 9.216 43.008 45.056 45.056 0 0 0 36.864 18.432h200.704a48.128 48.128 0 0 0 48.128-38.912 51.2 51.2 0 0 0 2.048-12.288 24.576 24.576 0 0 1 24.576-20.48H655.36a48.128 48.128 0 0 0 48.128-34.816 422.912 422.912 0 0 0 15.36-98.304h52.224a28.672 28.672 0 0 0 22.528-16.384 29.696 29.696 0 0 0-2.048-27.648z m-202.752-86.016l-10.24 16.384a22.528 22.528 0 0 1-18.432 9.216 24.576 24.576 0 0 1-7.168-1.024l-26.624-10.24a118.784 118.784 0 0 1-39.936 22.528l-5.12 29.696a20.48 20.48 0 0 1-20.48 16.384h-20.48a20.48 20.48 0 0 1-20.48-16.384l-4.096-29.696a102.4 102.4 0 0 1-37.888-20.48l-28.672 10.24a24.576 24.576 0 0 1-8.192 1.024 21.504 21.504 0 0 1-17.408-10.24l-10.24-16.384a19.456 19.456 0 0 1 5.12-25.6l23.552-19.456a103.424 103.424 0 0 1-3.072-21.504 96.256 96.256 0 0 1 3.072-20.48l-23.552-20.48a19.456 19.456 0 0 1-5.12-25.6l10.24-17.408a20.48 20.48 0 0 1 18.432-10.24 24.576 24.576 0 0 1 7.168 2.048l28.672 10.24a117.76 117.76 0 0 1 37.888-21.504L419.84 286.72a19.456 19.456 0 0 1 20.48-16.384h20.48a19.456 19.456 0 0 1 20.48 15.36l5.12 29.696a115.712 115.712 0 0 1 37.888 20.48l28.672-10.24a24.576 24.576 0 0 1 7.168-2.048 21.504 21.504 0 0 1 18.432 10.24l10.24 16.384a20.48 20.48 0 0 1-5.12 26.624l-23.552 19.456a98.304 98.304 0 0 1 2.048 21.504 96.256 96.256 0 0 1-2.048 20.48l23.552 19.456a20.48 20.48 0 0 1 5.12 26.624z"  />
              </svg>
            </fo:instream-foreign-object> &#160;
            <xsl:value-of select="cv/translations/skillMatrix[@lang=$language]"/>
          </fo:block>
          <fo:table table-layout="fixed" width="100%">
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-column/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[1]"/>
                  </xsl:call-template>
                    <xsl:call-template name="show-skill">
                        <xsl:with-param name="skill" select="cv/skills/skill[13]"/>
                    </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[10]"/>
                  </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[4]"/>
                  </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[11]"/>
                  </xsl:call-template>
                </fo:table-cell>
                <fo:table-cell>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[2]"/>
                  </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[14]"/>
                  </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[12]"/>
                  </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[8]"/>
                  </xsl:call-template>
                </fo:table-cell>
                <fo:table-cell>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[3]"/>
                  </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[6]"/>
                  </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[9]"/>
                  </xsl:call-template>
                  <xsl:call-template name="show-skill">
                    <xsl:with-param name="skill" select="cv/skills/skill[5]"/>
                  </xsl:call-template>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

        </fo:flow>
      </fo:page-sequence>

      <fo:page-sequence master-reference="front-page">
        <fo:static-content flow-name="xsl-region-start" >
          <xsl:call-template name="show-profile-picture3"/>
          <xsl:call-template name="show-personal-info"/>
          <xsl:call-template name="show-project-overview">
            <xsl:with-param name="currentPage">1</xsl:with-param>
            <xsl:with-param name="totalPages">4</xsl:with-param>
            <xsl:with-param name="company1">Confluent</xsl:with-param>
            <xsl:with-param name="company2">Inetum</xsl:with-param>
            <xsl:with-param name="function1"><xsl:value-of select="cv/jobs/job[1]/title[@lang=$language]"/></xsl:with-param>
            <xsl:with-param name="dateFrom"><xsl:value-of select="cv/jobs/job[2]/from"/></xsl:with-param>
            <xsl:with-param name="dateTo"><xsl:value-of select="cv/jobs/job[1]/to"/></xsl:with-param>
          </xsl:call-template>
        </fo:static-content>

        <fo:flow flow-name="xsl-region-body">
          <xsl:call-template name="show-basic-header"/>
          <xsl:call-template name="show-road-to-success-header"/>
          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[1]"/>
            <xsl:with-param name="job1"/>
            <xsl:with-param name="job2"/>
            <xsl:with-param name="job3"/>
          </xsl:call-template>

          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[2]"/>
            <xsl:with-param name="job1"/>
            <xsl:with-param name="job2"/>
            <xsl:with-param name="job3"/>
          </xsl:call-template>


        </fo:flow>
      </fo:page-sequence>

      <fo:page-sequence master-reference="base-page">

        <fo:static-content flow-name="xsl-region-end" >
          <xsl:call-template name="show-profile-picture4"/>
          <xsl:call-template name="show-personal-info"/>
          <xsl:call-template name="show-project-overview">
            <xsl:with-param name="currentPage">2</xsl:with-param>
            <xsl:with-param name="totalPages">4</xsl:with-param>
            <xsl:with-param name="company1">Aquafin</xsl:with-param>
            <xsl:with-param name="company2"></xsl:with-param>
            <xsl:with-param name="function1"><xsl:value-of select="cv/jobs/job[3]/title[@lang=$language]"/></xsl:with-param>
            <xsl:with-param name="dateFrom"><xsl:value-of select="cv/jobs/job[4]/from"/></xsl:with-param>
            <xsl:with-param name="dateTo"><xsl:value-of select="cv/jobs/job[3]/to"/></xsl:with-param>
          </xsl:call-template>
        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">
          <xsl:call-template name="show-basic-header"/>
          <xsl:call-template name="show-road-to-success-header"/>

          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[3]"/>
            <xsl:with-param name="job1"/>
            <xsl:with-param name="job2"/>
            <xsl:with-param name="job3"/>
          </xsl:call-template>

          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[4]"/>
            <xsl:with-param name="job1"/>
            <xsl:with-param name="job2"/>
            <xsl:with-param name="job3"/>
          </xsl:call-template>


        </fo:flow>
      </fo:page-sequence>

      <fo:page-sequence master-reference="front-page">
        <fo:static-content flow-name="xsl-region-start" >
          <xsl:call-template name="show-profile-picture5"/>
          <xsl:call-template name="show-personal-info"/>
          <xsl:call-template name="show-project-overview">
            <xsl:with-param name="currentPage">3</xsl:with-param>
            <xsl:with-param name="totalPages">4</xsl:with-param>
            <xsl:with-param name="company1">HP Enterprise</xsl:with-param>
            <xsl:with-param name="company2"></xsl:with-param>
            <xsl:with-param name="function1"><xsl:value-of select="cv/jobs/job[5]/title[@lang=$language]"/></xsl:with-param>
            <xsl:with-param name="dateFrom"><xsl:value-of select="cv/jobs/job[9]/from"/></xsl:with-param>
            <xsl:with-param name="dateTo"><xsl:value-of select="cv/jobs/job[5]/to"/></xsl:with-param>
          </xsl:call-template>

        </fo:static-content>


        <fo:flow flow-name="xsl-region-body">
          <xsl:call-template name="show-basic-header"/>
          <xsl:call-template name="show-road-to-success-header"/>

          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[5]"/>
            <xsl:with-param name="job1"/>
            <xsl:with-param name="job2"/>
            <xsl:with-param name="job3"/>
          </xsl:call-template>

          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[6]"/>
            <xsl:with-param name="job1"/>
            <xsl:with-param name="job2"/>
            <xsl:with-param name="job3"/>
          </xsl:call-template>

          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[7]"/>
            <xsl:with-param name="job1"  select="cv/jobs/job[8]"/>
            <xsl:with-param name="job2" select="cv/jobs/job[9]"/>
            <xsl:with-param name="job3"/>
          </xsl:call-template>


        </fo:flow>
      </fo:page-sequence>


      <fo:page-sequence master-reference="base-page">

        <fo:static-content flow-name="xsl-region-end" >
          <xsl:call-template name="show-profile-picture6"/>
          <xsl:call-template name="show-personal-info"/>
          <xsl:call-template name="show-project-overview">
            <xsl:with-param name="currentPage">4</xsl:with-param>
            <xsl:with-param name="totalPages">4</xsl:with-param>
            <xsl:with-param name="company1">Capgemini</xsl:with-param>
            <xsl:with-param name="company2"></xsl:with-param>
            <xsl:with-param name="function1"><xsl:value-of select="cv/jobs/job[10]/title[@lang=$language]"/></xsl:with-param>
            <xsl:with-param name="function2"><xsl:value-of select="cv/jobs/job[12]/title[@lang=$language]"/></xsl:with-param>
            <xsl:with-param name="function3"><xsl:value-of select="cv/jobs/job[13]/title[@lang=$language]"/></xsl:with-param>
            <xsl:with-param name="dateFrom"><xsl:value-of select="cv/jobs/job[14]/from"/></xsl:with-param>
            <xsl:with-param name="dateTo"><xsl:value-of select="cv/jobs/job[10]/to"/></xsl:with-param>
          </xsl:call-template>

        </fo:static-content>
        <fo:flow flow-name="xsl-region-body">
          <xsl:call-template name="show-basic-header"/>
          <xsl:call-template name="show-road-to-success-header"/>


          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[10]"/>
            <xsl:with-param name="job1"  select="cv/jobs/job[11]"/>
            <xsl:with-param name="job2" select="cv/jobs/job[12]"/>
            <xsl:with-param name="job3" select="cv/jobs/job[13]"/>
          </xsl:call-template>

          <xsl:call-template name="show-project">
            <xsl:with-param name="job" select="cv/jobs/job[14]"/>
            <xsl:with-param name="job1"/>
            <xsl:with-param name="job2"/>
            <xsl:with-param name="job3"/>
          </xsl:call-template>


        </fo:flow>
      </fo:page-sequence>



    </fo:root>
  </xsl:template>
</xsl:stylesheet>
