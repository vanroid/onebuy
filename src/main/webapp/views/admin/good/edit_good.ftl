<!-- COMMON HEAD -->
<#include "../include/top.ftl">
<!-- COMMON HEAD -->
<!-- 内页导航开始 -->


<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<h2>${title  !}</h2>
		<ol class="breadcrumb">
			<li><a href="index">系统管理</a></li>
			<li><a href="${rootPath}/admin/goods">商品管理</a></li>
			<li><strong>编辑商品</strong></li>
		</ol>
	</div>
	<div class="col-lg-2"></div>
</div>
<!-- 内页导航结束 -->
<!--主内容开始-->
<div class="wrapper wrapper-content animated fadeInUp">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>
						编辑商品 <small>必填</small>
					</h5>

				</div>
				<div class="ibox-content">
					<form method="get" class="form-horizontal" action="${rootPath}/admin/goods/update/${good.id}">
						<div class="form-group">
							<label class="col-sm-2 control-label">商品名称</label>

							<div class="col-sm-10">
								<input type="text" name="goodName" class="form-control" value="${good.name}">
							</div>
						</div>
						<div class="hr-line-dashed"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label">商品描述</label>
							<div class="col-sm-10">
								<input type="text" name="goodDescription" class="form-control" value="${(good.description)!("无")}"> 
								<span class="help-block m-b-none" value=""></span>
							</div>
						</div>
						<div class="hr-line-dashed"></div>
						<div class="form-group">
                                        <label class="col-sm-2 control-label">
                                            <small class="text-navy">是否自动延期</small>
                                        </label>

                               <div class="col-sm-10">
                                     <div class="radio">
                                          <label>
                                          	<input type="radio"  value="1" id="optionsRadios1" name="delay">是
                                          </label>
                                     </div>
                                     <div class="radio">
                                          <label><input type="radio" value="0" id="optionsRadios2" name="delay">否</label>
                                     </div>
                              </div>
                        </div>
						<div class="hr-line-dashed"></div>
						<div class="form-group">
							<div class="col-sm-4 col-sm-offset-2">
								<button class="btn btn-primary" type="submit">保存内容</button>
								<button class="btn btn-white" type="submit">取消</button>
							</div>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!--COMMON FOOTER-->
<#include "../include/footer.ftl">
<!--COMMON FOOTER-->
<script>
<#if (good.delay)??>
	<#if ((good.delay)?c)='true'>
	$('#optionsRadios1').attr('checked','');
	<#else>
	$('#optionsRadios2').attr('checked','');
	</#if>
<#else>
	$('#optionsRadios2').attr('checked','');
</#if>
</script>