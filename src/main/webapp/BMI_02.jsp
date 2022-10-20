<%@page import="java.math.BigDecimal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("utf-8");
   BigDecimal hundred = new BigDecimal(100);
   BigDecimal tall = new BigDecimal(request.getParameter("tall"));
   BigDecimal weight = new BigDecimal(request.getParameter("weight"));
   BigDecimal bmi = weight.divide(tall.divide(hundred).multiply(tall.divide(hundred)), 3, BigDecimal.ROUND_HALF_UP);
   String bmiResult = "";
   String stateImage = "";
   if(bmi.compareTo(new BigDecimal(0))>=0 && bmi.compareTo(new BigDecimal(18.4))<=0){
      bmiResult = "저체중";
      stateImage = "./images/1.png";
   }else if(bmi.compareTo(new BigDecimal(18.5))>=0 && bmi.compareTo(new BigDecimal(22.9))<=0){
      bmiResult = "정상체중";
      stateImage = "./images/2.png";
   }else if(bmi.compareTo(new BigDecimal(23))>=0 && bmi.compareTo(new BigDecimal(24.9))<=0){
      bmiResult = "과체중";
      stateImage = "./images/3.png";
   }else if(bmi.compareTo(new BigDecimal(25))>=0 && bmi.compareTo(new BigDecimal(29.9))<=0){
      bmiResult = "비만";
      stateImage = "./images/4.png";
   }else{
      bmiResult = "고도비만";
      stateImage = "./images/5.png";
   }
%>
</body>
</html>