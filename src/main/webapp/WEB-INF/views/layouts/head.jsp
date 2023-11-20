<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>풀무원 녹즙</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" type="image/x-icon" href="/resources/assets/images/pul_favicon.png">
<link rel="stylesheet" href="/resources/assets/css/notosanskr.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="/resources/assets/css/owl.theme.default.css">
<link rel="stylesheet" href="/resources/assets/css/style.css">


<script src="/resources/assets/js/jquery-2.1.4.min.js"></script>
<script src="/resources/assets/js/jquery.form.min.js"></script>

<!--  2.1.4 로 버젼 다운 3.6.4 사용하는 인원 없으면 삭제 요망 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script> -->

<script src="/resources/assets/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="/resources/assets/js/design.js"></script>

<script src="/resources/assets/js/build/ckeditor.js"></script>
<script src="/resources/assets/js/build/ko.js"></script>

<script src="/resources/assets/js/message.js"></script>
<script src="/resources/assets/js/clipboard.min.js"></script>
<script src="/resources/assets/js/fdd.js"></script>
<script src="/resources/assets/js/request.js"></script>
<script src="/resources/assets/js/owl.carousel.min.js"></script>

<!-- 달력 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script src="/resources/assets/js/daterangepicker.js"></script>
<script type="text/javascript">
<c:choose>
<c:when test="${ auth.getName() eq null }">
window.is_signed = false;
</c:when>
<c:otherwise>
window.is_signed = true;
window.kakaoSimpleData = {"memberId":"aaaaaaaa","name":"임재석","recommenderCode":"XQNGV"};
</c:otherwise>
</c:choose>
</script>
<script>
	window.dataLayer = window.dataLayer || [];

	function gtag() {
		dataLayer.push(arguments);
	}

	gtag('js', new Date());

	gtag('config', 'UA-150666346-1');

	var timer = undefined	
</script>
<script>
      function KakaoShare(propKey) {
        this.propKey = propKey;

        try {
          Kakao.init(this.propKey);
        } catch (e) {

        }
      }
      var kakaoAppKey = 'c153013cc3f2b9900924ea8e382fbf8d';
      var share = new KakaoShare(kakaoAppKey);
	</script>
</head>


