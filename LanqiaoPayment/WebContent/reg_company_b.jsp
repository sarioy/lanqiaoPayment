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
		<link rel="stylesheet" type="text/css" href="css/dialog.css">
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/global.js"></script>
		<script type="text/javascript" src="js/animation.js"></script>
		<script type="text/javascript" src="js/util.js"></script>
		<script type="text/javascript" src="js/group.js"></script>
		<script type="text/javascript" src="js/validate.js"></script>
		<script type="text/javascript" src="js/animation.js"></script>
		<script type="text/javascript" src="js/dialog.js"></script>
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

			$(function() {
				$("#companyForm").validatex(rule);

				$("#submitBtn").click(function() {
					//$("#companyForm").submit();
//					location.href="reg_common_c.html";
				});

				// 信息确认
				$("#messageSure").click(function() {

					Dialogx.show({
						_url: 'dialog_informationConfirm.html',
						_title: '信息确认'
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
							<h3>单位类型</h3>
						</div>
						<div class="group-bd">
							<div class="form-item">
								<h4 class="form-label">选择单位类型:</h4>
								<div class="form-entity reg-entity">
									<ul class="reg-radio-groups">
										<li><input type="radio" name="companyType" checked/>企业</li>
										<li><input type="radio" name="companyType"/>事业单位</li>
										<li><input type="radio" name="companyType"/>民办非企业单位</li>
										<li><input type="radio" name="companyType"/>个体工商户</li>
										<li><input type="radio" name="companyType"/>社会团体</li>
									</ul>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label"></h4>
								<div class="form-entity">
									<ul class="form-upload-groups">
										<li>
											<div class="form-upload-img">
												<a href="javascript:;" class="btn-file">
													<span class="trs0-1s">普通营业执照</span>
												</a>
												<div class="preview"></div>
											</div>
										</li>
										<li>
											<div class="form-upload-img">
												<a href="javascript:;" class="btn-file">
													<span class="trs0-1s">多证合一营业执照</span>
												</a>
												<div class="preview"></div>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="item-group form-group">
						<div class="group-hd">
							<h3>企业信息</h3><span>按照证书上的内容逐字填写</span>
						</div>
						<div class="group-bd">
							<div class="form-item">
								<h4 class="form-label">企业名称:</h4>
								<div class="form-entity">
									<div class="form-field">
										<input class="ipt" type="text" name="userName" value="" placeholder="请输入企业名称" />
										<a href="#">查找生僻字</a>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">证件类型:</h4>
								<div class="form-entity">
									<div class="form-reg-radio">
										<input type="radio" name="docType" checked="checked"/><span>普通营业执照(存在独立的组织机构代码证)</span><br>
										<input type="radio" name="docType"/><span>多证合一营业执照(不存在独立的组织机构代码证)</span>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">上传企业证件:</h4>
								<div class="form-entity">
									<div class="form-upload-tips">
										<p>证件拍照或彩色扫描成图片后上传，图片格式为PNG,JPG,单个文件请小于5M，图片必须清晰</p>
									</div>
									<ul class="form-upload-groups">
										<li>
											<div class="form-upload-img">
												<a href="javascript:;" class="btn-file">
													<span class="trs0-1s">上传组织机构代码证</span>
												</a>
												<div class="preview"></div>
											</div>
										</li>
										<li>
											<div class="form-upload-img">
												<a href="javascript:;" class="btn-file">
													<span class="trs0-1s">上传营业执照</span>
												</a>
												<div class="preview"></div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">营业执照注册号:</h4>
								<div class="form-entity">
									<div class="form-field">
										<input class="ipt" type="text" name="f1" value="" placeholder="请输入营业执照注册号" />
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">单位所在地:</h4>
								<div class="form-entity">
									<div class="form-field form-multi-ipt">
										<select class="sel sel-reg">
											<option>请选择</option>
											<option>北京市</option>
											<option>安徽省</option>
											<option>湖北省</option>
										</select>
										<select class="sel sel-reg">
											<option>请选择</option>
											<option>大兴区</option>
											<option>合肥</option>
											<option>武汉</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">住所:</h4>
								<div class="form-entity">
									<div class="form-field">
										<textarea rows="" cols="45" class="ipt reg-text"></textarea>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">经营范围:</h4>
								<div class="form-entity">
									<div class="form-field">
										<textarea class="ipt reg-textarea" ></textarea>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">营业期限:</h4>
								<div class="form-entity">
									<div class="form-field reg-check">
										<input class="ipt ipt-date last" type="text" name="f2" value="" placeholder="有效期" />
										<input type="checkbox" class=""/><span>长期</span>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">组织机构代码号:</h4>
								<div class="form-entity">
									<div class="form-field">
										<input class="ipt" type="text" name="userName" value="" placeholder="组织机构代码号" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item-group form-group">
						<div class="group-hd">
							<h3>法定代表人信息</h3>
						</div>
						<div class="group-bd">
							<div class="form-item">
								<h4 class="form-label">法定代表人姓名:</h4>
								<div class="form-entity">
									<div class="form-field form-multi-ipt">
										<input class="ipt" type="text" name="userName" value="" placeholder="请输入联系人姓名" />
										<a href="#">查找生僻字</a>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">法定代表人归属地:</h4>
								<div class="form-entity">
									<div class="form-field form-multi-ipt">
										<select class="sel sel-reg">
											<option>请选择</option>
											<option>中国大陆</option>
											<option>中国台湾</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">有效证件:</h4>
								<div class="form-entity">
									<div class="form-field form-multi-ipt">
										<select name="" id="" class="sel sel-card">
											<option value="">身份证</option>
										</select>
										<input class="ipt ipt-cardno last" type="text" name="userName" value="" placeholder="请输入证件号码" />
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">上传法人证件:</h4>
								<div class="form-entity">
									<div class="form-upload-tips">
										<p>证件拍照或彩色扫描成图片后上传，图片格式为PNG,JPG,单个文件请小于5M，图片必须清晰</p>
									</div>
									<ul class="form-upload-groups">
										<li>
											<div class="form-upload-img">
												<a href="javascript:;" class="btn-file">
													<span>上传法人证件照(正面)</span>
												</a>
												<div class="preview"></div>
											</div>
										</li>
										<li>
											<div class="form-upload-img">
												<a href="javascript:;" class="btn-file">
													<span>上传法人证件照(背面)</span>
												</a>
												<div class="preview"></div>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">证件有效期:</h4>
								<div class="form-entity">
									<div class="form-field reg-check">
										<input class="ipt ipt-date last" type="text" name="f2" value="" placeholder="有效期" />
										<input type="checkbox" class=""/><span>长期</span>
									</div>
								</div>
							</div>
							<div class="form-item">
								<h4 class="form-label">填写人身份:</h4>
								<div class="form-entity">
									<div class="form-reg-radio">
										<input type="radio" name="representative" checked="checked"/><span>我是法定代表人</span>
										<input type="radio" name="representative"/><span>我是代理人</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item-group form-group">
						<div class="group-hd">
							<h3>联系方式</h3>
						</div>
						<div class="group-bd">
							<div class="form-item">
								<h4 class="form-label">常用联系人/电话:</h4>
								<div class="form-entity">
									<div class="form-field form-multi-ipt">
										<input class="ipt ipt-name" type="text" name="userName" value="" placeholder="请输入联系人姓名" />
										<input class="ipt ipt-mobile last" type="text" name="userName" value="" placeholder="请输入联系人手机号" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-action clearfix">
						<a class="reset-btn" href="reg_company_a.jsp">上一步</a>
						<a id="messageSure" href="reg_company_c.jsp" class="glb-btn submit-btn">
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