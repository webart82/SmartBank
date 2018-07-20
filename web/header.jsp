<%String name = (String) session.getAttribute("username");%>

<div id="header">
    <img src="images/logo.jpg"/>

</div>

<div id="navigation">
    <ul>

        <li><a href="index.jsp">Home</a></li>
            <%
                            if (name != null) {%>
        <li> <a href="home.jsp">My Account</a></li>
            <%}%>

            <%
                            if (name != null) {%>
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
