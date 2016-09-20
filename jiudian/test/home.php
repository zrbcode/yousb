<?php include("config.php")?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>餐饮管理系统</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">
	 <link rel="stylesheet" href="stylesheets/chart.css">
    <script src="lib/jquery-1.8.1.min.js" type="text/javascript"></script>
	<script>
	$(document).ready(function(){
		$(".cli1").click(function(){
			$(".table2").hide();
			$(".table1").show();
		});
		$(".cli2").click(function(){
			$(".table1").hide();
			$(".table2").show();
		})
	});
	</script>
    <!-- Demo page code -->
    
    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
  <!--[if IE 7 ]> <body class="ie ie7"> <![endif]-->
  <!--[if IE 8 ]> <body class="ie ie8"> <![endif]-->
  <!--[if IE 9 ]> <body class="ie ie9"> <![endif]-->
  <!--[if (gt IE 9)|!(IE)]><!--> 
  <body> 
  <!--<![endif]-->
    
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <ul class="nav pull-right">
                    
                    <li id="fat-menu" class="dropdown">
                        <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i> Jack Smith
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="#">Settings</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="sign-in.html">Logout</a></li>
                        </ul>
                    </li>
                    
                </ul>
                <a class="brand" href="index.html"><span class="first">餐饮后台数据统计</span></a>
            </div>
        </div>
    </div>
    

    <div class="container-fluid">
        
        <div class="row-fluid">
            <div class="span3">
                <div class="sidebar-nav">
                  <div class="nav-header" data-toggle="collapse" data-target="#dashboard-menu"><i class="icon-dashboard"></i>Dashboard</div>
                    <ul id="dashboard-menu" class="nav nav-list collapse in">
                        <li><a href="home.php" class="active">营业额统计</a></li>
                        <li><a href="consume.php">消费额统计</a></li>
                        <li><a href="table.php">报表统计</a></li>
                    </ul>
            </div>
        </div>
        <div class="span9">
            <h1 class="page-title">营业额</h1>
<div class="btn-toolbar">
    <button class="btn cli1">日营业额</button>
    <button class="btn cli2">月营业额</button>
  <div class="btn-group">
  </div>
</div>
<div class="well">
    <table class="table table1">
      <thead>
        <tr>
		<th></th>
          <th>餐费</th>
          <th>水酒</th>
          <th>折扣</th>
          <th>其它</th>
          <th>营业收入</th>
          <th style="width: 26px;"></th>
        </tr>
      </thead>
      <tbody>
		 <?php
		 $sql = "select * from `yingye`";
		 $fan = mysql_query($sql);
		 $arr = array();
		 while($res=mysql_fetch_row($fan)){
			$arr[] =$res; 
		 }
		for($i=0;$i<count($arr);$i++){
			$arr[$i]["count"] = $arr[$i][1]+$arr[$i][2]+$arr[$i][3]+$arr[$i][4];
			$fan = mysql_query("select * from `cz` where(`number`={$arr[$i][5]})");
			$tmp = mysql_fetch_assoc($fan);
			$arr[$i][0] = $tmp["name"];
			echo "<tr>
				<th>{$arr[$i][0]}</th>
				<td>{$arr[$i][1]}</td>
				<td>{$arr[$i][2]}</td>
				<td>{$arr[$i][3]}</td>
				<td>{$arr[$i][4]}</td>
				<td>{$arr[$i]['count']}</td>
			</tr>";
		}
		 ?>
      </tbody>
    </table>
    <table class="table table2" style="display:none;">
      <thead>
        <tr>
          <th>餐费</th>
          <th>水酒</th>
          <th>折扣</th>
          <th>其它</th>
          <th>营业收入</th>
          <th style="width: 26px;"></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>100</td>
          <td>1000</td>
          <td>100</td>
          <td>200</td>
          <td>
           1200
          </td>
        </tr>
         <tr>
          <td>100</td>
          <td>1000</td>
          <td>100</td>
          <td>200</td>
          <td>
           1200
          </td>
        </tr>
        
      </tbody>
      <p class="block-heading" data-toggle="collapse" data-target="#chart-container">数据统计</p>
				<div id="chart-container" class="block-body collapse in">
				<div id="line-chart">
					<div class="define-chart-row" data-color="#84d6ff" title="餐费">5000</div>
						<div class="define-chart-row" data-color="#38BCFF" title="水酒">2175</div>
						<div class="define-chart-row" data-color="#00A9FF" title="折扣">11000</div>
						<div class="define-chart-row" data-color="#008DD3" title="其它">78000</div>
						<div class="define-chart-footer">2500</div>
						<div class="define-chart-footer">5000</div>
						<div class="define-chart-footer">10000</div>
						<div class="define-chart-footer">20000</div>
						<div class="define-chart-footer">30000</div>
						<div class="define-chart-footer">50000</div>
						<div class="define-chart-footer">70000</div>
					</div>
				</div>
    </table>
</div>
<div class="pagination">
    <ul>
        <li><a href="#">Prev</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">Next</a></li>
    </ul>
</div>

<div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3 id="myModalLabel">Delete Confirmation</h3>
    </div>
    <div class="modal-body">
        <p class="error-text"><i class="icon-warning-sign modal-icon"></i>Are you sure you want to delete the user?</p>
    </div>
    <div class="modal-footer">
        <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
        <button class="btn btn-danger" data-dismiss="modal">Delete</button>
    </div>
</div>

        </div>
    </div>
    

    
    <footer>
        <p>&copy; 2016 <a href="#"></a></p>
    </footer>
    

    

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="lib/bootstrap/js/bootstrap.js"></script>
            <script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-2.1.1.min.js"><\/script>')</script>
        <script src="http://libs.useso.com/js/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="js/jchart.js"></script>
        <script>
            $(document).ready(function() {
                $("#line-chart").jChart({x_label: "统计图标题"});
                $("#colors_chart").jChart();
            });
        </script>

  </body>
</html>


