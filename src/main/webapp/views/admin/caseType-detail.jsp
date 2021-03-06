<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- ueditor -->
<script type="text/javascript" charset="utf-8" src="<c:url value="/ueditor/ueditor.config.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/ueditor/ueditor.all.min.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/ueditor/lang/zh-cn/zh-cn.js"/>"></script>
<!-- 头部 -->
<%@ include file="include/head.jsp"%>

<!-- 内页导航开始 -->
<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<h2>详细信息</h2>
		<ol class="breadcrumb">
			<li>
				<a href="#">系统管理</a>
			</li>
			<li>
				<a>角色管理</a>
			</li>
			<li>
				<strong>详细信息</strong>
			</li>
		</ol>
	</div>
	<div class="col-lg-2"></div>
</div>
<!-- 主内容 -->
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>${caseType.name }客户</h5>
				</div>
				<div class="ibox-content">
					<form class="form-horizontal" enctype="multipart/form-data" action="<c:url value="/admin/setting/saveCaseType"/>" method="post">
						<input type="hidden" name="id" value="${caseType.id }" />
						<div class="form-group">
							<label class="control-label">名称</label>
							<input type="text" name="name" class="form-control" required="required" value="${caseType.name }">
						</div>
						<div class="form-group">
							<label class="control-label">郑重声明(请不要在此处使用图片)</label>
							<script id="editor" type="text/plain" style="width: 100%; height: 200px;">${caseType.cStatement }</script>
							<input type="hidden" name="cStatement" value="" />
						</div>
						<div class="form-group">
							<label class="control-label">当前图标</label>
							<img src="<c:url value="/upload/img/"/>${caseType.photo}" width="200" />
							<input type="file" name="photo" class="form-control" />
							<span class="help-inline">更换图片,建议256*180</span>
						</div>
						<div class="form-group text-center">
							<a href="#" class="btn btn-info" class="form-control" onclick="btnSave();">保存</a>
							<a href="#" class="btn btn-info" class="form-control" onclick="formSubmit();">删除</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!--底部-->
<%@ include file="include/footer.jsp"%>
<script>
	$(document).ready(function() {
		UE.getEditor('editor');
	});
	
	//保存方法
	function btnSave() {
		//提取文本编辑器中的内容
		var content = UE.getEditor('editor').getContent();
		//存在隐藏域中
		$("input[name=cStatement]").val(content);
		//提交 表单
		$("form").submit();
	}
	function deleteTip() {
		if (!confirm("确定要删除？")) {
			return;
		}
		$.ajax({
			url : "<c:url value="/admin/deleteCase"/>?id=${caseInfo.id }",
			type : "GET",
			success : function(data) {
				if (data.status == "1") {
					alert("删除成功");
					window.location = "index";
				} else {
					alert(data.msg);
				}
			}
		});
	}
</script>
</body>

</html>