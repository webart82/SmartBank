<%String name = (String) session.getAttribute("username");%>

<div id="header">
    <img src="images/logo.jpg"/>
</div>

<div id="navigation">
    <ul>
        <%
         if (name != null) {%>
        <li><a href="home.jsp">View Account</a></li>
        <li><a href="transfer.jsp">Transfer Money</a></li>
        <li><a href="withdraw.jsp">Withdraw Money</a></li>
        <li> <a href="logout.jsp">Logout</a></li>
            <%}%>

        <%
           if (name == null) {%>
        <li><p>    Welcome Guest </p></li>
            <%} else {%>
        <li><p>  Welcome <%=name%> </p></li>
            <%}%>
    </ul>
</div>