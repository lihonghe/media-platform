<div class="user-pane">
	Welcome, root
</div>

<h1>我的关注点</h1>
<table class="keyword-list">
	<tr>
		<th>关注点ID</th>
		<th>关注点内容</th>
		<th>关注点网站</th>
		<th>关注点权重</th>
		<th>关注点操作</th>
	</tr>
	<#list keywords as key>
	<tr>
		<td>${key.id}</td>
		<td>${key.text}</td>
		<td>
			<#list key.website as site>
				${site}
			</#list>
		</td>
		<td>${key.weight}</td>
		<td>
			<a href="keywords/delete.html?id=${key.id}">删除</a>
		</td>
	</tr>
	</#list>
</table>

<h1>添加关注点</h1>
<div class="add-keywords">
	<form method="post" action="/keywords/add.html">
		<p>
			<label for="text" class="fieldName">关注点内容：</label>
			<input id="text" name="text" type="text" required>
		</p>
		<p>
			<label class="fieldName">关注点网站：</label>
			<input id="website" name="website" type="checkbox" value="youku.com">
			<label>优酷</label>
			<input name="website" type="checkbox" value="tudou.com">
			<label>土豆</label>
		</p>
		<p>
			<label for="weightRange" class="fieldName">关注点权重：</label>
			<input id="weightRange" type="range" value="0" min="0" max="255" required>
			<input id="weight" name="weight" type="text" value="0" min="0" max="255" required>
		</p>
		<p>
			<input type="submit" value="添加">
			<input type="reset" value="重置">
		</p>
	</form>
</div>
<script type="text/javascript" src="${ project.staticDomain! }/js/list.js"></script>