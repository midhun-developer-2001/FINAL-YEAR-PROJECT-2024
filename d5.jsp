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
        <td height="376"  align="center"><table width="897" border="1" align="center">
          <tr>
            <td width="891" height="37" align="center">MULTI-BASED GENERATION </td>
          </tr>
          <tr>
            <td><table width="904" border="0" align="center">
              <tr>
                <td width="892"><table width="898" height="22" border="0" align="center"> 
                  <tr>
                   
                    <td width="156" align="center">AGE</td>
                    <td width="233" align="center">SEX</td>
                    <td width="220" align="center">ZIPCODE</td>
                     <td width="271" align="center">DISEASE</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td><table width="902" border="0"><% 
	    try
		{
		 Connection con;
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phr","root","root");
     Statement st = con.createStatement();
       Statement st1 = con.createStatement();
              Statement st2 = con.createStatement();
                     Statement st3 = con.createStatement();
                            Statement st4 = con.createStatement();
                                   Statement st5 = con.createStatement();
                            Statement st6 = con.createStatement();
                             Statement st7 = con.createStatement();
              Statement st8 = con.createStatement();
                     Statement st9 = con.createStatement();
                            Statement st10 = con.createStatement();
                                   Statement st11 = con.createStatement();
                                   Statement st13 = con.createStatement();
     // ResultSet  rs12 = st13.executeQuery("truncate table pro2");
                            String max=null,min=null,s1="",s2="",s3="",s4="",s5="",s6="",s7="";
                             String m1="",m2="",m3="",m4="",m5="",m6="",m7="";
                                String z1="",z2="",z3="",z4="",z5="",z6="",z7="";
int i=0,v1=0,v2=0,v3=0;
		ResultSet rs,rs1,rs2,rs3,rs4,rs5,rs6,rs7,rs8,rs9,rs10;
		
                                        
                rs2=st2.executeQuery("SELECT age, count(age )FROM microdata m where age between 20 and 53   group by age");
                while(rs2.next()){
                    
                        s1=rs2.getString(1)+':'+rs2.getString(2);
                        s2=s1+','+s2;
//                         System.out.println(s1);
//                           System.out.println(s2);
                  }
                   System.out.println(s2);
                     rs4=st4.executeQuery("SELECT sex, count(sex )FROM microdata m where age between 20 and 53   group by sex");
                while(rs4.next()){
                    
                        m1=rs4.getString(1)+':'+rs4.getString(2);
                        m2=m1+','+m2;
//                         System.out.println(m1);
//                           System.out.println(m2);
                  }
                 System.out.println(m2);
                    rs7=st7.executeQuery("SELECT zipcode, count(zipcode )FROM microdata m where age between 20 and 53   group by Zipcode");
                while(rs7.next()){
                    
                        z1=rs7.getString(1)+':'+rs7.getString(2);
                        z2=z1+','+z2;
//                         System.out.println("Zipcode"+ z1);
//                           System.out.println("Zipcode"+ z2);
                  }
                  System.out.println( z2);
               rs3=st3.executeQuery("SELECT age, count(age )FROM microdata m where age between 52 and 64   group by age");
                while(rs3.next()){
                    
                        s3=rs3.getString(1)+':'+rs3.getString(2);
                        s4=s3+s4;
//                         System.out.println(s3);
                 //          System.out.println(s4);
                  }
                System.out.println(s4);
     rs5=st5.executeQuery("SELECT sex, count(sex )FROM microdata m where age between 54 and 64   group by sex");
                while(rs5.next()){
                    
                        m3=rs5.getString(1)+':'+rs5.getString(2);
                        m4=m3+','+m4;
//                         System.out.println(m3);
//                           System.out.println(m4);
                  }
                System.out.println(m4);
                     rs6=st6.executeQuery("SELECT zipcode, count(zipcode )FROM microdata m where age between 54 and 64   group by zipcode");
                while(rs6.next()){
                    
                        z3=rs6.getString(1)+':'+rs6.getString(2);
                       z4=z3+','+z4;
//                         System.out.println("Zipcode"+ z3);
//                           System.out.println("Zipcode"+ z4);
                  }
                 System.out.println( z4);
                  rs8=st8.executeQuery("SELECT id,age,rpad(disease,5,' '),disease FROM microdata m ");
                while(rs8.next()){
                   
                    v1=Integer.parseInt(rs8.getString(2));
                    if(v1!=0){
                    if((v1<=52))
                    {
                      
                        System.out.println( z6);
                          
                      //    int v=st4.executeUpdate("insert into pro2 values('"+rs8.getString(1) +"','"+ m2 +"','"+ s2 +"','"+ z2 +"','"+ rs8.getString(4) +"')");
               
               
                    
                      
                    
                    }
//                        z3=rs6.getString(1)+':'+rs6.getString(2);
//                       z4=z3+','+z4;
//                         System.out.println("Zipcode"+ z3);
//                           System.out.println("Zipcode"+ z4);
                  }else{
                        
                    }
                  
	
              						
	 %>
                  <tr>
                    <td width="159" align="center"> <%=m2%></td>
                    <td width="227" align="center"> <%=s2%></td>
                    <td width="220" align="center"> <%=z2%></td>
                    <td width="278" align="center"> <%=rs8.getString(4)%></td>
                   
                  </tr> 
                   <tr>
                    <td width="159" align="center"> <%=m4%></td>
                    <td width="227" align="center"> <%=s4%></td>
                    <td width="220" align="center"> <%=z4%></td>
                    <td width="278" align="center"> <%=rs8.getString(4)%></td>
                   
                  </tr> 

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
            <td height="23" align="center">BUCKETIZED</td>
          </tr>
          <tr>
            <td><table width="904" border="0" align="center">
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
		ResultSet rs = st.executeQuery("select IF(REPLACE(age, 'F', '')<54, '20-52', '52-64') ,RPAD(RPAD(sex,0,'*'),1,'*'),RPAD(RPAD(zipcode,3,'*'),5,'*'),SUBSTRING(disease,1,4 )from microdata order by age , zipcode asc");
		if(rs!=null)
			{%>
   
    <% while(rs.next())
		{						
	 %>
                  <tr>
                    <td width="159" align="center"> <%=rs.getString(1)%></td>
                    <td width="227" align="center"> <%=rs.getString(2)%></td>
                    <td width="220" align="center"> <%=rs.getString(3)%></td>
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
        </table></td>
      </tr>
          <tr>
        <td>&nbsp;</td>
      </tr>
    </table>
    
</form>
    </body>
</html>
