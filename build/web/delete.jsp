<%String name = (String) session.getAttribute("username");
    String s = (String) session.getAttribute("delete_status");

    if (name == null) {
        response.sendRedirect("index.jsp");
    } else {
        if (name.equals("admin")) {%>
<script type="text/javascript">

    function check()
    {
        if (document.f1.username.value == "")
        {
            alert("plz enter username!");
            return false;
        }
    }
</script>


<div id="container">
    <link href="css.css" rel="stylesheet" type="text/css"/>
    <jsp:include page="admin-header.jsp"></jsp:include>

    <div id="content-container">
        <div id="content">
            <center>

                <%if (s.equals("deleted")) {%>
                <h2 style="color: red;">Account Closed!!</h2><br/>
                <%session.setAttribute("delete_status", "no_status");
                    }

                    if (s.equals("not_found")) {%><h2 style="color: red;">Account Not Found!!</h2><br/><%
        session.setAttribute("delete_status", "no_status");
    }%>

                <br><h2>Close Account :-</h2><br/><br/>
                <table width="60%" style="margin: auto" cellpadding="5px">
                    <form name="f1" action="deleteBean.jsp" onsubmit="return check();">
                        <tr>
                            <td>
                                <b>Username: </b>
                            </td>
                            <td>
                                <input type="text" name="username"/>
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <input type="submit" value="Submit"/> <input type="reset" value="Clear"/>
                            </td>
                        </tr>
                    </form></table></center>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </div>

<%} else
            response.sendRedirect("index.jsp");
    }
%>