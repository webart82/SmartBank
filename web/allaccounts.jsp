<%@page import="com.connect.dbConnect"%>
<%@page import="java.sql.*"%>
<%String name = (String) session.getAttribute("username");

    if (name == null) {
        response.sendRedirect("index.jsp");
    } else {
        if (name.equals("admin")) {
%>

<div id="container">
    <link href="css.css" rel="stylesheet" type="text/css"/>
    <jsp:include page="admin-header.jsp"></jsp:include>


    <div id="content-container">
        <div id="content">
            <center><br/><h2>All Accounts Details:-</h2><br/><br/>

                <%
                    try {
                        Connection con = dbConnect.getConnect();
                        Statement st = con.createStatement();
             ResultSet rs = st.executeQuery("select * from record");%>

                <table width="60%" style="margin: auto" cellpadding="10px;">
                    <tr><td><b>Username</b></td><td><b>Amount</b></td><td><b>Address</b></td><td><b>Phone No.</b></td></b></tr>
                    <% while (rs.next()) {%>
                    <tr><td><%=rs.getString(1)%></td><td><%=rs.getString(3)%></td><td><%=rs.getString(4)%></td><td><%=rs.getString(5)%></td></tr>       	
                    <%} %>
                </table>

                <%} catch (Exception e) {
                        response.sendRedirect("error.jsp");
                    }
                %>

            </center>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </div>

<%} else
            response.sendRedirect("index.jsp");
    }
%>