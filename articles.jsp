<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="demo">
<head>
<title>Articles</title>
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 5px;
}

table tr:nth-child(1) {
	background-color: #f1f1f1;
}

table tr:nth-child(even) {
	background-color: #ffffff;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.min.js"></script>
</head>
<body>
	<div ng-controller="Articles">
		<table>
			<th>Article-Id</th>
			<th>Article Name</th>
			<th>Article Author</th>
			<th>Article Url</th>
			<tr ng-repeat="x in articles">
				<td>{{ x.articleId }}</td>
				<td>{{ x.articleName }}</td>
				<td>{{ x.articleAuthor }}</td>
				<td>{{ x.articleUrl }}</td>
			</tr>
		</table>
	</div>
	<script type="text/javascript">
	 angular.module('demo', [])
	 .controller('Articles', function($scope, $http) {
	     $http.get('http://localhost:8080/ArticleDetails/articles/getArticles').
	         then(function(response) {
	             $scope.articles = response.data;
	         });
	 });
	</script>
</body>
</html>