<%-- 
    Document   : estatus
    Created on : 8 Mar, 2024, 10:57:52 PM
    Author     : Win11
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
.style18 {
	color: #336600;
	font-weight: bold;
	font-size: 16px;
}
.style23 {color: #336600; font-weight: bold; font-size: 18px; }
.style25 {font-size: 14}
-->
        </style>
</head>
    <body bgcolor="#CCCCCC"><form action="" method="post">
    <table width="966" border="0" align="center" bgcolor="#FFFFFF">
      <tr>
        <td width="960"><table width="960" border="0">
          <tr>
            <td width="954"><table width="950" border="0">
              <tr>
                <td width="233"><img src="image/1_4.jpg" height="131"/></td>
                <td width="707" align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD</span></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><div class="navbar">
  <a href="emergency.jsp"  class="active">Home</a>
   <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Request
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <a href="erequest.jsp">Emergency Request</a>
   <a href="estatus.jsp">Request Status</a>
   
    </div>
  </div> 
 
  <div class="dropdown">
    <button class="dropbtn" disabled="true">Patient Details
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="epharmacy.jsp">Pharmacy Information</a>
     <a href="etest.jsp">Test Information</a>
      
    </div>
  </div>   
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
        <td   align="center"><table width="836" border="0" align="center">
          <tr>
            <td width="830" height="37" align="center"><div align="center"><span class="style4 style18"> PATIENT ACKNOWLEDGEMENT </span></div></td>
          </tr>
          <tr>
            <td><table width="856" border="0">
              <tr>
                <td width="850"><table  align="center" width="831" height="10" border="0">
  <tr>
    <td width="825"><table width="854" height="43" border="3" >
   <tr>
      <td width="113" height="33" ><div align="center" class="style21 style3 style19 style25"><strong>Emergency Id</strong></div></td>
      <td width="104"><div align="center" class="style21 style3 style19 style25"><strong>User Id </strong></div></td>
     
	  <td width="117"><div align="center" class="style21 style3 style19 style25"><strong>Name</strong></div></td>
      <td width="206"><div align="center" class="style21 style3 style19 style25"><strong>Description</strong></div></td>
	  <td width="104"><div align="center" class="style21 style3 style19 style25"><strong>Date</strong></div></td>
	  	  <td width="130"><div align="center" class="style21 style3 style19 style25"><strong>Status</strong></div></td>
    </tr>
	
	</table>
   </td>
  </tr>
</table></td>
              </tr>
              <tr>
                <td><table width="856" border="1"  align=center>

    <% int index=0;
	try
	{   
            String a11=null,a12="",a13="";
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
		int flag=0;   

		 String url = "jdbc:mysql://localhost:3306/phr";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
		Statement st=con.createStatement();
                System.out.println("select * from erequest where uname='"+so.getAttribute("un1")+"'");
		ResultSet rs = st.executeQuery("select * from erequest  where uname='"+so.getAttribute("un1")+"'");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{	
       
	 %>
	
    <tr>
      <td width="114" >   
        
              <div align="center">
                 <%=rs.getString(1)%>
               </div></td>
      <td width="109"><div align="center"><%=rs.getString(2)%></div></td>
    
        <td width="128"><div align="center"><%=rs.getString(3)%></div></td>
      <td width="216"><div align="center"><%=rs.getString(4)%></div></td>
      <td width="111"><div align="center"><%=rs.getString(5)%></div></td>
      <td width="138"><div align="center"><%=rs.getString(6)%></div></td>
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
	%><%
	String flag=(String)request.getAttribute("ss");
   String msg="";
		if(flag!=null)
	{
		msg=(String)request.getAttribute("msg");
		
	}
%>
	
<%
String flag1=(String)request.getAttribute("ss1");
	String a1="";
	String a2="";
	String a3="";
	String a4="";
	String a5="";
	String a6="";	
	if(flag1!=null)
	{		
		a1=(String)request.getAttribute("a11");
		a2=(String)request.getAttribute("a12");
		a3=(String)request.getAttribute("a13");
			a4=(String)request.getAttribute("a14");

	}
 %>
  </table></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            </td>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p></td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>

