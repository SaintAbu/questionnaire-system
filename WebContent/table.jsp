<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
table {
	border-collapse: collapse;
	text-align: center;
	margin: 0 auto;
	font-family: '微软雅黑';
}
</style>
<script language="javascript" src="js/xkfl.js">
</script>
<script language="javascript" src="js/xqjsyyhy.js"></script>
<script language="javascript" src="js/jquery-1.4.js"></script>
<script type="text/javascript">
//当文档加载完成时 初始化两个三级菜单
$(document).ready(function(){
	//初始化 三级菜单
	getFirst('xkfl1');
	changefirst();
	changesecond();
	getFirst_xq('xqjsyyhy1');
	changefirst_xq();
	changesecond_xq();
	alert("1");
	
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
</head>
<body>
	<td><label>学科分类（限基础研究填写）</label></td>
	<td colspan="5"><select name="xkfl1" id="xkfl1"
		onchange="changefirst()" class="selectwidth">
	</select> <select name="xkfl2" id="xkfl2" onchange="changesecond()"
		class="selectwidth">
	</select> <select name="xkfl3" id="xkfl3" class="selectwidth">
	</select></td>
</body>
</html>