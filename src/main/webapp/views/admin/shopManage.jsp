<%--
  Created by IntelliJ IDEA.
  User: yangtk
  Date: 2015/11/29
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-cn">
    <jsp:include page="head.jsp">
        <jsp:param value="鲜出没门店管理中心" name="title"/>
    </jsp:include>
    <body id="orderManage" class="comment">
    <jsp:include page="menu.jsp">
        <jsp:param value="${session.admin.account}" name="username"/>
    </jsp:include>
    <div class="content">
        <div class="main-content">
            <div class="manage-type">
                <ul>
                    <li><a href="#" class="hover-line">增加门店</a></li>
                    <li><a href="#">产品日销量统计</a></li>
                    <li><a href="#">交易营业额统计</a></li>
                </ul>
            </div>
            <div class="inline-div">
                <span class="shop-icon"></span>
                <h3 class="inline-div-header">门店管理</h3>
                <h4>增加门店</h4>
                <button class="btn btn-primary btn-border-none pull-right left-margin-1x right-margin-3x" href="#">添加</button>
                <button class="btn btn-primary btn-border-none pull-right left-margin-1x" href="#" data-toggle="modal" data-target="#delet-btn">删除</button>
            </div>
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th><input type="checkbox"/>序号</th>
                    <th>门店名称</th>
                    <th>编号</th>
                    <th>地址</th>
                    <th>社区名字</th>
                    <th>冷柜编号</th>
                    <th>冷柜位置</th>
                    <th>距离</th>
                    <th>路线</th>
                    <th>备注</th>
                    <th>编辑</th>
                    <!--其下对应开始处理-->
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox"/>01</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><a href="#" class="btn btn-primary btn-border-none">点击编辑</a></td>
                </tr>
                </tbody>
            </table>

            <div class="page-divider btn-group" role="group" aria-label="page-divide">
                <a href="#" class="btn btn-default disabled">上一页</a>
                <a href="#" class="btn btn-default active">1</a>
                <a href="#" class="btn btn-default">2</a>
                <a href="#" class="btn btn-default">3</a>
                <a href="#" class="btn btn-default disabled">...</a>
                <a href="#" class="btn btn-default">10</a>
                <a href="#" class="btn btn-default">11</a>
                <a href="#" class="btn btn-default">12</a>
                <a href="#" class="btn btn-default">下一页</a>
            </div>
        </div>
    </div>



    <!-- //删除确认 -->
    <div class="modal fade" id="delet-btn" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">警告</h4>
                </div>
                <div class="modal-body">
                    你确定要删除吗？
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
                    <button type="button" class="btn btn-primary">取消</button>
                </div>
            </div>
        </div>
    </div>

    <%@include file="script.jsp"%>
    </body>
</html>