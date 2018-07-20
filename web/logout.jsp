<%String name = (String) session.getAttribute("username");

    if (name == null) {
        response.sendRedirect("index.jsp");
    } else {
%>
<div id="container">
    <link href="css.css" rel="stylesheet" type="text/css"/>

    <%session.invalidate();%>

    <jsp:include page="header.jsp"></jsp:include>

        <div id="content-container">
            <div id="content">
                <center>
                    <h2 style="color: green; margin-bottom: 40px;">You are logged out!!</h2>
                <jsp:include page="login.jsp"></jsp:include>
                </center>
            </div>

            <div id="aside">

            </div>

        </div>
    <jsp:include page="footer.jsp"></jsp:include>

    </div>
<%}%>