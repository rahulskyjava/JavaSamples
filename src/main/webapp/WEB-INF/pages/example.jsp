<!--http://www.dynatable.com/?perPage=20#processing-indicator-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <script src="<c:url value="/resources/core/jquery.1.10.2.min.js" />"></script>
        <script src="<c:url value="/resources/core/jquery.dataTables.min.js" />"></script>
        <script src="<c:url value="/resources/core/dataTables.jqueryui.js" />"></script>
        <link href="<c:url value="/resources/core/dataTables.jqueryui.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/core/jquery-ui.css" />" rel="stylesheet">
        <link href="<c:url value="/resources/core/pure-min.css" />" rel="stylesheet">     


        <script>
            $(document).ready(function () {
                $('#example').dataTable();
            });

            $(document).ready(function () {
                $("#newaouth").click(function () {
                    $("#testsuite").hide(2000);
                });
//                $("#show").click(function () {
//                    $("p").show();
//                });
            });
        </script>
        <style scoped>

            .button-success,
            .button-error,
            .button-warning,
            .button-secondary {
                color: white;
                border-radius: 2px;
                text-shadow: 0 1px 1px rgba(0, 0, 0, 0.2);
            }

            .button-success {
                background: rgb(28, 184, 65); /* this is a green */
            }

            .button-error {
                background: rgb(202, 60, 60); /* this is a maroon */
            }

            .button-warning {
                background: rgb(223, 117, 20); /* this is an orange */
            }

            .button-secondary {
                background: #b3c0c8; /* this is a light blue */
            }

            .button-yellow {
                background: yellow; /* this is a light blue */
            }




            body:before, body:after {
                content: "";
                position: fixed;
                background: #b3c0c8;
                left: 0;
                right: 0;
                height: 0;
            }
            body:before {
                top: 10px;
            }
            body:after {
                bottom: 10px;
            }
            body {
                border-left: 40px solid #b3c0c8;
                border-right: 40px solid #b3c0c8;  
            }
        </style>

    </head>
    <body bgcolor="#b3c0c8">
    <centre>
        <br><br>     
        <strong style="font-family:courier">Hello Rahul Welcome back</strong>   
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="button-success pure-button">View Test Suit</button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="button-success pure-button">Search Test Suit</button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button id="newaouth" class="button-error pure-button">New OAuth</button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="button-error pure-button">Feedback/Queries</button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="button-warning pure-button">New Test Suite</button>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <button class="button-secondary pure-button">Log Out</button>

        <br><br>
        <hr>
        <br>
        <centre id="testsuite">
        <table>
            <tr>
                <td>Test Suit &nbsp;&nbsp;: &nbsp;&nbsp;</td>
                <td><strong><p style="font-family:courier">Syllabus CDG Feature</p></strong></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="button-error pure-button">Run Test Suite</button>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="button-error pure-button">Download Test Suite</button>
                </td>
            </tr>
        </table>
        <br>
        <hr>
        
            <table id="example" class="display" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Test Case</th>
                        <th>Position</th>
                        <th>Status</th>
                        <th>Response Time(ms)</th>
                        <th>date</th>
                        <th>Action</th>
                    </tr>
                </thead>

                <tfoot>
                    <tr>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Age</th>
                        <th>Start date</th>
                        <th>Salary</th>
                    </tr>
                </tfoot>

                <tbody>
                    <tr>
                        <td>Tiger Nixon</td>
                        <td><button class="button-success pure-button">Run</button></td>
                        <td><button class="button-success pure-button">200</button></td>
                        <td><button class="button-yellow pure-button">View Response</button></td>
                        <td>2011/04/25</td>
                        <td>
                            <button class="button-error pure-button">Delete</button>
                            <button class="button-success pure-button">View/Update</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Garrett Winters</td>
                        <td><button class="button-success pure-button">Run</button></td>
                        <td><button class="button-error pure-button">503</button></td>
                        <td><button class="button-yellow pure-button">View Response</button></td>
                        <td>2011/07/25</td>
                        <td>
                            <button class="button-error pure-button">Delete</button>
                            <button class="button-success pure-button">View/Update</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Ashton Cox</td>
                        <td><button class="button-success pure-button">Run</button></td>
                        <td><button class="button-warning pure-button">null</button></td>
                        <td><button class="button-yellow pure-button">View Response</button></td>
                        <td>2009/01/12</td>
                        <td>
                            <button class="button-error pure-button">Delete</button>
                            <button class="button-success pure-button">View/Update</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Cedric Kelly</td>
                        <td><button class="button-success pure-button">Run</button></td>
                        <td>Edinburgh</td>
                        <td><button class="button-yellow pure-button">View Response</button></td>
                        <td>2012/03/29</td>
                        <td>
                            <button class="button-error pure-button">Delete</button>
                            <button class="button-success pure-button">View/Update</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Airi Satou</td>
                        <td><button class="button-success pure-button">Run</button></td>
                        <td>Tokyo</td>
                        <td><button class="button-yellow pure-button">View Response</button></td>
                        <td>2008/11/28</td>
                        <td>
                            <button class="button-error pure-button">Delete</button>
                            <button class="button-success pure-button">View/Update</button>
                        </td>
                    </tr>
                </tbody>
            </table>
            <button class="button-success pure-button">Add Test Scenario</button>
        </centre>

    </centre>
</body>
</html>