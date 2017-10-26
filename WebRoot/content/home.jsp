<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>微博首页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <nav class="navbar  navbar-light bg-faded rounded navbar-toggleable-md" >
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#containerNavbar" aria-controls="containerNavbar" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">Navbar</a>

        <div class="collapse navbar-collapse" id="containerNavbar">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="http://example.com" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown04">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
            </ul>
            <form class="form-inline my-2 my-md-0">
                欢迎闫强 注销
            </form>
        </div>
    </nav>

  <!--  <div class="jumbotron">
        <div class="col-sm-8 mx-auto">
            <h1>Navbar examples</h1>
            <p>This example is a quick exercise to illustrate how the navbar and its contents work. Some navbars extend the width of the viewport, others are confined within a <code>.container</code>. For positioning of navbars, checkout the <a href="../navbar-top/">top</a> and <a href="../navbar-top-fixed/">fixed top</a> examples.</p>
            <p>At the smallest breakpoint, the collapse plugin is used to hide the links and show a menu button to toggle the collapsed content.</p>
            <p>
                <a class="btn btn-primary" href="../../components/navbar/" role="button">View navbar docs &raquo;</a>
            </p>
        </div>
    </div>-->
</div>
<div class="container" style="margin-top: 40px">
    <div class="row">
        <div class=" col-md-8">
            <form action="">
                <div class="form-group">
                    <div class="row" style="font-size: larger">
                        <div class="col-md-3">
                            <label for="exampleFormControlTextarea1" class="text-info">发表微博</label>
                        </div>
                        <div class="push-5 col-md-4">
                            <span class="text-success" style="display: inline-block;padding: 5px;font-family: 华文新魏">有什么新鲜事要告诉大家</span>
                        </div>
                    </div>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="7" placeholder="可以输入200字"></textarea>
                </div>
            </form>
            <div class="text-muted">
                全部 关注 <input type="text"> <button>搜索</button>
            </div>
            <div class="row">
                <div class="col-sm-2">
                    用户头像
                </div>
                <div class="col-sm-10">
                    用户名     微博内容
                    <div>
                        微博发布时间：2017-09-04   收藏   转发  赞   评论
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-3 bg-faded">
            <img src="121" alt="">用户名
            <div>
                关注 2|粉丝 3|微博 4
            </div>
        </div>
    </div>
</div>


</body>
</html>
