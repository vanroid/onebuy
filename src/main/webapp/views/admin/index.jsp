<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 头部 -->
<%@ include file="include/head.jsp"%>
<!-- 内页导航开始 -->
<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<h2>${title }</h2>
		<ol class="breadcrumb">
			<li>
				<a href="#">系统管理</a>
			</li>
			<li>
				<a>投诉管理</a>
			</li>
			<li>
				<strong>查看投诉</strong>
			</li>
		</ol>
	</div>
	<div class="col-lg-2"></div>
</div>
<!-- 内页导航结束 -->
<!--主内容开始-->
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>
						基本 <small>查找</small>
					</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						<a class="dropdown-toggle" data-toggle="dropdown" href="table_data_tables.html#">
							<i class="fa fa-wrench"></i>
						</a>

						<a class="close-link">
							<i class="fa fa-times"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content">

					<table class="table table-striped table-bordered table-hover dataTables-example">
						<thead>
							<tr>
								<th>案例号</th>
								<th>日期</th>
								<th>联系人</th>
								<th>联系方式</th>
								<th>邮箱</th>
								<th>类型</th>
								<th>主要内容</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${cases}" var="caseInfo">
								<tr class="gradeA">
									<td>
										<a href="${detailHref }?id=${caseInfo.id }">${caseInfo.caseId }</a>
									</td>
									<td>
										<c:if test="${fn:length(caseInfo.submitTime.toString() )>10}">
											${fn:substring(caseInfo.submitTime.toString(),0 ,10 )}
											</c:if>
										<c:if test="${fn:length(caseInfo.submitTime.toString())<10}">${caseInfo.submitTime}</c:if>
									</td>
									<td>${caseInfo.realName }</td>
									<td>${caseInfo.contact }</td>
									<td>${caseInfo.mail }</td>
									<td class="center">${caseInfo.typeName }</td>
									<td class="center">
										<c:if test="${fn:length(caseInfo.content )>20}">
											${fn:substring(caseInfo.content,0 ,20 )}...
											</c:if>
										<c:if test="${fn:length(caseInfo.content)<20}">${caseInfo.content}</c:if>
									</td>
								</tr>
							</c:forEach>


						</tbody>
						<tfoot>
							<tr>
							
							</tr>
						</tfoot>
					</table>

				</div>
			</div>
		</div>
	</div>
</div>
<!--底部-->
<%@ include file="include/footer.jsp"%>

<!--统计代码，可删除-->


<script>
	$(document).ready(function() {
		$('.dataTables-example').dataTable();

		/* Init DataTables */
		var oTable = $('#editable').dataTable();

		/* Apply the jEditable handlers to the table */
		oTable.$('td').editable('../example_ajax.php', {
			"callback" : function(sValue, y) {
				var aPos = oTable.fnGetPosition(this);
				oTable.fnUpdate(sValue, aPos[0], aPos[1]);
			},
			"submitdata" : function(value, settings) {
				return {
					"row_id" : this.parentNode.getAttribute('id'),
					"column" : oTable.fnGetPosition(this)[2]
				};
			},

			"width" : "90%",
			"height" : "100%"
		});

	});
</script>
</body>

</html>