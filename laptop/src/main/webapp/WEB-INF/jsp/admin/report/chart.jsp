<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {

            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
               <c:forEach var="o" items="${data}">
                ["${o[0]}",${o[2]}],
                </c:forEach>


            ]);

            var options = {
                title: 'Inventory Data'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>
</head>
<body>
<div id="piechart" style="width: 900px; height: 500px;"></div>
</body>
</html>
