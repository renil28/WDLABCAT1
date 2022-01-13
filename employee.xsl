<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
		<head>
		</head>
		<body>
			<h1 style="text-align:center">Employee Management System</h1>
			<table border="2" align="center">
			<tr>
                <th>ID</th>
				<th>NAME</th>
				<th>AGE</th>
				<th>SALARY</th>
				<th>EMAIL</th>
                <th>MobileNum</th>
                <th>Designation</th>
                <th>Promotion</th>
			</tr>
			<xsl:for-each select="Company/Employee">
			<tr>
                <td>
					<xsl:value-of select="id"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="Emp-name"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="Emp-age"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="Emp-salary"></xsl:value-of>
				</td>
				<td>
					<xsl:value-of select="Emp-emailid"></xsl:value-of>
				</td>
                <td>
					<xsl:value-of select="Emp-Phonenum"></xsl:value-of>
				</td>
                <td>
                    <xsl:value-of select="Emp-designation"></xsl:value-of>
                </td>
                <xsl:choose>
      				<xsl:when test="Emp-age > 50">
         			<td>
         				<xsl:value-of select="Promotion"></xsl:value-of>
                         Associate Project Manager
         			</td>
      				</xsl:when>
      			    <xsl:otherwise>
				    <td>
					    <xsl:value-of select="Promotion"></xsl:value-of>
                        Developer
				    </td>
				    </xsl:otherwise>
      			</xsl:choose>
		    </tr>
            </xsl:for-each>
			</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>