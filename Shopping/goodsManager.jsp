<%@ page contentType="text/html;charset=gb2312"%>
<html>
<head>
	
	<title>商品管理</title>
	
	
	<script language="javascript">
		function qingkong()
	    {  
	        document.all.goodsname.value="";
	        document.all.gtype.value="";
	        document.all.gprice.value="";
	        document.all.gamount.value="";
	        document.all.Gimgurl.value="";
	        document.all.gintroduction.value="";
	    }
	    function checkAddGoods()
	    {
	   		var goodsname = document.all.goodsname.value.trim();
	   		var gtype = document.all.gtype.value.trim();
	   		var gprice = document.all.gprice.value.trim();
	   		var gdate = document.all.gdate.value.trim();
	   		var gamount = document.all.gamount.value.trim();
	   		var Gimgurl = document.all.Gimgurl.value.trim();
	   		var gintroduction = document.all.gintroduction.value.trim();
	   		var zzs =/^[0-9]{1,6}(\.[0-9]+)*$/;
	   		
	   		if(goodsname=="")
	   		{
	   			alert("商品名称不能为空！！");
	   			return;
	   		}
	   		if(gtype=="")
	   		{
	   			alert("商品类型不能为空！！");
	   			return;
	   		}
	   		if(gprice=="")
	   		{
	   			alert("商品价格不能为空！！");
	   			return;
	   		}
	   		else if(!zzs.test(gprice))
	   		{
	   			alert("商品价格格式不对！！");
	   			return;
	   	    }
	   		if(gamount=="")
	   		{
	   			alert("商品数量不能为空！！");
	   			return;
	   		}
	      	if(gintroduction=="")
	   		{
	   			alert("暂时缺少对该商品的简要介绍！！");
	   			return;
	   		}
	   		document.form.submit();
	    }
	</script>
</head>

<body style="background:url('img/top/bg.gif')">



<%
	String str=(String)session.getAttribute("Manager");
	if(str==null)
	{
%>
		<script LANGUAGE="JAVASCRIPT">
		alert("请先登录！！！");
		window.location.href="ManagerLogin.jsp";  
		</script>
<%
	}
%>

<form action="goodsManagerHandle.jsp" name="form" method="post">
<table border="0" align="center" style="border:2px solid #6daafc" bgcolor="#d2e9ff">
<tr><td>
<table border="0">
<tr>
  <td align="center" colspan="2" style="font-size:1.2em">
    商品详细信息 
  </td>
</tr>
<tr>
<td colspan="2">
	<table cellpadding="2" bgcolor="#d2e9ff" cellspacing="1" border="0">
	<tr>
	<td bgcolor="#d2e9ff">商品名称</td>
	<td bgcolor="#d2e9ff"><input name="goodsname" id="goodsname" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">商品类型</td>
	<td bgcolor="#d2e9ff"><input name="gtype" id="gtype" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">商品价格</td>
	<td bgcolor="#d2e9ff"><input name="gprice" id="gprice" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">上架日期</td>
	<td bgcolor="#d2e9ff"><input name="gdate" id="gdate" size="60" type="text" value="将自动输入系统当前时间！" disabled="false"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">商品数量</td>
	<td bgcolor="#d2e9ff"><input name="gamount" id="gamount" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff">图片URL</td>
	<td bgcolor="#d2e9ff"><input name="Gimgurl" id="Gimgurl" size="60" type="text"></td>
	</tr>
	<tr>
	<td bgcolor="#d2e9ff" rowspan="3">商品简介</td>
	<td bgcolor="#d2e9ff" colspan="5"><textarea style="width:432px;height:70px" cols="60" rows="4" name="gintroduction" id="gintroduction"></textarea></td>
	</tr>
	</table>
</td>
</tr>
<tr>
		<td align="right">
			<input name="action" type="submit" value="add"/>
		</td>
		<td><input name="action" type="reset" value="reset"/></td>
</tr>
</table>
</form>
</td></tr></table>
</body>

</html>
