<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	<%!
		public int getSum(int n) {
			int sum = 0;
			for (int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	
	%>
	
	<%
		int[] scores = {81, 90, 100, 95, 80};
		int sum = 0;
		double average = 0;
		
		for (int temp : scores) {
			sum += temp;
		}
		
		average = (double)sum / (scores.length);
	%>
	
	
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for (String temp : scoreList) {
			if (temp.equals("O")) {
				score += 100 / scoreList.size();
			}
		}
	%>
	
	<%
		String birthDay = "20010820";
		int year = Integer.parseInt( birthDay.substring(0, 4));
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		int nowYear = Integer.parseInt(sdf.format(now));
		int age = nowYear - year;		
	%>
	
	<h1>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h1>
	<h1>평균 점수는 <%= average %> 입니다.</h1>
	<h1>채점 결과는 <%= score %>점 입니다.</h1>
	<h1><%= birthDay %>의 나이는 <%= age %>세 입니다.</h1>
	

</body>
</html>