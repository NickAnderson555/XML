<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	
<html>
   <head>
      <title>Project3x1</title>
      <style type="text/css">
      	* {color:gray;}
      	.header {background-color:black; color:yellow;}	
      	table {border-collapse:collapse; width:50%;}
      	#color1 {background-color:red;}
      	#color2 {background-color:brown;}
      	#color3 {background-color:green;}
      	tr {height:2em;}
      </style>
    </head>
   <body>
      <table>
     <tr>
        <th colspan="3" class="header">
           		Exchange Information           	
        </th>
     </tr>
     <tr class="header">
        <td>
           	Exchange Type      	
        </td>
        <td>
           	Name(last, first, middle)             	
        </td>
        <td>
           	Country Choice            	
        </td>
     </tr>  
     <xsl:apply-templates select="exchanges/exchange"/>
     <tr><td><br/></td></tr>
     <tr><td><br/></td></tr>
	 <tr id="color1">
	    <td colspan="2">
	       		The number of people applying for an exchange is:   	
	    </td>
	    <td>
	    	<xsl:value-of select="count(exchanges/exchange)"/>
	    </td>
	 </tr>
	 <tr id="color2">
	    <td colspan="2">
	       		The number of teachers applying for an exchange is:
	    </td>
	    <td>
	    	<xsl:value-of select="count(exchanges/exchange[@role='T'])"/>
	    </td>
	 </tr>
	 <tr id="color3">
	    <td colspan="2">
	       		The number of students applying for an exchange is:	
	    </td>
	    <td>
	    	<xsl:value-of select="count(exchanges/exchange[@role='S'])"/>
	    </td>
	 </tr>
	       </table>
	   </body>
	 </html>
</xsl:template>

<xsl:template match="exchange">
	 <tr>
	 	<xsl:choose>
	 		<xsl:when test="@role='T'">
	 			<td>Teacher</td>
	 		</xsl:when>
	 		<xsl:otherwise>
	 			<td>Student</td>
	 		</xsl:otherwise>
	    </xsl:choose>
	    <td>
	    	<xsl:value-of select="concat(name/lastName, ', ', name/firstName, ', ', name/initial)"/>
	    </td>
	    <td>
	    	<xsl:value-of select="countryChoices/country[@preference='1']"/>
	    </td>
	 </tr>
</xsl:template>
	
</xsl:stylesheet>