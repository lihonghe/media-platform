<#assign tiles=JspTaglibs["http://tiles.apache.org/tags-tiles"]>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>爬虫管理平台</title>
<@tiles.insertAttribute name="header" />
</head>
<body>
	<div class="limit">
		<@tiles.insertAttribute name="body" />
		<@tiles.insertAttribute name="footer" />
	</div>
</body>
</html>