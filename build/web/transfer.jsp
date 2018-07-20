<%String name = (String) session.getAttribute("username");
    String s = (String) session.getAttribute("transfer_status");

    if (name == null) {
        response.sendRedirect("index.jsp");
    } else {
        if (!name.equals("admin")) {
%>
<div id="container">
    <link href="css.css" rel="stylesheet" type="text/css"/>
    <jsp:include page="home-header.jsp"></jsp:include>

        <script type="text/javascript">

            function check()
            {

                if (document.f1.amount.value == "")
                {
                    alert("plz enter amount!");
                    return false;
                }

                if (document.f1.user.value == "")
                {
                    alert("plz enter username!");
                    return false;
                }

            }
        </script>

        <div id="content-container">
            <div id="content">
                <center>

                <%if (s.equals("username_not_found")) {%>
                <h2 style="color: red;">Account Not Found!!</h2><br/>
                <%session.setAttribute("transfer_status", "no_status");
                    }

                    if (s.equals("true")) {%>
                <h2 style="color: red;">Transfer Successfull!!</h2><br/>
                <%session.setAttribute("transfer_status", "no_status");
                    }

                    if (s.equals("insufficient_amount")) {%><h2 style="color: red;">Insufficient Amount!!</h2><br/><%
                            session.setAttribute("transfer_status", "no_status");
                        }%>   

                <br><br><h2>Transfer :-</h2><br/><br/>
                <table width="60%" style="margin: auto" cellpadding="5px;">
                    <form action="transfermoney.jsp" name="f1" onsubmit="return check();">
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
                                <b>Destination Username:</b>
                            </td>
                            <td>
                                <input type="text" name="user"/>
                            </td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <input type="submit" value="Transfer"/>
                                <input type="reset" value="Clear"/>
                            </td>
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