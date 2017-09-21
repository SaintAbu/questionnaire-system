<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加信息，插入数据库</title>
</head>
<body>
	<jsp:useBean id="aad" class="bean.DBBean" scope="page" />
	<%		
	request.setCharacterEncoding("UTF-8");
	String Grade=request.getParameter("Grade");
	    String people=request.getParameter("people");
	  //  people= new String(people.getBytes("iso8859-1"),"utf-8");
	  String phone=request.getParameter("phone");
		String fax=request.getParameter("fax");
		//fax = new String(fax.getBytes("iso8859-1"),"utf-8");
	    String jj=request.getParameter("jj");
	   // jj= new String(jj.getBytes("iso8859-1"),"utf-8");
	    String xqName=request.getParameter("xqName");
	   // xqName = new String(xqName.getBytes("iso8859-1"),"utf-8");
		
	    String gaishu=request.getParameter("gaishu");
	   // gaishu= new String(gaishu.getBytes("iso8859-1"),"utf-8");
		String fenlei=request.getParameter("fenlei");
		//fenlei = new String(fenlei.getBytes("iso8859-1"),"utf-8");
	    String hangye=request.getParameter("hangye");
	   // hangye= new String(hangye.getBytes("iso8859-1"),"utf-8");
	   String yuan=request.getParameter("yuan");

	    String danwei=request.getParameter("danwei");
	   // danwei= new String(danwei.getBytes("iso8859-1"),"utf-8");
	    String xqTime0=request.getParameter("xqTime0");
	   // xqTime0= new String(xqTime0.getBytes("iso8859-1"),"utf-8");
	    String xqTime1=request.getParameter("xqTime1");
	   // xqTime1= new String(xqTime1.getBytes("iso8859-1"),"utf-8");
	    String gk=request.getParameter("gk");
	    String dy=request.getParameter("dy");
	    //gk= new String(gk.getBytes("iso8859-1"),"utf-8");
	    String mainword1=request.getParameter("mainword1");
	    String mainword2=request.getParameter("mainword2");
	    String mainword3=request.getParameter("mainword3");
	    String mainword4=request.getParameter("mainword4");
	    String mainword5=request.getParameter("mainword5");
	   // mainword= new String(mainword.getBytes("iso8859-1"),"utf-8");
	   
	   
	    
	    
	      
	   session.setAttribute("gk",gk);
	   session.setAttribute("people",people);
	   session.setAttribute("Grade",Grade);
	   if(mainword1.equals(""))
	    {
		   mainword2="";
		   mainword3="";
		   mainword4="";
		   mainword5="";
	    }
	    else if(mainword2.equals(""))
	    {
		   mainword3="";
		   mainword4="";
		   mainword5="";
	    }
	    else if(mainword3.equals(""))
	    {
		   mainword4="";
		   mainword5="";
	    }
	    else if(mainword4.equals(""))
	    {
		   mainword5="";
	    }
		//
		//System.out.println(sql);
		//System.out.println(dy);
		//System.out.println(people);
		
		
		String type1=request.getParameter("type1");
		String type3=request.getParameter("type3");
		String type4=request.getParameter("type4");
		String type5=request.getParameter("type5");
		request.setCharacterEncoding("UTF-8");
		String[] type11=request.getParameterValues("type1");
		String sql1=" ";
		for(int i=0;i<type11.length;i++)
		{
			sql1+=type11[i]+" ";
		};
		
		String[] type33= request.getParameterValues("type3");
		String sql3=" ";
		for(int i=0;i<type33.length;i++)
		{
			sql3+=type33[i]+" ";
		}
		//System.out.println("少时诵诗书"+sql3);
		//System.out.println("吾问无为谓"+type3);
		
		String xkfl1;
		String xkfl2;
		String xkfl3;
		String xqjsyyhy1;
		String xqjsyyhy2;
		String xqjsyyhy3;
		String sql4=" ";
	    if(type3.equals("基础研究"))
	    {
	    	type4="";
	    	xqjsyyhy1="";
	    	xqjsyyhy2="";
	    	xqjsyyhy3="";
	    	xkfl1=request.getParameter("xkfl1");
		    xkfl2=request.getParameter("xkfl2");
		    xkfl3=request.getParameter("xkfl3");
	    }
	    else
	    {
	    	String[] type44 = request.getParameterValues("type4");
			for(int i=0;i<type44.length;i++)
			{
				sql4+=type44[i]+" ";
			}
			xkfl1="";
			xkfl2="";
			xkfl3="";
			xqjsyyhy1=request.getParameter("xqjsyyhy1");
		    xqjsyyhy2=request.getParameter("xqjsyyhy2");
		    xqjsyyhy3=request.getParameter("xqjsyyhy3");
	    }
	    
			
		String[] type55= request.getParameterValues("type5");
		String sql5=" ";
		for(int i=0;i<type55.length;i++)
		{
			sql5+=type55[i]+" ";
		}
		String sql="insert into unit values('"+Grade+"','"+gk+"','"+dy+"','"+people+"','"+phone+"','"+fax+"','"+jj+"','"+xqName+"','"+xqTime0+"','"+xqTime1+"','"+gaishu+"','"+mainword1+"','"+mainword2+"','"+mainword3+"','"+mainword4+"','"+mainword5+"','"+xkfl1+"','"+xkfl2+"','"+xkfl3+"','"+xqjsyyhy1+"','"+xqjsyyhy2+"','"+xqjsyyhy3+"','"+danwei+"','"+yuan+"','"+sql1+"','"+sql5+"','"+sql3+"','"+sql4+"','0','0','0')";
		aad.execQuery(sql);
		//String sql11="insert into ttt values('"+sql1+"','"+sql3+"','"+sql4+"','"+sql5+"')";
		//System.out.println(sql);
		//System.out.println("sssss"+Grade);
		//System.out.println(sql4);
		//aad.execQuery(sql11);
		aad.close();
		//response.sendRedirect("check.jsp");
	%>
	<h1 align="center">添加成功！</h1>
	<!--  <table border="0" align="center">
		<tr>
			<td>
				<form action="check.jsp" method="post">
					<input type="submit" value='<%=people %>' style="color: #BC8F8F"> 
				</form>
			</td>
		</tr>
	</table>-->

</body>
</html>