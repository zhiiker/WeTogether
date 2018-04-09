<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<%=request.getContextPath()%>/web/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/web/js/myCenter_page.js"></script>
<script src="<%=request.getContextPath()%>/web/js/jquery.qqFace.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/web/css/my_center.css" />
<title>我的个人中心</title>
<style>
.editor {
	height:20pt;
	width:400pt;
	resize: vertical;
	overflow: auto;
	border: 1px solid silver;
	border-radius: 5px;
	box-shadow: inset 0 0 10px silver;
	color:blue;
}
.commentArea{
	background-color:#8470FF;
	border-style:dotted;
	box-shadow:7px 7px 15px #CCCCCC;
/* 	border-radius:50px; */
	color:white;
}

</style>
<style>
.comment{width:680px; margin:10px auto; position:relative}
.comment h3{height:28px; line-height:28px}
.com_form{width:100%; position:relative}
.input{width:99%; height:40px; border:1px solid #ccc}
.com_form p{height:28px; line-height:28px; position:relative}
span.emotion{width:42px; height:20px; background:url(/WeTogether/web/img/icon.gif) no-repeat 2px 2px; padding-left:20px; cursor:pointer}
span.emotion:hover{background-position:2px -28px}
.qqFace{margin-top:4px;background:#fff;padding:2px;border:1px #dfe6f6 solid;}
.qqFace table td{padding:0px;}
.qqFace table td img{cursor:pointer;border:1px #fff solid;}
.qqFace table td img:hover{border:1px #0066cc solid;}
#show{width:680px; margin:20px auto}

.sub_btn {
	position:absolute; right:0px; top:0;
	display: inline-block;
	zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
	*display: inline;
	vertical-align: baseline;
	margin: 0 2px;
	outline: none;
	cursor: pointer;
	text-align: center;
	font: 14px/100% Arial, Helvetica, sans-serif;
	padding: .5em 2em .55em;
	text-shadow: 0 1px 1px rgba(0,0,0,.6);
	-webkit-border-radius: 3px; 
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
	box-shadow: 0 1px 2px rgba(0,0,0,.2);
	color: #e8f0de;
	border: solid 1px #538312;
	background: #64991e;
	background: -webkit-gradient(linear, left top, left bottom, from(#7db72f), to(#4e7d0e));
	background: -moz-linear-gradient(top,  #7db72f,  #4e7d0e);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#7db72f', endColorstr='#4e7d0e');
}
.sub_btn:hover {
	background: #538018;
	background: -webkit-gradient(linear, left top, left bottom, from(#6b9d28), to(#436b0c));
	background: -moz-linear-gradient(top,  #6b9d28,  #436b0c);
	filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#6b9d28', endColorstr='#436b0c');
}
</style>

<script type="text/javascript">
$(function(){
	$('.emotion').qqFace({
		id : 'facebox', //表情盒子的ID
		assign:'saytext', //给那个控件赋值
		path:'/WeTogether/web/img/face/'	//表情存放的路径
	});
// 	$(".sub_btn").click(function(){
// 		var str = $("#saytext").val();
// 		alert(str);
// 		//$("#show").html(replace_em(str));
// 	});
});
//查看结果
// function replace_em(str){
// 	str = str.replace(/\</g,'&lt;');
// 	str = str.replace(/\>/g,'&gt;');
// 	str = str.replace(/\n/g,'<br/>');
// 	str = str.replace(/\[em_([0-9]*)\]/g,'<img src="face/$1.gif" border="0" />');
// 	return str;
// }
</script>
</head>
<body>
	<!-- 		表情框 -->
			<div id="main">


				<div id="show"></div>
				<div class="comment">
					<div class="com_form">
						<textarea class="input" id="saytext" name="saytext"></textarea>
						<p>
							<input type="button" class="sub_btn" value="提交" onClick="sendMessage()"><span
								class="emotion"></span>
						</p>
					</div>
				</div>
			</div>

			<!-- end -->


</body>
</html>