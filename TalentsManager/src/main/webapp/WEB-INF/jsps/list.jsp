<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/30
  Time: 14:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>人才信息列表</title>
    <meta http-equiv="Cache-Control" content="no-transform" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=yes" />
    <link rel="icon" href="${pageContext.request.contextPath}/et.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/paging.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/bootstrap.min.css">
    <style type="text/css">
        table tr:nth-child(2n) {
            background-color: lightgrey;
        }

        #etm {
            margin: 5px auto;
            width: 60%;
            border-collapse: collapse;
        }

        #etm tr td {
            text-align: center;
            height: 35px;
            font-size: 20px;
        }

        .et {
            height: 35px;
            font-size: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-4 column"></div>
        <div class="col-md-8 column">
            <form id="qf" action="${pageContext.request.contextPath}/" method="post">
                <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
                <input type="hidden" id="pageSize" name="pageSize" value="${page.pageSize}"/>
                <form:select cssClass="et" path="enterpriseTalent.departmentId">
                    <form:option value="">全部</form:option>
                    <form:options items="${dtList}" itemLabel="name" itemValue="id"/>
                </form:select>
                &nbsp;&nbsp;
                <input class="et" type="submit" value="查询">&nbsp;&nbsp;
                <input class="et" type="button" value="新增人员"
                       onclick="location.href='${pageContext.request.contextPath}/toAdd'">
            </form>
        </div>
    </div>
    <p></p>
    <div class="row">
        <div class="col-md-12 column table-responsive">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <td>人才编号</td>
                    <td>人才姓名</td>
                    <td>工作年限</td>
                    <td>所属部门</td>
                    <td>毕业学校</td>
                    <td colspan="2">操作</td>
                </tr>
                    <c:forEach items="${page.list}" var="et">
                <tr>
                    <td>${et.id}</td>
                    <td>${et.name}</td>
                    <td>${et.workingLife}</td>
                    <td>
                        <c:forEach items="${dtList}" var="dt">
                            <c:if test="${et.departmentId==dt.id}">
                                ${dt.name}
                            </c:if>
                        </c:forEach>
                    </td>
                    <td>${et.graduateSchool}</td>
                    <td><a href="${pageContext.request.contextPath}/toUpdate/${et.id}">修改</a></td>
                    <td><a onclick="if (confirm('确定删除吗？')==false) return false;"
                           href="${pageContext.request.contextPath}/delete/${et.id}">删除</a></td>
                </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <p></p>
    <div class="row">
        <div class="col-md-2 column">
        </div>
        <div class="col-md-10 column">
            <div class="box" id="box"></div>
        </div>
    </div>
</div>






















<%--

<div style="margin: 0px auto;text-align:center; padding:15px 0px;width: 60%;" class="et">
    <form id="qf" action="${pageContext.request.contextPath}/" method="post">
        <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
        <input type="hidden" id="pageSize" name="pageSize" value="${page.pageSize}"/>
        <form:select cssClass="et" path="enterpriseTalent.departmentId">
            <form:option value="">全部</form:option>
            <form:options items="${dtList}" itemLabel="name" itemValue="id"/>
        </form:select>
        &nbsp;&nbsp;
        <input class="et" type="submit" value="查询">&nbsp;&nbsp;
        <input class="et" type="button" value="新增人员"
               onclick="location.href='${pageContext.request.contextPath}/toAdd'">
    </form>
</div>
<table id="etm" border="1px">
    <tr>
        <td colspan="7" style="font-size: 30px;height: 80px;background-color: darkgray">人才信息列表</td>
    </tr>
    <tr>
        <td>人才编号</td>
        <td>人才姓名</td>
        <td>工作年限</td>
        <td>所属部门</td>
        <td>毕业学校</td>
        <td colspan="2">操作</td>
    </tr>
    <c:forEach items="${page.list}" var="et">
        <tr>
            <td>${et.id}</td>
            <td>${et.name}</td>
            <td>${et.workingLife}</td>
            <td>
                <c:forEach items="${dtList}" var="dt">
                    <c:if test="${et.departmentId==dt.id}">
                        ${dt.name}
                    </c:if>
                </c:forEach>
            </td>
            <td>${et.graduateSchool}</td>
            <td><a href="${pageContext.request.contextPath}/toUpdate/${et.id}">修改</a></td>
            <td><a onclick="if (confirm('确定删除吗？')==false) return false;"
                   href="${pageContext.request.contextPath}/delete/${et.id}">删除</a></td>
        </tr>
    </c:forEach>
    <div class="box" id="box"></div>--%>
    <script src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/paging.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <script>
        var setTotalCount = ${page.total};
        $('#box').paging({
            initPageNo: ${page.pageNum}, // 初始页码
            totalPages: ${page.pages}, //总页数
            totalCount: '合计' + setTotalCount + '条数据', // 条目总数
            slideSpeed: 600, // 缓动速度。单位毫秒
            jump: false ,//是否支持跳转
            callback: function(page) { // 回调函数
                $("#pageNum").val(page);
            }
        });

        $("#box").click(function () {
            $("#qf").submit();
        })
    </script>
</table>
</body>
</html>
