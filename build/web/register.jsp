
<%String name = (String) session.getAttribute("username");
    String s = (String) session.getAttribute("register_status");

    if (name == null) {
        response.sendRedirect("index.jsp");
    } else {
        if (name.equals("admin")) {
%>

<script type="text/javascript">

    function check()
    {
        if (document.f1.username.value == "")
        {
            alert("plz enter username!");
            return false;
        }

        if (document.f1.password.value == "")
        {
            alert("plz enter password!");
            return false;
        }

        if (document.f1.password.value != document.f1.repassword.value)
        {
            alert("password does not match!");
            return false;
        }

        if (document.f1.amount.value == "")
        {
            alert("plz enter amount!");
            return false;
        }

        if (document.f1.address.value == "")
        {
            alert("plz enter address!");
            return false;
        }

        if (document.f1.phone.value == "")
        {
            alert("plz enter phone no.!");
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

                <%if (s.equals("register")) {%>
                <h2 style="color: red;">Account Opened!!</h2><br/>
                <%session.setAttribute("register_status", "no_status");
                    }

                    if (s.equals("error")) {%><h2 style="color: red;">Account Already Exists!!</h2><br/><%
                            session.setAttribute("register_status", "no_status");
                        }%>


                <br/><h2>Open Account :-</h2><br/><br/>
                <table width="60%" style="margin: auto" cellpadding="5px">
                <form name="f1" action="registerBean.jsp" onsubmit="return check();">
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
                            <b>Password: </b>
                        </td>
                        <td>
                            <input type="password" name="password"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Amount: </b>
                        </td>
                        <td>
                            <input type="text" name="amount"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Address: </b>
                        </td>
                        <td>
                            <input type="text" name="address"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Phone No: </b>
                        </td>
                        <td>
                            <input type="text" name="phone"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            <input type="submit" value="Submit"/> <input type="reset" value="Clear"/>
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