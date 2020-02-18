<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/30
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="${pageContext.request.contextPath}/et.png">
    <title>添加人才信息</title>
    <style type="text/css">
        input {
            height: 35px;
            font-size: 20px;
        }

        table {
            width: 30%;
            margin: auto;
            text-align: center;
            font-size: 20px;
            border-collapse: collapse;
        }

        .struts2 {
            width: 100%;
            height: 35px;
            font-size: 20px;
        }
    </style>
</head>
<body>
<form:form id="etfrom" action="/add">
    <table border="1px">
        <tr>
            <td colspan="7" style="font-size: 30px;height: 80px;background-color: darkgray">
                添加人才信息
            </td>
        </tr>
        <tr>
            <td>人才姓名<font style="color: red">(*)</font></td>
            <td>
                <input id="name" class="struts2" label="人才姓名" name="name"></input>
            </td>
        </tr>
        <tr>
            <td>所属部门<font style="color: red">(*)</font></td>
            <td>
                <select id="departmentId" name="departmentId" class="struts2">
                    <option>全部</option>
                    <c:forEach items="${dtList}" var="dt">
                        <option value="${dt.id}">${dt.name}</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>工作年限</td>
            <td>
                <input class="struts2" label="工作年限" name="workingLife"></input>
            </td>
        </tr>
        <tr>
            <td>毕业学校</td>
            <td>
                <input label="毕业学校" class="struts2" name="graduateSchool"></input>
            </td>
        </tr>
        <tr>
            <td>个人简历</td>
            <td>
                <textarea label="个人简历" style="height: 80px" class="struts2" name="personalProfile"></textarea>
            </td>
        </tr>
        <tr>
            <td>工作经历</td>
            <td>
                <textarea label="工作经历" style="height: 80px" class="struts2" name="workExperience"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="添加"/>
                <input type="button" value="返回" onclick="history.back()"></input>
            </td>
        </tr>
    </table>
</form:form>
<script src="${pageContext.request.contextPath}/static/js/jquery-1.8.0.js"></script>
<script type="text/javascript">
    $(function () {
        $("#etfrom").submit(function () {
            var name = $("#name").val();
            var departmentId = $("#departmentId").val();
            if (name == null || name == "") {
                alert("人才姓名不能为空！")
                return false;
            }
            if (departmentId == "全部") {
                alert("所属部门不能为“全部”！")
                return false;
            }
            return true;
        })
    })
</script>
</body>
</html>
