<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('images/background2.jpg');background-size: cover">
<div class="container" style="padding-top: 40px;width: 800px">
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
                <a class="nav-link" href="login">用户登录</a>
            </li>
        </ul>
    </nav>
    <h3 class="text-muted">RUC Weibo</h3>
</div>
<div class="container" style="background-color:white;width: 800px;margin-top: 50px">

    <div class=" text-lg-left text-primary" style="font-size:18px;padding: 15px;margin-bottom: 10px;width: 100%;border-bottom: 1px dashed #c1e2b3">欢迎用户注册</div>
    <div class="row">
        <div class="col-md-8">
            <div class="container" style="border-right: 1px dashed #C1E2B3">
                <form method="post" action="register">
                    <div class="form-group row">
                        <label for="user_nickname" class="col-sm-2 col-form-label">昵称 </label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="user_nickname" id="user_nickname" placeholder="用户昵称  5~10为长度之内">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="user_password" class="col-sm-2 col-form-label">密码</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" name="user_password" id="user_password" placeholder="登录密码">
                        </div>
                    </div>
                    <fieldset class="form-group">
                        <div class="row">
                            <legend class="col-form-legend col-sm-2">性别</legend>
                            <div class="col-sm-10">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="user_gender" id="gridRadios1"
                                               value="女" checked>
                                        女性
                                    </label>
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="user_gender" id="gridRadios2"
                                               value="男">
                                        男性
                                    </label>
                                </div>

                            </div>
                        </div>
                    </fieldset>
                    <div class="form-group row">
                        <label for="user_email" class="col-form-label col-sm-2">邮箱</label>
                        <div  class="col-sm-10">
                            <input type="email" class="form-control" name="user_email" id="user_email" placeholder="用户邮箱">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <button type="submit" id="submit" class="btn btn-primary"> 注 册 </button>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input id="cbox" class="form-check-input" type="checkbox"> 《微博用户网络使用协议》
                                </label>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <div class="col-md-4">
            <h6 class="text-muted text-center">中国人民大学微博使用帮助</h6>

            <ul class="list-group">
                <li class="list-group-item"><a href="">1、已有帐号，直接登录»</a></li>
                <li class="list-group-item"><a href="">2、微博注册操作指南</a></li>
                <li class="list-group-item"><a href="">3、手机注册时提示手机号码已被绑定怎么办</a></li>
                <li class="list-group-item"><a href="">4、注册时提示"你所使用的IP地址异常",该怎么办?</a></li>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#submit").click(function () {
            if(!$("#cbox").is(":checked")){
                alert("请请遵守微博用户协议");
                return false;
            }else{
                $("form").submit();
            }
        });
    });
</script>
</body>
</html>
