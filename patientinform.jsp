
<%@page import="dataset.AESDecryption"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>

<%@page import="java.lang.String"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title><script type="text/javascript" src="js/general.js"></script>
  <script language="JavaScript" src="js/security.js"></script>
<link rel="stylesheet" type="text/css" href="style.css" />       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
</style> <style type="text/css">
<!--
.style12 {
	color: #FFFFFF;
	font-weight: bold;
	font-size: 16px;
	font-style: italic;
}
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 24px;
}
.style19 {font-size: 16px}
.style20 {
	font-size: 16px;
	color: #000000;
	font-weight: bold;
}
.style23 {color: #336600; font-weight: bold; font-size: 18px; }
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="" method="post">
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="966"><table width="960" border="0">
          <tr>
            <td width="954"><table width="950" border="0">
              <tr>
                <td width="292"><img src="image/1_4.jpg" height="131"/></td>
                <td width="648"><div align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD </span></div></td>
              </tr>
            </table></td>
          </tr>
          <tr>
              <td><div class="navbar">
  <a href="admin.jsp"  class="active">Home</a>
   <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Details
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <a href="patientinform.jsp">Patient Details</a>
   <a href="atest.jsp">Patient Test Details</a>
   <a href="apharmacy.jsp">Patient Pharmacy Details</a>
    </div>
  </div> 
 
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Master Screen 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="pharmacydescribtion.jsp">Add Pharmacy Information</a>
     <a href="testprescribed.jsp">Add Test Information</a>
      
    </div>
  </div>   <div class="dropdown">
    <button class="dropbtn" disabled="true">Registration<i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
	<a href="hospital.jsp">Hospital Register</a>
      <a href="dregister.jsp">Doctor Register</a>
      <a href="lregister.jsp">Worker Register</a>
   
    </div>
	
  </div>  
  <!--<div class="dropdown">
    <button class="dropbtn" input type="hidden">History</button>
    <div class="dropdown-content">
      <a href="block1.jsp">Login Block</a>
      <a href="block2.jsp">Test Block</a>
      <a href="historyblock.jsp">History Block</a>
    </div>
	
  </div>-->
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
          <p>&nbsp;</p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="31" ><table width="953" border="0">
                      <tr>
                        <td width="947" align="center"><table align="center" width="881" height="256" border="0" cellpadding="1" cellspacing="1">
          <tr>
            <td width="877" >&nbsp;</td>
          </tr>
    
                      <tr>
                        <td align="center"><table width="927" border="0">
                      <tr>
                        <td width="921">
                            <table width="924" border="0">
  <tr>
    <td width="918" align="center"><H1 class="style20">PATIENT TOKEN DETAILS</H1> </td>
  </tr>
  <tr>
    <td class="style19"><table width="883" border="0" align="center">
              <tr>
                <td width="877"><table width="877" height="43" border="3" >
   <tr>
      <td width="59" height="33" ><div align="center" class="style21 style3 style19">TId</div></td>
      <td width="96"><div align="center" class="style21 style3 style19">User Id </div></td>
      <td width="134"><div align="center" class="style21 style3 style19"> Name </div></td>
	  <td width="92"><div align="center" class="style21 style3 style19">Specialist</div></td>
      <td width="107"><div align="center" class="style21 style3 style19">Reason</div></td>
	    <td width="144"><div align="center" class="style21 style3 style19">Date</div></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="875" border="1"  align=center>

    <% int index=0;
	try
	{  
        
	 AESDecryption dec=new AESDecryption();

               String a11=request.getParameter("a1");
            String url = "jdbc:mysql://localhost:3306/phr";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("select * from token ");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
	
    <tr>
      <td width="59" >   
        
              <div align="center">
              <%=rs.getString(1)%>
               </div></td>
               <td width="99"><div align="center"><%=rs.getString(2)%></div></td>
               <td width="133"><div align="center"><%=dec.toDeycrypt(rs.getString(3))%></div></td>
        <td width="93"><div align="center"><%=dec.toDeycrypt(rs.getString(6))%></div></td>
      <td width="102"><div align="center"><%=dec.toDeycrypt(rs.getString(8))%></div></td>
	         <td width="150"><div align="center"><%=rs.getString(11)%></div></td>
      
    <%
  index++;
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
            </table></td>
  </tr>
</table>

			
			
			
		                  <p>&nbsp;</p>
		                <p>&nbsp;</p>
		                <p>&nbsp;</p>
		                <p>&nbsp;</p>
		                <p>&nbsp;</p>
		                <p>&nbsp;</p>
		                <p>&nbsp;</p>
		                <p>&nbsp;</p>
		                <p>&nbsp;</p></td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                    </table>
                       </td>
                      </tr>
                      <tr>
                        <td></td>
                      </tr>
                    </table></td>
                      </tr>
                      <tr>
                        <td></td>
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
