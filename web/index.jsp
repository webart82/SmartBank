<div id="container">
    <%String name = (String) session.getAttribute("username");
        session.setAttribute("contact_status", "null");
    %>

    <link href="css.css" rel="stylesheet" type="text/css"/>
    <jsp:include page="header.jsp"></jsp:include>

        <div id="content-container">
            <div id="content" style="margin-top: 10%;">
                <center>
                <%
            if (name == null) {%>
            

            <jsp:include page="login.jsp"></jsp:include>

            <%} else {%>
            <%}%>
            </center>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>

</div>
