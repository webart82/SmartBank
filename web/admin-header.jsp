<%String name = (String) session.getAttribute("username");%>
<div id="header">
    <img src="images/logo.jpg"/>

</div>


<div id="navigation">
    <ul>
        <li><a href="allaccounts.jsp">Show All Accounts</a></li>
        <li><a href="register.jsp">Open Account</a></li>
        <li><a href="deposit.jsp">Deposit</a></li>
        <li><a href="delete.jsp">Close Account</a></li>
        <li> <a href="logout.jsp">Logout</a></li>
        <%
           if (name == null) {%>
        <li><p>    Welcome Guest </p></li>
            <%} else {%>
        <li><p>  Welcome <%=name%> </p></li>
            <%}%>

    </ul>   
</div>