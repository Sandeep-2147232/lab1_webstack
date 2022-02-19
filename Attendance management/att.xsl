<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<head>
 <meta charset="UTF-8"/>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <title>Employee Management System</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="index_design.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
</head>
<body>
<header class="header">
            <nav class="navbar navbar-expand-lg fixed-top py-3">
                <div class="container"><a href="#" class="navbar-brand text-uppercase font-weight-bold">Transparent Nav</a>
                    <button type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right"><i class="fa fa-bars"></i></button>
                    
                    <div id="navbarSupportedContent" class="collapse navbar-collapse">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a href="#" class="nav-link text-uppercase font-weight-bold">Home <span class="sr-only">(current)</span></a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-uppercase font-weight-bold">About</a></li>
                            <li class="nav-item"><a href="#" class="nav-link text-uppercase font-weight-bold">Signin</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
  <h2></h2>
  <table border="1">
    <tr bgcolor="#9acd32">
    <th style="text-align:left">ID</th>
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Age</th>
      <th style="text-align:left">Salary</th>
      <th style="text-align:left">Email</th>
      <th style="text-align:left">Mobnum</th>
      <th style="text-align:left">Designation</th>
      <th style="text-align:left">Promotion</th>
    </tr>
    <xsl:for-each select="Company/employee">
    <tr>
      <td><xsl:value-of select="Emp_ID"/></td>
      <td><xsl:value-of select="Emp_name"/></td>
      <td><xsl:value-of select="Emp_age"/></td>
      <td><xsl:value-of select="Emp_salary"/></td>
      <td><xsl:value-of select="Emp_emailid"/></td>
      <td><xsl:value-of select="Emp_Phonenum"/></td>
      <td><xsl:value-of select="Emp_designation"/></td>
      <xsl:if test="Emp_age &gt; 50">
                            <td>Associate Project Manager</td>
                        </xsl:if>
                        <xsl:if test="Emp_age &gt; 41">
                            <td>Team Leader</td>
                        </xsl:if>
                        <xsl:if test="Emp_age &lt; 40">
                            <td>Developer</td>
                        </xsl:if>
    </tr>
    </xsl:for-each>
  </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>

