<!-- COMMON HEAD -->
<#include "../include/top.ftl">
<!-- COMMON HEAD -->
<!-- 内页导航开始 -->
<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<h2>${title  !}</h2>
		<ol class="breadcrumb">
			<li><a href="index">系统管理</a></li>
			<li><strong>商品管理</strong></li>
		</ol>
	</div>
	<div class="col-lg-2"></div>
</div>
<!-- 内页导航结束 -->
<!--主内容开始-->
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-lg-12">
			<div class="wrapper wrapper-content animated fadeInUp">

				<div class="ibox">
					<div class="ibox-title">
						<h5>所有商品</h5>
						<div class="ibox-tools">
							<a href="projects.html" class="btn btn-primary btn-xs">创建新商品</a>
						</div>
					</div>
					<div class="ibox-content">
						<div class="row m-b-sm m-t-sm">
							<div class="col-md-1">
								<button type="button" id="loading-example-btn"
									class="btn btn-white btn-sm">
									<i class="fa fa-refresh"></i> 刷新
								</button>
							</div>
							<div class="col-md-11">
								<div class="input-group">
									<input type="text" placeholder="请输入商品名称"
										class="input-sm form-control"> <span
										class="input-group-btn">
										<button type="button" class="btn btn-sm btn-primary">
											搜索</button>
									</span>
								</div>
							</div>
						</div>
						<div class="project-list">
							<table class="table table-hover">

								<tbody>
								
									<#macro repeat goods>
										<#list goods as good>
											<#nested >
										</#list>
									</#macro>
									<@repeat goods=pager.datas ;>
										<tr>
										<td class="project-status">
										<#import "../macro/judge_stage.ftl" as s/>
										<@s.judge stage.status/>
										</td>
										<td class="project-title"><a href="goods/detail/${good.id}">${good.name!}</a>
											<br> <small>创建于${good.time}</small></td>
										<td class="project-completion">
										<small>当前进度：${(stage.purchasedQuantity/stage.quantity)?string.percent}
												(${stage.purchasedQuantity}/${stage.quantity})
										</small>
											<div class="progress progress-mini">
												<div
													style="width: ${(stage.purchasedQuantity/stage.quantity)?string.percent};"
													class="progress-bar"></div>
											</div></td>
										<td class="project-completion">
										总价格:${stage.totalPrice}</td>
										<td class="project-actions"><a href=""
											class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
												查看 </a> <a href="projects.html#" class="btn btn-white btn-sm"><i
												class="fa fa-pencil"></i> 编辑 </a></td>
										</tr>
									</@repeat>
									
									<tr>
										<td class="project-status">
										<#import "../macro/judge_stage.ftl" as s/>
										<@s.judge stage.status/>
										</td>
										<td class="project-title"><a href="goods/detail/${good.id}">${good.name!}</a>
											<br> <small>创建于${good.time}</small></td>
										<td class="project-completion">
										<small>当前进度：${(stage.purchasedQuantity/stage.quantity)?string.percent}
												(${stage.purchasedQuantity}/${stage.quantity})
										</small>
											<div class="progress progress-mini">
												<div
													style="width: ${(stage.purchasedQuantity/stage.quantity)?string.percent};"
													class="progress-bar"></div>
											</div></td>
										<td class="project-completion">
										总价格:${stage.totalPrice}</td>
										<td class="project-actions"><a href=""
											class="btn btn-white btn-sm"><i class="fa fa-folder"></i>
												查看 </a> <a href="projects.html#" class="btn btn-white btn-sm"><i
												class="fa fa-pencil"></i> 编辑 </a></td>
									</tr>
									
									
									
									
									
								</tbody>

							</table>
						</div>
					</div>
					<br />
					
					<#import "../macro/pager.ftl" as page>
					<@page.init pager.pageIndex pager.totalPage />
					
					
				</div>
			</div>
		</div>
	</div>
	<!--COMMON FOOTER-->
	 
	<!--COMMON FOOTER-->
	
	
	</body>

	</html>