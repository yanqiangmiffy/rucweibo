<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>欢迎登录</title>
    <link rel="stylesheet" href="${path}css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>
        .col-md-2 img{
            width: 100px;
            height: 100px;
            border: 1px solid #ebebeb;
        }
    </style>
</head>
<body style="background-image: url('images/background.jpg');background-size: cover">
<div class="container" style="padding-top: 40px">
    <nav class="bg-faded">
        <ul class="nav nav-pills float-right">
            <li class="nav-item">
                <a class="nav-link " href="#">主页 <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">关于微博</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">联系我们</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="register">加入我们</a>
            </li>
        </ul>
    </nav>
    <h3 class="text-muted">RUC Weibo</h3>
</div>

<div class="container" style="clear: both;padding-top: 40px;">
    <div class="row">
        <div class="col-md-8" style="width: 400px">
            <div class="row" style="border-bottom: 1px solid #eee">
                <div class="col"><h5 class="text-danger">OnLine RUCER</h5></div>
            </div>
            <div class="row" style="padding-top: 10px;padding-bottom: 10px;">
                <div class="col-md-2"><img src="images/头像.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像.jpg" alt=""></div>
                <div class="col-md-2"><img src="images/头像.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像.jpg" alt=""></div>
                <div class="col-md-2"><img src="images/头像.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像.jpg"  alt=""></div>
            </div>
            <div class="row" style="padding-top: 10px;padding-bottom: 10px;">
                <div class="col-md-2"><img src="images/头像2.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像2.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像2.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像2.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像2.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像2.jpg"  alt=""></div>
            </div>
            <div class="row" style="padding-top: 10px;padding-bottom: 10px;">
                <div class="col-md-2"><img src="images/头像1.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像1.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像1.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像1.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像1.jpg"  alt=""></div>
                <div class="col-md-2"><img src="images/头像1.jpg"  alt=""></div>
            </div>

            <div  style="width: 738px;height: 50px;padding: 15px;border: 1px dashed #63725c">
                <div class="float-right">
                    <a href="" class="text-success">查看更多</a>
                </div>
            </div>
        </div>
        <div class="col-md-4">
        	
            <form action="login" method="post">
                <div class="form-group">
                    <label for="user_nickname">用户名</label>
                    <input type="text" name="user_nickname" id="user_nickname" class="form-control">
                </div>
                <div class="form-group">
                    <label for="user_password">密码</label>
                    <input type="password" name="user_password" id="user_password" class="form-control">
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary form-control" value="登录微博">
                </div>
            </form>
            <font color="red">${requestScope.message}</font>
            <div>
                <span style="display: inline-block">近期热门</span>
                <ul class="list-group">
                    <li class="list-group-item">薛之谦出事了</li>
                    <li class="list-group-item">程序员被骗钱了</li>
                    <li class="list-group-item">鹿晗表白了</li>
                    <li class="list-group-item">薛之谦出轨了</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-light bg-faded rounded navbar-toggleable-md fixed-bottom">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#containerNavbarCenter" aria-controls="containerNavbarCenter" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-md-center" id="containerNavbarCenter">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">RUC Weibo <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">关于我们</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="#">联系我们</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="#">发现我们</a>
            </li>
        </ul>
    	2017 @中国人民大学 designed by quincyqiang
    </div>
    
</nav>
</body>
</html>