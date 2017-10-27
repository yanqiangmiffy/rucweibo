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
    <title>修改密码</title>
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
    </div>
    <div class="container">
        <div class="row" >
            <div class="push-2  col-md-8" style="padding: 10px;border-bottom: dashed 1px cadetblue;">
                <h2>修改密码</h2>
            </div>
        </div>
        <div class="row">
            <div class="push-2 col-md-8" style="margin-top: 10px">
                <form id="password_form">
                    <div class="form-group row">
                        <label for="o_password" class="col-sm-3 col-form-label">原密码</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="o_password"  name="o_password" placeholder="原始密码">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="n_password" class="col-sm-3 col-form-label">新密码</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="n_password" name="n_password" placeholder="填写新密码">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="c_password" class="col-sm-3 col-form-label">确认密码</label>
                        <div class="col-sm-9">
                            <input type="password" class="form-control" id="c_password" name="c_password" placeholder="确认新密码">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="push-2 col-sm-4 ">
                            <button type="submit" class="btn form-control btn-primary">提交</button>
                        </div>
                        <div class="col-sm-4 push-2">
                            <button type="button" id="back" class="btn form-control btn-warning">取消</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
           $("form").submit(function () {
               var o_password=$("#o_password").val();
               var n_password=$("#n_password").val();
               var c_password=$("#c_password").val();
               var url="password"
               if(o_password&&n_password&&c_password){
                    if(n_password==c_password){
                        $.post(url,$("#password_form").serializeArray(),function(data){
                            alert("消息提示： " + data);
                            window.location.href="logout";
                        });
                    }else{
                        alert("新密码和确认密码填写不一致");
                        return false;
                    }
               }else{
                   alert("请将全部信息填写完整");
                   return false;
               }
           });
           $("#back").click(function () {
               window.location.href="home";
           });
        });
    </script>
</body>
</html>
