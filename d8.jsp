<%-- 
    Document   : d8
    Created on : Mar 20, 2022, 3:43:24 PM
    Author     : windows
--%>


<%@page import="dataset.AESDecryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;

  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 18px;  
  font-weight: bold;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}
.active {
  background-color: red;
  color: white;
}
.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<link rel="stylesheet" type="text/css" href="style.css" />        <style type="text/css">
<!--
.style10 {color: #FFFFFF; font-weight: bold; font-size: 18px; }
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size:18px;
	font-style: italic;
}
.style13 {
	color: #000000;
	font-weight: bold;
}
.style14 {color: #000000}
.style17 {
	color: #339966;
	font-size: 18px;
	font-weight: bold;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style23 {color: #336600; font-weight: bold; font-size: 18px; }
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="" method="post">
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="960" border="0">
          <tr>
            <td width="954"><table width="956" border="0">
              <tr>
                <td width="255"><img src="image/1_4.jpg" height="131"/></td>
                <td width="691" align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD </span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="75"><div class="navbar">
  <a href="doctor.jsp">Home</a>
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Details 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="custinform.jsp">Prescription Information</a>
      <a href="testinform.jsp">Test Information Details</a>
	   <a href="d1.jsp">Diagnosis Details</a>
      <a href="dtest.jsp">Booked Conform</a>
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn" disabled="true">Doctor Report<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="doctortestprescribe.jsp">Test</a>
      <a href="pharmacy.jsp">Prescription</a>
	  <a href="denter.jsp">Diagnosis</a>
	    <a href="d3.jsp">Disease</a>
		 <a href="d8.jsp">Disease Report</a>
    </div>
  </div> 
 
  
  <a href="dcpass.jsp">Change_Password</a>
  <a href="login.jsp">Log_out</a>
</div></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="260" background="image/article5.png"><table width="960" border="0">
  <tr>
    <td width="356" height="248">&nbsp;</td>
    <td width="596"><p>&nbsp;</p>
      <p><span class="style12">The clinical summary is a valuable communication tool that supports continuity of patient care by providing relevant and actionable information.</span></p>
      <br><br>
	  <br>
          <p> <span class="style10">Success Stories | Mankarious</span></p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="897" border="1" align="center">
          <tr>
            <td width="891" height="41"><div align="center">MICRODATA</div></td>
          </tr>
          <tr>
            <td><div align="center">
              <table width="904" border="0" align="center">
                <tr>
                  <td width="892"><table width="904" height="22" border="0" align="center"> 
                    <tr>
                      <td width="90"  align="center">ID</td>
                        <td width="143"  align="center">NAME</td>
                        <td width="85"  align="center">AGE</td>
                        <td width="134"  align="center">SEX</td>
                        <td width="198"  align="center">ZIPCODE</td>
                         <td width="228"  align="center">DISEASE</td>
                  </tr>
                    </table></td>
                  </tr>
                <tr>
                  <td><table width="902" border="0"><% int index=0;
	try
	{  
           
	

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/phr";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("select * from microdata ");
		if(rs!=null)
			{%>
                    
                    <% while(rs.next())
		{						
	 %>
                    <tr>
                      <td width="88"  align="center"> <%=rs.getString(1)%></td>
                        <td width="146"  align="center"> <%=rs.getString(2)%></td>
                        <td width="84"  align="center"> <%=rs.getString(3)%></td>
                        <td width="134"  align="center"> <%=rs.getString(4)%></td>
                        <td width="201"  align="center"> <%=rs.getString(5)%></td>
                         <td  align="center"width="223"> <%=rs.getString(6)%></td>
                  </tr> <%
 
													}
													} else 
													{
													%>
                    No items found....!
                    <%
													}
													}
	catch (Exception e) {
		out.println(e);
	}
	%>
                    </table></td>
                  </tr>
              </table>
            </div></td>
          </tr>
          
                    </table></td>
      </tr>
      </table>
            </div></td>
          </tr>
        </table></td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>
