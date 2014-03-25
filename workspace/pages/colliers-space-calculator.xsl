<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sform="http://xanderadvertising.com/xslt">

	<xsl:import href="../masters/default.xsl"/>
	
	<xsl:template match="data" mode="page-content">
			
		<h1>Welcome to the Colliers Space Calculator</h1>
		
		<p>Sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec sed odio dui. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Maecenas sed diam eget risus varius blandit sit amet non magna.</p>
		
		<hr/>
		
				<xsl:variable name="section" select="'submissions'"/>

                <form method="post" action="">

                    <!-- Interpret the values from event. It can be customized. See the implementation -->
                    <xsl:variable name="formi">
                        <xsl:call-template name="sform:formi">
                            <xsl:with-param name="section" select="$section"/>
                        </xsl:call-template>
                    </xsl:variable>

                    <!-- Render this interpretation as pretty HTML. It can be customized. See the implementation -->
                    <xsl:call-template name="sform:validation-render">
                        <xsl:with-param name="interpretation" select="$formi"/>
                    </xsl:call-template>


                    <!-- As a very important optimization we're passing the $formi variable as a parameter to all utilities -->


                    <!-- Title -->
                    <xsl:call-template name="sform:label">
                        <xsl:with-param name="section" select="$section"/>
                        <xsl:with-param name="handle" select="'title'"/>
                        <xsl:with-param name="interpretation" select="$formi"/>
                        <xsl:with-param name="value" select="'Title'"/>
                    </xsl:call-template>

                    <xsl:call-template name="sform:input">
                        <xsl:with-param name="section" select="$section"/>
                        <xsl:with-param name="handle" select="'title'"/>
                        <xsl:with-param name="interpretation" select="$formi"/>
                        <xsl:with-param name="attributes">
                            <placeholder>insert title</placeholder>
                        </xsl:with-param>
                    </xsl:call-template>


                    <!-- Pseudo Date - This field does not exist. I use it just as a variable for "Publish date" field (see below) -->
                    <xsl:call-template name="sform:label">
                        <xsl:with-param name="section" select="$section"/>
                        <xsl:with-param name="handle" select="'pseudo-date'"/>
                        <xsl:with-param name="interpretation" select="$formi"/>
                        <xsl:with-param name="value" select="'Date'"/>
                    </xsl:call-template>

                    <xsl:call-template name="sform:input">
                        <xsl:with-param name="section" select="$section"/>
                        <xsl:with-param name="handle" select="'pseudo-date'"/>
                        <xsl:with-param name="interpretation" select="$formi"/>
                        <xsl:with-param name="value" select="/data/params/today"/>
                        <xsl:with-param name="attributes">
                            <placeholder>dd-mm-yyyy</placeholder>
                        </xsl:with-param>
                    </xsl:call-template>


                    <!-- Pseudo Time - This field does not exist. I use it just as a variable for "Publish date" field (see below) -->
                    <xsl:call-template name="sform:label">
                        <xsl:with-param name="section" select="$section"/>
                        <xsl:with-param name="handle" select="'pseudo-time'"/>
                        <xsl:with-param name="interpretation" select="$formi"/>
                        <xsl:with-param name="value" select="'Time'"/>
                    </xsl:call-template>

                    <xsl:call-template name="sform:input">
                        <xsl:with-param name="section" select="$section"/>
                        <xsl:with-param name="handle" select="'pseudo-time'"/>
                        <xsl:with-param name="interpretation" select="$formi"/>
                        <xsl:with-param name="value" select="/data/params/current-time"/>
                        <xsl:with-param name="attributes">
                            <placeholder>hh:mm</placeholder>
                        </xsl:with-param>
                    </xsl:call-template>


                    <!-- Publish date : Date/time field - Its value will be composed from "Pseudo date" and "Pseudo time" -->
                    <xsl:call-template name="sform:input">
                        <xsl:with-param name="section" select="$section"/>
                        <xsl:with-param name="handle" select="'publish-date'"/>
                        <xsl:with-param name="suffix" select="'start/ '"/>
                        <xsl:with-param name="interpretation" select="$formi"/>
                        <xsl:with-param name="value">
                            <xsl:call-template name="sform:variable">
                                <xsl:with-param name="section" select="$section"/>
                                <xsl:with-param name="handle" select="'pseudo-date'"/>
                            </xsl:call-template>
                            <xsl:text>T</xsl:text>
                            <xsl:call-template name="sform:variable">
                                <xsl:with-param name="section" select="$section"/>
                                <xsl:with-param name="handle" select="'pseudo-time'"/>
                            </xsl:call-template>
                        </xsl:with-param>
                        <xsl:with-param name="attributes">
                            <type>hidden</type>
                        </xsl:with-param>
                        <xsl:with-param name="postback-value-enabled" select="false()"/>
                    </xsl:call-template>


                    <!-- The redirect will benefit from the replacements as well -->
                    <input type="hidden" name="sections[__redirect]" value="{/data/params/root}/news/%{$section}[system:id]%"/>


                    <!-- Use "action[sections]" to enable the event -->
                    <button type="submit" name="action[sections]">Send</button>
                </form>
		
			
		
	</xsl:template>
	
	
	
</xsl:stylesheet>