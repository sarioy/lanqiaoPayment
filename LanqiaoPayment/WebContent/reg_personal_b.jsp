<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>蓝桥支付 - 会员注册</title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<link rel="stylesheet" type="text/css" href="css/global.css">
		<link rel="stylesheet" type="text/css" href="css/form.css">
		<link rel="stylesheet" type="text/css" href="css/biz/reg.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/global.js"></script>
		<script type="text/javascript" src="js/animation.js"></script>
		<script type="text/javascript" src="js/util.js"></script>
		<script type="text/javascript" src="js/group.js"></script>
		<script>
			var rule = {
				userName: {
					tip: '用户名是您登录系统的唯一凭证',
					rule: {
						required: ["请输入用户名11"],
						length: ["用户名长度必须是4-30位", "4-30"],
						remote: ["erdrr", "/caj"]
					}
				}
			};

		</script>
	</head>

	<body>
		<div id="top">
		</div>
		<div id="header">
			<div class="layout">
				<div id="logo">
					<a href="uc.jsp">
						<img src="images/logo.png" alt="蓝桥" />
					</a>
				</div>
			</div>
		</div>
		<div id="page">
			<div class="layout reg-wrapper">
				<div class="reg-top">
					<ul class="reg-step clearfix">
						<li class="step">
							<p class="txt">1. 注册账号</p>
							<p class="arr arr-after"></p>
						</li>
						<li class="step current">
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
				<form class="form-bd items-group-box" action="reg_company_c.html" id="companyForm">
					<div class="item-group form-group">
						<div class="group-hd">
							<h3>完善信息</h3>
						</div>
						<div class="group-bd">
							<div class="form-item">
								<h4 class="form-label">身份证号:</h4>
								<div class="form-entity">
									<div class="form-field">
										<input class="ipt" type="text" name="vcard" value="" placeholder="请输入身份证号" />
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">昵称:</h4>
								<div class="form-entity">
									<div class="form-field">
										<input class="ipt" type="text" name="vname" value="" placeholder="请输入昵称" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-action clearfix">
						<a class="reset-btn" href="reg_personal_email_a.jsp">上一步</a>
						<a href="reg_company_c.jsp" class="glb-btn submit-btn">
							<span>下一步</span>
						</a>
					</div>
				</form>
			</div>
			<div id="bottom" class="bottom">
			</div>
		</div>
	</body>
</html>