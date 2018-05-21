<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>蓝桥支付 - 注册</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" type="text/css" href="css/global.css">
		<link rel="stylesheet" type="text/css" href="css/form.css">
		<link rel="stylesheet" type="text/css" href="css/biz/reg.css">
		<link rel="stylesheet" type="text/css" href="css/slide-unlock.css">
		<link rel="stylesheet" type="text/css" href="css/dialog.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/global.js"></script>
		<script type="text/javascript" src="js/util.js"></script>
		<script type="text/javascript" src="js/group.js"></script>
		<script type="text/javascript" src="js/jquery-slide-unlock.js"></script>
		<script type="text/javascript" src="js/animation.js"></script>
		<script type="text/javascript" src="js/dialog.js"></script>
		<script>
			$(function () {
				var slider = new SliderUnlock("#slider",{
				},function(){
				});
				slider.init();

				// 发送邮件
				$("#sendEmail").click(function() {

					Dialogx.show({
						_url: 'dialog_email.html',
						_title: '验证用户名'
					});
				});

			});


		</script>
	</head>

	<body>
		<div id="top">
		</div>
		<div id="header">
			<div class="layout">
				<div id="logo">
					<a href="uc.html">
						<img src="images/logo.png" alt="蓝桥" />
					</a>
				</div>
			</div>
		</div>
		<div id="page">
			<div class="layout reg-wrapper">
				<div class="reg-top" >
					<ul class="reg-step clearfix" >
						<li class="step current">
							<p class="txt">1. 注册账号</p>
							<p class="arr arr-after"></p>
						</li>
						<li class="step">
							<p class="arr arr-before"></p>
							<p class="txt">2. 完善资料</p>
							<p class="arr arr-after"></p>
						</li>
						<li class="step">
							<p class="arr arr-before"></p>
							<p class="txt">3. 密码设置</p>
							<p class="arr arr-after"></p>
						</li>
						<li class="step last">
							<p class="arr arr-before"></p>
							<p class="txt">4. 注册成功,等待审核</p>
						</li>
					</ul>
				</div>
				<form class="form-bd reg-pay-bd" action="" id="demoForm" >
					<div class="form-tab">
						<ul class="form-tab-hd clearfix">
							<li>
								<a class="tab-item-a" href="reg_personal_email_a.jsp">
									<span class="iconfont icon-personal">个人注册</span>
								</a>
							</li>
							<li class="current">
								<a class="tab-item-b" href="reg_company_a.jsp">
									<span class="iconfont icon-company">企业注册</span> <em></em>
								</a>
							</li>
						</ul>
						<div class="form-tab-bd">
							<div class="form-item">
								<h4 class="form-label"> <em>*</em>
									电子邮箱:
								</h4>
								<div class="form-entity">
									<div class="form-field">
										<input class="ipt" type="text" name="userName" value="" placeholder="请输入邮箱" />
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">验证码:</h4>
								<div class="form-entity">
									<div id="slider">
										<div id="slider_bg"></div>
										<span id="label">>></span> <span id="labelTip">请按住滑块，拖动到最右边</span>
									</div>
								</div>
							</div>
							<div class="form-item">
								<div class="form-label reg-checkbox">
									<input  type="checkbox" checked="checked" />
									我同意<a href="#">蓝桥支付协议</a>
								</div>
							</div>
							<div class="form-action clearfix">
								<a id="sendEmail" href="reg_company_b.jsp" class="glb-btn submit-btn">
									<span>下一步</span>
								</a>
							</div>
						</div>
					</div>
				</form>
				<div class="form-tab reg-pay-tab items-group-box">
					<div class="item-group form-group item-group-reg">
						<div class="group-hd group-hd-re1">
							<h3>注册前需要准备什么材料？</h3>
						</div>
						<div class="group-bd">
							<div class="group-hd-rea">
								<p>注册前需要准备:<span>影印件必须为彩色原件的扫描件或数码照</span></p>
								<ul>
									<li><a href="#">营业执照影印件</a></li>
									<li>对公银行账户，可以是基本户或一般户</li>
									<li>法定代表人的<a href="#">身份证影印件</a></li>
								</ul>
							</div>
							<div class="group-hd-rea">
								<p>如果你是代理人，除以上资料，还需准备:</p>
								<ul>
									<li>你的<a href="#">身份证影印件</a></li>
									<li>对公银行账户，可以使基本户或一般户</li>
									<li>企业委托书，必须该有公司公章或者财务专用章，不能是合同/企业专用章<a href="#">查看模板</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="bottom" class="bottom"></div>
		</div>
	</body>
</html>