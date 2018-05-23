package org.vip.entity;

public class User {
	//会员登陆密码  会员支付密码   会员账号   会员账户名   会员身份证号   会员注册时间  会员账户余额   
	private String vpwd;
	private String payPwd;
	private String vaccount  ;
	private String vname ; 
	private String vcard ; 
	private String vdate  ;
	private String vbalance;
	
	public User(){
		
	}
	public User(String pwd,String payPwd,String vaccount,String vname,String vcard,String vdate,String vbalance){
		this.vpwd = pwd;
		this.payPwd = payPwd;
		this.vaccount = vaccount;
		this.vname = vname;
		this.vcard = vcard;
		this.vdate = vdate;
		this.vbalance = vbalance;
	}
	
	public String getVpwd() {
		return vpwd;
	}
	public void setVpwd(String vpwd) {
		this.vpwd = vpwd;
	}
	public String getPayPwd() {
		return payPwd;
	}
	public void setPayPwd(String payPwd) {
		this.payPwd = payPwd;
	}
	public String getVaccount() {
		return vaccount;
	}
	public void setVaccount(String vaccount) {
		this.vaccount = vaccount;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getVcard() {
		return vcard;
	}
	public void setVcard(String vcard) {
		this.vcard = vcard;
	}
	public String getVdate() {
		return vdate;
	}
	public void setVdate(String vdate) {
		this.vdate = vdate;
	}
	public String getVbalance() {
		return vbalance;
	}
	public void setVbalance(String vbalance) {
		this.vbalance = vbalance;
	}
	
	public String toString(){
		return "会员密码:"+getVpwd()+"\n会员支付密码："+getPayPwd()+"/n会员账号:"+getVaccount()+"/n会员账户名:"+getVname()+
				"/n会员身份证号:"+getVcard()+"/n会员注册时间:"+getVdate()+"/n会员账户余额:"+getVbalance();
	}


}
