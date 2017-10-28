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
                                <a class="dropdown-item disabled" href="#">闫强</a>
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
            <div class="push-2 col-md-8">
                <form id="profile">
                     <table class="table table-info">
                        <tr>
                            <td class="text-center form-control-label">真实姓名</td>
                            <td><input type="text" class="form-control" name="user_realname" value="${sessionScope.user.user_realname}"></td>
                        </tr>
                        <tr>
                            <td class="text-center form-control-label">电话号码</td>
                            <td><input type="text" class="form-control" name="user_phone" value="${sessionScope.user.user_phone}"></td>
                        </tr>
                        <tr>
                            <td class="text-center form-control-label">用户邮箱</td>
                            <td><input type="email" class="form-control" name="user_email" value="${sessionScope.user.user_email}"></td>
                        </tr>
                      
                        <tr>
                            <td class="text-center form-control-label">自我简介</td>
                            <td><input type="text" class="form-control" name="user_info" value="${sessionScope.user.user_info}"></td>
                        </tr>
                        <tr>
                            <td class="text-center form-control-label">性别</td>
                            <td>
                                <input class="form-check-input" type="radio" name="user_gender" id="gridRadios1" value="女">女   &nbsp;&nbsp;&nbsp;
                                <input class="form-check-input" type="radio" name="user_gender" id="gridRadios2" value="男">男
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" id="btn_submit" class="btn btn-primary" value="提交">
                                <input type="button" id="btn_back" class="btn btn-warning" value="提交">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $('form').submit(function () {
            $.ajax({
                cache:true,
                type:'post',
                url:"profile",
                data:$('#profile').serializeArray(),
                async:false,
                error:function (request) {
                    alert('更新失败');
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
