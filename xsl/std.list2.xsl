<?xml version='1.0'?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--
//*****************************************************************************
// Copyright 2003-2005 by A J Marston <http://www.tonymarston.net>
// Copyright 2006-2017 by Radicore Software Limited <http://www.radicore.org>
//*****************************************************************************
-->

<xsl:output method='html'
            indent="yes"
            omit-xml-declaration="yes"
            doctype-system="about:legacy-compat"
            encoding="UTF-8"
/>

<!-- include common templates -->
<xsl:include href="std.buttons.xsl"/>
<xsl:include href="std.column_hdg.xsl"/>
<xsl:include href="std.data_field.xsl"/>
<xsl:include href="std.head.xsl"/>
<xsl:include href="std.pagination.xsl"/>

<!-- get the name of the OUTER and INNER tables -->
<xsl:variable name="outer" select="/root/structure/outer/@id"/>
<xsl:variable name="inner" select="/root/structure/inner/@id"/>
<xsl:variable name="numrows" select="/root/pagination/page[@id='inner']/@numrows"/>

<xsl:template match="/"> <!-- standard match to include all child elements -->

  <html xml:lang="{/root/params/language}" lang="{/root/params/language}">

  <xsl:call-template name="head" />

  <body>
    <xsl:attribute name="class">
      <xsl:value-of select="/root/params/script_short" />
    </xsl:attribute>
    
    <xsl:call-template name="body-head" />
  
    <div class="universe">

      <!-- create help button -->
      <xsl:call-template name="help" />

      <!-- create menu buttons -->
      <xsl:call-template name="menubar" />

      <div class="body">

        <div class="title">
          <xsl:choose>
            <!-- identify whether this is with or without the 'quicksearch' option -->
            <xsl:when test="/root/lookup/quicksearch_field">
              <xsl:attribute name="class">title with_quicksearch</xsl:attribute>
              <xsl:call-template name="quicksearch"></xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
              <xsl:attribute name="class">title without_quicksearch</xsl:attribute>
            </xsl:otherwise>
          </xsl:choose>
          
          <h1 class="title"><xsl:value-of select="$title"/></h1>
        </div> <!-- title -->
          
        <form id="{/root/params/script_short}" method="post" action="{$script}">
  
          <div class="outer">
  
            <!-- This is the OUTER/PARENT table -->
            <table>
              <xsl:for-each select="/root/*[name()=$outer][1]">
                <!-- display all the fields in the current row -->
                <xsl:call-template name="display_vertical">
                  <xsl:with-param name="zone"   select="'outer'"/>
                  <xsl:with-param name="data"   select="."/>
                  <xsl:with-param name="noedit" select="string(/root/params/outer_noedit)"/>
                </xsl:call-template>
              </xsl:for-each>
            </table>
  
            <!-- insert the scrolling links for the OUTER/PARENT table -->
            <xsl:call-template name="scrolling" >
              <xsl:with-param name="object" select="$outer"/>
            </xsl:call-template>
  
          </div> <!-- outer -->
  
          <!-- create navigation buttons -->
          <xsl:call-template name="navbar">
            <xsl:with-param name="noshow"   select="/root/params/noshow"/>
            <xsl:with-param name="noselect" select="/root/params/noselect"/>
          </xsl:call-template>
  
          <div class="inner">
  
            <!-- this is the INNER/CHILD table -->
            <xsl:choose>
              
              <xsl:when test="/root/structure/inner/table">
                <!-- display multiple rows in vertical format, each row having its own HTML table -->
                <!-- process each non-empty row in the INNER table of the XML file -->
                <xsl:for-each select="/root/*[name()=$outer][1]/*[name()=$inner][count(*)&gt;0]">
                  
                  <!-- display all the fields in the current row -->
                  <xsl:call-template name="display_vertical_multirow">
                    <xsl:with-param name="zone"       select="'inner'"/>
                    <xsl:with-param name="data"       select="."/>
                    <xsl:with-param name="multiple"   select="'y'" />
                    <xsl:with-param name="noedit"     select="string(/root/params/inner_noedit)"/>
                    <xsl:with-param name="noedit_row" select="string(/root/*[name()=$outer][1]/*[name()=$inner]/@noedit)"/>
                  </xsl:call-template>
                  
                </xsl:for-each>
                
              </xsl:when>
              
              <xsl:when test="/root/params/inner_vertical = 'y'">
                <!-- display a single row only, with vertical display -->
                <table>
                  <xsl:for-each select="/root/*[name()=$outer][1]/*[name()=$inner][1]">
                    <!-- display all the fields in the current row -->
                    <xsl:call-template name="display_vertical">
                      <xsl:with-param name="zone"   select="'inner'"/>
                      <xsl:with-param name="data"   select="."/>
                      <xsl:with-param name="noedit" select="string(/root/params/inner_noedit)"/>
                    </xsl:call-template>
                  </xsl:for-each>
                </table>
              </xsl:when>
              
              <xsl:otherwise> <!-- default is horzontal display, one table row for each database row -->
                
                <table>
      
                  <!-- set up column widths -->
                  <xsl:call-template name="column_group">
                    <xsl:with-param name="zone" select="'inner'"/>
                  </xsl:call-template>
      
                  <thead>
                    <!-- set up column headings -->
                    <xsl:call-template name="column_headings">
                      <xsl:with-param name="zone"   select="'inner'"/>
                      <xsl:with-param name="nosort" select="/root/params/nosort"/>
                    </xsl:call-template>
                  </thead>
      
                  <tbody>
                    <!-- process each non-empty row in the INNER/CHILD table of the XML file -->
                    <xsl:for-each select="/root/*[name()=$outer][1]/*[name()=$inner][count(*)&gt;0]">
      
                      <!-- display all the fields in the current row -->
                      <xsl:call-template name="display_horizontal">
                        <xsl:with-param name="zone"     select="'inner'"/>
                        <xsl:with-param name="data"     select="."/>
                        <xsl:with-param name="multiple" select="'y'"/>
                        <xsl:with-param name="noedit"   select="string(/root/params/inner_noedit)"/>
                      </xsl:call-template>
      
                    </xsl:for-each>
                  </tbody>
                </table>
              </xsl:otherwise>
            </xsl:choose>
            
          </div> <!-- inner -->
  
          <!-- look for optional messages -->
          <xsl:call-template name="message"/>
  
          <!-- insert the page navigation links -->
          <xsl:call-template name="pagination" >
            <xsl:with-param name="object" select="'inner'"/>
          </xsl:call-template>
  
          <!-- create standard action buttons -->
          <xsl:call-template name="actbar"/>
  
        </form>
        
      </div> <!-- body -->
  
    </div> <!-- universe -->

    <xsl:call-template name="body-foot" />

  </body>
  </html>

</xsl:template>

</xsl:stylesheet>
