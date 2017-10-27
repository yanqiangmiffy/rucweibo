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
        <a class="navbar-brand" href="#">RucWeibo</a>

        <div class="collapse navbar-collapse" id="containerNavbar">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">首页 <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">我的好友</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">我的动态</a>
                </li>

            </ul>
            <div class="form-inline my-2 my-md-0">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-primary" href="" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img src="images/头像.jpg" height="20px" width="20px" alt="头像" style="border-radius: 3px">
                        </a>
                        <div class="dropdown-menu" aria-labelledby="dropdown04">
                            <a class="dropdown-item disabled" href="#">闫强</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">我的微博</a>
                            <a class="dropdown-item" href="#">个人资料</a>
                            <a class="dropdown-item" href="#">修改密码</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-info"  href="#">注销</a>
                    </li>
                </ul>

            </div>
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
            <div class="text-muted" style="background-color: rgba(224,235,249,0.72)" >
                <form class="form-inline">
                    <button  class="btn btn-warning">全部微博</button>
                    <button  class=" btn btn-primary">我的关注</button>
                    <div class="form-group mx-sm-3">
                        <label for="inputPassword2" class="sr-only">搜索</label>
                        <input type="text" class="form-control" id="inputPassword2" placeholder="搜一搜">
                    </div>
                    <button type="submit" class="btn btn-primary">搜索</button>
                </form>
            </div>
            <div class="container" style="margin-top: 5px">
                <div class="row" style="background-color: #eae6dd;border-bottom:solid 1px  #c4e3f3">
                    <div class="col-sm-1" style="padding: 5px">
                        <img  width="50px" style="" src="images/头像.jpg" alt="">
                    </div>
                    <div class="col-sm-10" style="padding: 0px;">
                        <div style="">
                            闫强 ：    今心情不错今天我的心情不错今天我的心情不错
                        </div>
                        <div class="row" style="padding: 5px">
                            <div class="col-sm-4">
                                2017-09-04
                            </div>
                            <div class="col-sm-8 text-center">
                                收藏(1)   转发(1)  赞(1)   评论(1)
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="background-color: #eae6dd;border-bottom:solid 1px  #c4e3f3">
                    <div class="col-sm-1" style="padding: 5px">
                        <img  width="50px" style="" src="images/头像.jpg" alt="">
                    </div>
                    <div class="col-sm-10" style="padding: 0px;">
                        <div style="">
                            闫强 ：    今心情不错今天我的心情不错今天我的心情不错
                        </div>
                        <div class="row" style="padding: 5px">
                            <div class="col-sm-4">
                                2017-09-04
                            </div>
                            <div class="col-sm-8 text-center">
                                收藏(1)   转发(1)  赞(1)   评论(1)
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-3 bg-faded">
            <div class="row" style="padding: 10px">
                <div class="col-sm-3">
                    <img src="images/头像.jpg" width="50px" alt="">

                </div>
                <div class="col-sm-4 text-center" style="padding: 5px">
                    <h3>闫强</h3>
                </div>
            </div>

            <div style="padding: 10px">
                关注 2|粉丝 3|微博 4
            </div>
            <ul class="list-group">
                <a href="" class="list-group-item">明天要数学考试好紧张</a>
                <a href="" class="list-group-item">明天要数学考试好紧张</a>
                <a href="" class="list-group-item">明天要数学考试好紧张</a>
                <a href="" class="list-group-item">明天要数学考试好紧张</a>
            </ul>
        </div>
    </div>
</div>


</body>
</html>

