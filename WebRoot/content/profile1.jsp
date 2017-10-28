<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人资料</title>
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
                                <a class="dropdown-item disabled" href="#">${sessionScope.user.user_nickname}</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">我的微博</a>
                                <a class="dropdown-item" href="profile">个人资料</a>
                                <a class="dropdown-item" href="password">修改密码</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-info"  href="logout">注销</a>
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
    </div>
    <div class="container">
        <div class="row" >
            <div class="push-2  col-md-8" style="padding: 10px;border-bottom: dashed 1px cadetblue;">
                <h2>个人资料</h2>
            </div>
        </div>
        <div class="row">
            <div class="push-2 col-md-8" style="margin-top: 10px">
                <form id="profileForm">
                    <div class="form-group row">
                        <label for="user_realname" class="col-sm-3 col-form-label">真实姓名</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="user_realname"  name="user_realname" placeholder="用户真实姓名" value="${sessionScope.user.user_realname}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="user_phone" class="col-sm-3 col-form-label">电话号码</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="user_phone" name="user_phone" placeholder="电话号码" value="${sessionScope.user.user_phone}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="user_email" class="col-sm-3 col-form-label">用户邮箱</label>
                        <div class="col-sm-9">
                            <input type="email" class="form-control" id="user_email" name="user_email" placeholder="用户邮箱" value="${sessionScope.user.user_email}">
                        </div>
                    </div>

                    <fieldset class="form-group">
                        <div class="row">
                            <legend class="col-form-legend col-sm-3">个人性别</legend>
                            <div class="col-sm-9">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="user_gender" id="gridRadios1" value="女" checked>
                                        女性
                                    </label>
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="user_gender" id="gridRadios2" value="男">
                                        男性
                                    </label>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div class="form-group row">
                        <label for="user_birthday" class="col-sm-3 col-form-label">出生日期</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control" id="user_birthday" name="user_birthday" placeholder="出生日期" value="${sessionScope.user.user_birthday}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="user_info" class="col-sm-3 col-form-label">自我简介</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="user_info" name="user_info" placeholder="一句话介绍自己或座右铭" value="${sessionScope.user.user_info}">
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
        $('form').submit(function () {
          	var params = $("#profileForm").serializeArray();
            $.ajax({
                type:'POST',
                url:"profile",
                error:function (request) {
                    alert("更新失败");
                },
                success:function () {
                    alert('更新成功');
                    window.location.reload();
                }
            });
            return  false;
        })
    </script>
</body>
</html>
