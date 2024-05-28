<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="contentText">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑订单评价</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>订单评价管理</span></li>
								<li class="breadcrumb-item active"><span>编辑订单评价</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">订单评价信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>订单编号</label>
										<input id="dingdanbianhao" name="dingdanbianhao" class="form-control" placeholder="订单编号">
									</div>
									<div class="form-group col-md-6">
										<label>商品编号</label>
										<select  class="form-control"  name="shangpinbianhao" id="shangpinbianhaoSelect" onchange="shangpinbianhaoSelect2Change()">
										</select>
									</div>
									<div class="form-group col-md-6">
										<label>商品名称</label>
										<input id="shangpinmingcheng" name="shangpinmingcheng" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>商品系列</label>
										<input id="shangpinxilie" name="shangpinxilie" class="form-control"  value="" readonly>
									</div>
									<div class="form-group col-md-6">
										<label>评分</label>
										<select id="pingfenSelect" name="pingfen" class="form-control">
												<option value=""></option>
												<option class="pingfenOption" value="1">
													1
												</option>
												<option class="pingfenOption" value="2">
													2
												</option>
												<option class="pingfenOption" value="3">
													3
												</option>
												<option class="pingfenOption" value="4">
													4
												</option>
												<option class="pingfenOption" value="5">
													5
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>评价内容</label>
										<textarea name="pingjianeirong" class="form-control" id="pingjianeirong" rows="3"></textarea>
									</div>
									<div class="form-group col-md-6">
										<label>添加图片</label>
										<div><img id="tianjiatupianImg" src="" width="100" height="100">
										<div class="upload">选择文件<input name="file" type="file" id="tianjiatupianupload" class="form-control-file"></div>
										<input name="tianjiatupian" id="tianjiatupian-input" type="hidden"></div>
									</div>
									<div class="form-group col-md-6">
										<label>评价日期</label>
										<div id="pingjiariqiDate" class="input-append date form_datetime">
											<input id="pingjiariqi-input" name="pingjiariqi" size="15" type="text" readonly>
											<span class="add-on"><i class="icon-remove"></i></span>
											<span class="add-on"><i class="icon-calendar"></i></span>
										</div>
									</div>
									<div class="form-group col-md-6">
										<label>用户名</label>
										<input id="yonghuming" name="yonghuming" class="form-control" placeholder="用户名">
									</div>
									<div class="form-group col-md-6">
										<label>联系电话</label>
										<input id="lianxidianhua" name="lianxidianhua" class="form-control" placeholder="联系电话">
									</div>
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "dingdanpingjia";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};


			function shangpinbianhaoSelect2(){
				http("option/shangpinxinxi/shangpinbianhao","GET",{
					tableName: "shangpinxinxi",
					columnName: "shangpinbianhao"
				},(res)=>{
					if(res.code == 0){
						var options = res.data;
						var option = document.createElement("option");
						$("#shangpinbianhaoSelect").append(option)
						for(var i=0;i<options.length;i++){
							var shangpinbianhaoOption = document.createElement("option");
							shangpinbianhaoOption.setAttribute("value",options[i]);
							shangpinbianhaoOption.setAttribute("class","shangpinbianhaoOption");
							if(ruleForm.shangpinbianhao == options[i]){
								shangpinbianhaoOption.setAttribute("selected","selected");
							}
							shangpinbianhaoOption.innerHTML = options[i];
							//修改 回显
							if(ruleForm.shangpinbianhao != null && ruleForm.shangpinbianhao != '' && options[i] == ruleForm.shangpinbianhao){
								shangpinbianhaoOption.setAttribute("selected","selected");
							}
							$("#shangpinbianhaoSelect").append(shangpinbianhaoOption);
						}
					}
				});
			}		
			function shangpinbianhaoSelect2Change(){
				var options = document.getElementById("shangpinbianhaoSelect").options;
				var index = document.getElementById("shangpinbianhaoSelect").selectedIndex;
				var colVal = options[index].value;
				http("follow/shangpinxinxi/shangpinbianhao","GET",{
					tableName: "shangpinxinxi",
					columnName: "shangpinbianhao",
					columnValue: colVal
				},(res)=>{
					if(res.code == 0){
						if(res.data != null && res.data.shangpinmingcheng != null){
							$("#shangpinmingcheng").val(res.data.shangpinmingcheng);
						}
						if(res.data != null && res.data.shangpinxilie != null){
							$("#shangpinxilie").val(res.data.shangpinxilie);
						}
					}
				});
				
			}			

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "dingdanpingjia/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
			$('#tianjiatupianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('tianjiatupian-input').setAttribute('value',baseUrl+"upload/"+data.result.file);
					if(document.getElementById('tianjiatupianFileName') != null){
						document.getElementById('tianjiatupianFileName').innerHTML = "上传成功!";
					}				
					$("#tianjiatupianImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
		}  

		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("dingdanpingjia/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
						let flag = true;
						if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
						
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    shangpinbianhao: {
					},
				    shangpinmingcheng: {
					required: true,
					},
				    shangpinxilie: {
					},
				    pingfen: {
					},
				    pingjianeirong: {
					},
				    tianjiatupian: {
					},
				    pingjiariqi: {
					},
				    yonghuming: {
					},
				    lianxidianhua: {
					},
				    sfsh: {
					},
				    shhf: {
					},
				},
				messages: {
					shangpinbianhao: {
					},
					shangpinmingcheng: {
						required: "商品名称不能为空",
					},
					shangpinxilie: {
					},
					pingfen: {
					},
					pingjianeirong: {
					},
					tianjiatupian: {
					},
					pingjiariqi: {
					},
					yonghuming: {
					},
					lianxidianhua: {
					},
					sfsh: {
					},
					shhf: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("dingdanpingjia/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												shangpinbianhaoSelect2();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				shangpinbianhaoSelect2();	

		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
			$("#pingjiariqiDate").datetimepicker({ 
				minView: "month",
				autoclose: true,
				format:'yyyy-mm-dd',
				language:'zh-CN',
			});

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
		}		
		function calculationSE(colName){
			//单列求和接口
			http("dingdanpingjia"+colName,"GET",{
				tableName: "dingdanpingjia",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){

				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						if(res.data !=null && res.data.yonghuming != null && res.data.yonghuming != ''){
							$('#yonghuming').val(res.data.yonghuming)
						}
						if(res.data !=null && res.data.lianxidianhua != null && res.data.lianxidianhua != ''){
							$('#lianxidianhua').val(res.data.lianxidianhua)
						}
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#dingdanbianhao").val(ruleForm.dingdanbianhao);	
				
						$("#shangpinmingcheng").val(ruleForm.shangpinmingcheng);	
			$("#shangpinxilie").val(ruleForm.shangpinxilie);	
			var pingfenOptions = document.getElementsByClassName("pingfenOption");
			for(var pingfenCount = 0; pingfenCount < pingfenOptions.length;pingfenCount++){
				if(pingfenOptions[pingfenCount].getAttribute('value') == ruleForm.pingfen){
					pingfenOptions[pingfenCount].setAttribute('selected','selected');
				}
			}
			$("#pingjianeirong").val(ruleForm.pingjianeirong);
			$("#tianjiatupian-input").val(ruleForm.tianjiatupian);
			$("#pingjiariqi-input").val(ruleForm.pingjiariqi);
			$("#yonghuming").val(ruleForm.yonghuming);	
			$("#lianxidianhua").val(ruleForm.lianxidianhua);	
				
						$("#shhf").val(ruleForm.shhf);	
		}		
		//图片显示
		function showImg(){
			var tianjiatupianFileName = "\"" + ruleForm.tianjiatupian + "\"";
			$("#tianjiatupianImg").attr("src",ruleForm.tianjiatupian);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.dingdanbianhao != null && res.data.dingdanbianhao != ''){

					$("#dingdanbianhao").val(res.data.dingdanbianhao);
					}
					if(res.data != null && res.data != '' && res.data.shangpinbianhao != null && res.data.shangpinbianhao != ''){


										}
					if(res.data != null && res.data != '' && res.data.shangpinmingcheng != null && res.data.shangpinmingcheng != ''){

					$("#shangpinmingcheng").val(res.data.shangpinmingcheng);
					}
					if(res.data != null && res.data != '' && res.data.shangpinxilie != null && res.data.shangpinxilie != ''){

					$("#shangpinxilie").val(res.data.shangpinxilie);
					}
					if(res.data != null && res.data != '' && res.data.pingfen != null && res.data.pingfen != ''){

					var pingfenOptions = document.getElementsByClassName("pingfenOption");
						for(var pingfenCount = 0; pingfenCount < pingfenOptions.length;pingfenCount++){
							if(pingfenOptions[pingfenCount].getAttribute('value') == res.data.pingfen){
								pingfenOptions[pingfenCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.pingjianeirong != null && res.data.pingjianeirong != ''){

					$("#pingjianeirong").val(res.data.pingjianeirong);
					}
					if(res.data != null && res.data != '' && res.data.tianjiatupian != null && res.data.tianjiatupian != ''){

					$("#tianjiatupianImg").attr("src",res.data.tianjiatupian);
					$("#tianjiatupian-input").val(res.data.tianjiatupian);
					}
					if(res.data != null && res.data != '' && res.data.pingjiariqi != null && res.data.pingjiariqi != ''){

					$("#pingjiariqi-input").val(res.data.pingjiariqi);
					$('#pingjiariqiFileName').val(res.data.pingjiariqi)
					}
					if(res.data != null && res.data != '' && res.data.yonghuming != null && res.data.yonghuming != ''){

					$("#yonghuming").val(res.data.yonghuming);
					}
					if(res.data != null && res.data != '' && res.data.lianxidianhua != null && res.data.lianxidianhua != ''){

					$("#lianxidianhua").val(res.data.lianxidianhua);
					}
					if(res.data != null && res.data != '' && res.data.sfsh != null && res.data.sfsh != ''){


										}
					if(res.data != null && res.data != '' && res.data.shhf != null && res.data.shhf != ''){

					$("#shhf").val(res.data.shhf);
					}
				}
			});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			readonly();
		});		

		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
