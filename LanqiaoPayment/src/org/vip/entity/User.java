package org.vip.entity;

public class User {
	private int vid ; 
	private String vaccount  ;
	private String vname ; 
	private String vcard ; 
	private String vdate  ;
	private String vbalance;
	
	public User(){
		
	}
	public User(int vid,String vaccount,String vname,String vcard,String vdate,String vbalance){
		this.vid = vid;
		this.vaccount = vaccount;
		this.vname = vname;
		this.vcard = vcard;
		this.vdate = vdate;
		this.vbalance = vbalance;
	}
	
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
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
		return "会员ID:"+getVid()+"/n会员账号:"+getVaccount()+"/n会员账户名:"+getVname()+
				"/n会员身份证号:"+getVcard()+"/n会员注册时间:"+getVdate()+"/n会员账户余额:"+getVbalance();
	}


}
