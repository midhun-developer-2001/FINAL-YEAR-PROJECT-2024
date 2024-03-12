<%-- 
    Document   : apharmacy
    Created on : Mar 16, 2022, 7:23:59 PM
    Author     : windows
--%>
<%@page import="dataset.AESDecryption"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
	font-size: 24px;
}
.style19 {font-size: 14px}
.style20 {color: #000000}
.style23 {color: #336600; font-weight: bold; font-size: 18px; }
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
                <td width="707" align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD </span></td>
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
          <p> <span class="style10">Success Stories | Mankarious</span></p></td>
  </tr>
</table>
</td>
      </tr>
      <tr>
        <td height="376"  align="center"><table width="947" border="0">
          <tr>
            <td width="937">&nbsp;</td>
          </tr>
          <tr>
            <td><table width="916" border="0" align="center">
  <tr>
    <td width="910" height="28" align="center"><span class="style20 style23"><strong>Test Description</strong></span></td>
  </tr>
  <tr>
    <td height="110"><table width="883" border="0" align="center">
              <tr>
                <td width="877"><table width="877" height="43" border="3" >
   <tr>
      <td width="46" height="33" ><div align="center" class="style21 style3 style19 style20"><strong>TId</strong></div></td>
      <td width="75"><div align="center" class="style21 style3 style19 style20"><strong>User Id </strong></div></td>
     
	  <td width="126"><div align="center" class="style21 style3 style19 style20"><strong>Prescription</strong></div></td>
      <td width="106"><div align="center" class="style21 style3 style19 style20"><strong>No of Tablet</strong></div></td>
	    <td width="125"><div align="center" class="style21 style3 style19 style20"><strong>Morning</strong></div></td>
      <td width="130"><div align="center" class="style21 style3 style19 style20"><strong>Afternoon</strong></div></td>
       <td width="104"><div align="center" class="style21 style3 style19 style20"><strong>Evening</strong></div></td>
      <td width="109"><div align="center" class="style21 style3 style19 style20"><strong>Night</strong></div></td>
    </tr>
	
	</table></td>
              </tr>
              <tr>
                <td><table width="875" border="1"  align=center>

    <% int index=0;
	try
	{   
   AESDecryption dsc=new AESDecryption();
            String a11=null;
             	   HttpSession so = request.getSession(true);
 System.out.println(a11);
		int flag=0;
		 String url = "jdbc:mysql://localhost:3306/phr";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, "root", "root");
		Statement st=con.createStatement();
                System.out.println("select * from dpharmacy   where uname='"+so.getAttribute("un1")+"'");
		ResultSet rs = st.executeQuery("select * from dpharmacy ");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
	
    <tr>
      <td width="48" >   
        
              <div align="center">
              <%=rs.getString(1)%>
               </div></td>
      <td width="78"><div align="center"><%=rs.getString(4)%></div></td>
     
    <td width="123"><div align="center"><%=dsc.toDeycrypt(rs.getString(8))%></div></td>
      <td width="105"><div align="center"><%=dsc.toDeycrypt(rs.getString(9))%></div></td>
	         <td width="124"><div align="center"><%=dsc.toDeycrypt(rs.getString(10))%></div></td>
      <td width="133"><div align="center"><%=dsc.toDeycrypt(rs.getString(11))%></div></td>
        <td width="103"><div align="center"><%=dsc.toDeycrypt(rs.getString(12))%></div></td>
      <td width="109"><div align="center"><%=dsc.toDeycrypt(rs.getString(13))%></div></td>
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
	

  </table></td>
              </tr>
            </table></td>
  </tr>
</table></td>
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

