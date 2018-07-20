<%String name = (String) session.getAttribute("username");
    String s = (String) session.getAttribute("withdraw_status");

    if (name == null) {
        response.sendRedirect("index.jsp");
    } else {
        if (!name.equals("admin")) {
%>

<script type="text/javascript">
    function check()
    {

        if (document.f1.amount.value == "")
        {
            alert("plz enter amount!");
            return false;
        }

    }
</script>


<div id="container">
    <link href="css.css" rel="stylesheet" type="text/css"/>
    <jsp:include page="home-header.jsp"></jsp:include>

        <div id="content-container">
            <div id="content">
                <center>

                <%if (s.equals("true")) {%>
                <h2 style="color: red;">Withdraw Successfull!!</h2><br/>
                <%session.setAttribute("withdraw_status", "no_status");
                    }

                    if (s.equals("false")) {%>
                <h2 style="color: red;">Insufficient Amount!!</h2><br/>
                <%session.setAttribute("withdraw_status", "no_status");
    }%>    

                <h2>Withdraw :-</h2><br/>
                <table width="60%" style="margin: auto">
                <form action="withdrawBean.jsp" name="f1" onsubmit="return check();">
                    <tr>
                        <td>
                            <b>Amount:</b>
                        </td>
                        <td>
                            <input type="text" name="amount"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Amount:</b>
                        </td>
                        <td>
                            <input type="submit" value="Withdraw"/> <input type="reset" value="Clear"/>
                        </td>
                    </tr>
                </form>
                </table>
                </center>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </div>
<%} else
            response.sendRedirect("index.jsp");
    }


%>