<%-- 
    Document   : contactus
    Created on : Oct 13, 2012, 10:36:53 AM
    Author     : Perumal S
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
                <td width="691"><div align="center"><span class="style23">A DATA INTEGRITY AND RELIABLE AUTHENTICATION SCHEME FOR STORING AND RETRIEVAL OF SENSITIVE HEALTH CARE RECORDS IN CLOUD </span></div></td>
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
	
  </div>   <div class="dropdown">
    <button class="dropbtn" input type="hidden">Disease</button>
    <div class="dropdown-content">
      <a href="d4.jsp">Generalization</a>
	  <a href="d5.jsp">Bucketization</a>
	   <a href="d6.jsp">Slicing</a>
	    <a href="d7.jsp">K-Anonymity</a>
		
    </div>
	
  </div><a href="login.jsp">Log_out</a>
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
        <td height="376"  align="center"><table width="921" border="0" align="center">
          <tr>
            <td width="915" height="37">ONE ATTRIBUTE </td>
          </tr>
          <tr>
            <td height="68"><table width="904" border="1" align="center">
              <tr>
                <td width="892"><table width="898" height="22" border="0" align="center"> 
                  <tr>
                   
                    <td width="156" align="center">AGE</td>
                    <td width="225" align="center">SEX</td>
                    <td width="219" align="center">ZIPCODE</td>
                     <td width="280" align="center">DISEASE</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><table width="902" border="0"><% 
	try
	{  
           
	

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/phr";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();
		ResultSet rs = st.executeQuery("Select age,sex,zipcode,rpad(disease,5,' ') as disease from microdata order by age");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
                  <tr>
                    <td width="159"  align="center" > <%=rs.getString(1)%></td>
                    <td width="227"  align="center"> <%=rs.getString(2)%></td>
                    <td width="220"  align="center"> <%=rs.getString(3)%></td>
                    <td width="278" align="center"> <%=rs.getString(4)%></td>
                   
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
            </table></td>
          </tr>
          <tr>
            <td height="23">TWO ATTRIBUTE<table width="904" border="1" align="center">
              <tr>
                <td width="892"><table width="904" height="22" border="0" align="center"> 
                  <tr>
                  
                    <td width="168" align="center">AGE</td>
                    <td width="252" align="center">SEX</td>
                    <td width="236" align="center">ZIPCODE</td>
                     <td width="230" align="center">DISEASE</td>

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
		ResultSet rs = st.executeQuery("SELECT age,Concat('(',Age,',',Sex,')'),Concat('(',zipcode,':',rpad(disease,5,' '),')')  FROM  microdata m where age<=54 order by age");
		if(rs!=null)
			{
                            while(rs.next())
		{						
	 %>
                  <tr>
                    <td width="46" align="center"> <%=rs.getString(1)%></td>
                    <td width="67" align="center"> <%=rs.getString(2)%></td>
                    <td width="60" align="center"> <%=rs.getString(3)%></td>
                
                  </tr> <%
 
													}
														ResultSet rs1 = st.executeQuery("SELECT age,Concat('(',Age,',',Sex,')'),Concat('(',zipcode,':',rpad(disease,5,' '),')')  FROM  microdata m where age<=54 order by age");
		if(rs1!=null)
			{
   
    while(rs1.next())
		{						
	 %>
                  <tr>
                    <td width="46" align="center"> <%=rs1.getString(1)%></td>
                    <td width="67" align="center"> <%=rs1.getString(2)%></td>
                    <td width="60" align="center"> <%=rs1.getString(3)%></td>
             
              
                  </tr> <%
 
													}
													} else 
													{
													%>
    No items found....!
    <%
													}
													}
        }catch (Exception e) {
		out.println(e);
	}
	%>
                </table></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td></td>
          </tr>
           <tr>
            <td height="23">SLICING<table width="904" border="1" align="center">
              <tr>
                <td width="892"><table width="898" height="22" border="0" align="center"> 
                  <tr>
                   
                    <td width="156" align="center">AGE</td>
                    <td width="225" align="center">SEX</td>
                    <td width="219" align="center">ZIPCODE</td>
                     <td width="280" align="center">DISEASE</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><table width="902" border="0"><% 
	try
	{  
           
	

               String a11=request.getParameter("a1");
               String url="jdbc:mysql://localhost:3306/phr";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,"root","root");
		Statement st=con.createStatement();Statement st1=con.createStatement();
		ResultSet rs = st.executeQuery("SELECT age,Concat('(',Age,',',Sex,')'),Concat('(',zipcode,':',rpad(disease,5,' '),')'),Concat('(',Age,':',Sex,':',rpad(disease,5,' '),')')  FROM  microdata m where age <=54 order by age");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
                  <tr>
                    <td width="159"  align="center"> <%=rs.getString(1)%></td>
                    <td width="227"  align="center"> <%=rs.getString(2)%></td>
                    <td width="220" align="center"> <%=rs.getString(3)%></td>
                    <td width="278" align="center"> <%=rs.getString(4)%></td>
                   
                  </tr> <%
 
													}
													ResultSet rs1 = st1.executeQuery("SELECT age,Concat('(',Age,',',Sex,')'),Concat('(',zipcode,':',rpad(disease,5,' '),')'),Concat('(',Age,':',Sex,':',rpad(disease,5,' '),')')  FROM  microdata m where age >54 order by age");
		if(rs1!=null)
			{%>
   
    <% while(rs1.next())
		{						
	 %>
                  <tr>
                    <td width="159"  align="center"> <%=rs1.getString(1)%></td>
                    <td width="227" align="center"> <%=rs1.getString(2)%></td>
                    <td width="220" align="center"> <%=rs1.getString(3)%></td>
                    <td width="278" align="center"> <%=rs1.getString(4)%></td>
                   
                  </tr> <%
 
													}
													} else 
													{
													%>
    No items found....!
    <%
													}
													}
        }catch (Exception e) {
		out.println(e);
	}
	%>
                </table></td>
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