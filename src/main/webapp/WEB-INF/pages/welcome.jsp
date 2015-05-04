<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>

        <script src="<c:url value="/resources/core/jquery.1.10.2.min.js" />"></script>
        <script src="<c:url value="/resources/core/jquery.autocomplete.min.js" />"></script>
        <script src="<c:url value="/resources/core/custom.js" />"></script>
        <link href="<c:url value="/resources/core/main.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/core/login.css" />" rel="stylesheet">

    </head>

    <script>


    </script>

    <body bgcolor="wheat">
    <center>
        <hr>
        <h3><strong> ====== Welcome To Online REST Test Tool ======== <span id="date"></span></strong></h3>
        <hr>
    </center>

    <div class="container">

        <div class="login">
            <h1>Login</h1>
            <form id = "myform" method="post" action="/SpringMvcExample/authenticate">
                <p><input type="text" name="login" value="" placeholder="Username or Email"></p>
                <p><input type="password" name="password" value="" placeholder="Password"></p>
                <p class="remember_me">
                    <label>
                        <label>
                            <input type="checkbox" name="remember_me" id="remember_me">
                            Remember me on this computer
                        </label>
                    </label>
                </p>
                <p class="submit"><input id="commit" type="submit" name="commit" value="Login"></p>
            </form>  

            <div id="authmessage"><c:out value="${message}"/></div>  

        </div>

        <div class="login-help">
            <p>Forgot your password? <a href="#">Click here to reset it</a>.</p>
        </div>
    </div>





</body>
</html>