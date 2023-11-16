<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>풀무원 녹즙 | 맞춤큐레이션</title>
<meta name="description" content="하루 한 병 건강한 습관 풀무원녹즙, 신선한 채소와 과일의 영양을 매일 아침 배송합니다.">
<meta name="viewport"     content="width=device-width,initial-scale=1.0">
<script src="/resources/assets/js/jquery-2.1.4.min.js"></script>
	<script src="/resources/assets/js/jquery.form.min.js"></script>


	<link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resources/assets/css/bootstrap-fdd.css">
	<script src="/resources/assets/js/bootstrap.bundle.min.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js" ></script>
	<script src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js" integrity="sha384-DRe+1gYJauFEenXeWS8TmYdBmDUqnR5Rcw7ax4KTqOxXWd4NAMP2VPU5H69U7yP9" crossorigin="anonymous"></script>
	<script src="/resources/assets/js/clipboard.min.js"></script>
	<script src="/resources/assets/js/fdd.js"></script>
	<script src="/resources/assets/js/request.js"></script>
	<link rel="stylesheet" href="/resources/assets/css/contents_v1.css">


	<link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css"/>
	<link rel="stylesheet" href="/resources/assets/css/owl.theme.default.css"/>
	<script src="/resources/assets/js/owl.carousel.min.js"></script>

	<link rel="stylesheet" href="/resources/assets/css/layout_style.css">
	<link rel="stylesheet" href="/resources/assets/css/a-guide.css">
	<link rel="stylesheet" href="/resources/assets/css/contents2.css">

	<link rel="stylesheet" href="/resources/assets/css/daterangepicker.css"/>
	<script src="/resources/assets/js/daterangepicker.js"></script>
	<link rel="stylesheet" href="/resources/assets/css/style.css">
<link rel="shortcut icon" type="image/x-icon" href="/resources/assets/images/pul_favicon.png">
</head>
<body>
<div class="wrapper">
<%@ include file="/WEB-INF/views/layouts/header.jsp" %>
<main class="step2">
<div id="container-wrapper" class="container-wrapper"></div> <!-- TODO : 회원쪽 페이지들은 <div class="container-wrapper member"> -->
<script>
$(function (){
//     if(!sessionStorage.getItem('req1')){
//         location.href ='/jspPro/pulmuone_curation/curation01.jsp'
//     }
	if(sessionStorage.getItem('req2')){
		const prevReq2 = JSON.parse(sessionStorage.getItem('req2'))
		console.log('req2', prevReq2)
		$('.question-section').children().each((i,v)=>{
			const idx = $(v).find('.idx').prop('name')

			Object.keys(prevReq2).forEach((value,index)=>{
				if(value === idx){
					if(prevReq2[value]===$(v).find('.unit').children('.slider-group input:eq(1)').val()){
						$(v).find('.unit').children('.slider-group input:eq(1)').prop('checked', true)
						$(v).find('[data-pointer]')
								.addClass("v1")
								.removeClass("v0")
								.removeClass("v2")
					} else if(prevReq2[value]===$(v).find('.unit').children('.slider-group input:eq(2)').val()){
						$(v).find('.unit').children('.slider-group input:eq(2)').prop('checked', true)
						$(v).find('[data-pointer]')
								.addClass("v2")
								.removeClass("v0")
								.removeClass("v1")
					} else {
						$(v).find('.unit').children('.slider-group input:eq(3)').prop('checked', true)
						$(v).find('[data-pointer]')
								.addClass("v0")
								.removeClass("v2")
								.removeClass("v1")
					}
				}
			})
		})
	}

    $('.next-btn').click(function (){
        const requestBody = $('form').serializeObject();
        sessionStorage.setItem('req2',JSON.stringify(requestBody));
	    location.href ='/customer/product/step3.do'
    });

	$(document).on("click", "[data-radios] input[type='radio']", function () {
		console.log($('.question-section').find('input[type=radio]').prop('value'))
		var p = $(this).parents("[data-radios]");
		console.log($(this))
		var v = 'v' + this.value;

		p.find("[data-pointer]")
			.removeClass("v0")
			.removeClass("v1")
			.removeClass("v2")
			.addClass(v);
	});
})

</script>

<div class="breadcrumb-style">
	<div class="container">
		<ul>
			<li><a>홈</a></li>
			<li><a class="active">맞춤큐레이션</a></li>
		</ul>
	</div>
</div>
<form>
	<div class="container curation">
		<div class="curation-progress-bar">
			<ul>
				<li class="active"><b>01.</b>건강목표</li>
				<li class="active"><b>02.</b>식이섭취</li>
				<li><b>03.</b>생활습관</li>
			</ul>
		</div>
		<div class="question-part" style="padding-bottom:0;">
			<div class="title" style="margin-bottom:0px;">
				<h3>각 음식을 주 며칠 드시는지 선택하세요.</h3>
			</div>
			<div class="question-section">
				
				<div class="slider-partition">
					<b>01.</b>
					<div class="txt-area">
						<h4>동물성 지방, 콜레스테롤이 많은 음식</h4>
						<span>(삼겹살, 갈비 등)</span>
					</div>
					<div class="slider-group-wrapper" data-radios>
						<div class="pointer" data-pointer>
							<span></span>
							<span></span>
							<span></span>
						</div>
						<div class="slider-group">
							<label class="unit" for="150">
								<input class="idx" checked name="15" id="150" type="radio" value="0">
								<span>0~2일</span>
							</label>
							<label class="unit" for="151">
								<input class="idx" name="15" id="151" type="radio" value="1">
								<span>3~5일</span>
							</label>
							<label class="unit" for="152">
								<input class="idx" name="15" id="152" type="radio" value="2">
								<span>6일 이상</span>
							</label>
						</div>
					</div>
				</div>
				
				<div class="slider-partition">
					<b>02.</b>
					<div class="txt-area">
						<h4>등푸른 생선과 견과</h4>
						<span>(꽁치, 고등어, 삼치, 아몬드, 치아씨드, 들기름 등)</span>
					</div>
					<div class="slider-group-wrapper" data-radios>
						<div class="pointer" data-pointer>
							<span></span>
							<span></span>
							<span></span>
						</div>
						<div class="slider-group">
							<label class="unit" for="160">
								<input class="idx" checked name="16" id="160" type="radio" value="0">
								<span>0~2일</span>
							</label>
							<label class="unit" for="161">
								<input class="idx" name="16" id="161" type="radio" value="1">
								<span>3~5일</span>
							</label>
							<label class="unit" for="162">
								<input class="idx" name="16" id="162" type="radio" value="2">
								<span>6일 이상</span>
							</label>
						</div>
					</div>
				</div>
				
				<div class="slider-partition">
					<b>03.</b>
					<div class="txt-area">
						<h4>염장, 훈제 음식</h4>
						<span>(젓갈, 장아찌, 소시지 등) </span>
					</div>
					<div class="slider-group-wrapper" data-radios>
						<div class="pointer" data-pointer>
							<span></span>
							<span></span>
							<span></span>
						</div>
						<div class="slider-group">
							<label class="unit" for="170">
								<input class="idx" checked name="17" id="170" type="radio" value="0">
								<span>0~2일</span>
							</label>
							<label class="unit" for="171">
								<input class="idx" name="17" id="171" type="radio" value="1">
								<span>3~5일</span>
							</label>
							<label class="unit" for="172">
								<input class="idx" name="17" id="172" type="radio" value="2">
								<span>6일 이상</span>
							</label>
						</div>
					</div>
				</div>
				
				<div class="slider-partition">
					<b>04.</b>
					<div class="txt-area">
						<h4>단음식, 전분이 많은 음식</h4>
						<span>(설탕, 초콜릿, 탄산음료, 빵 등)</span>
					</div>
					<div class="slider-group-wrapper" data-radios>
						<div class="pointer" data-pointer>
							<span></span>
							<span></span>
							<span></span>
						</div>
						<div class="slider-group">
							<label class="unit" for="180">
								<input class="idx" checked name="18" id="180" type="radio" value="0">
								<span>0~2일</span>
							</label>
							<label class="unit" for="181">
								<input class="idx" name="18" id="181" type="radio" value="1">
								<span>3~5일</span>
							</label>
							<label class="unit" for="182">
								<input class="idx" name="18" id="182" type="radio" value="2">
								<span>6일 이상</span>
							</label>
						</div>
					</div>
				</div>
				
				<div class="slider-partition">
					<b>05.</b>
					<div class="txt-area">
						<h4>통곡물</h4>
						<span>(귀리, 보리, 현미, 잡곡밥 등)</span>
					</div>
					<div class="slider-group-wrapper" data-radios>
						<div class="pointer" data-pointer>
							<span></span>
							<span></span>
							<span></span>
						</div>
						<div class="slider-group">
							<label class="unit" for="190">
								<input class="idx" checked name="19" id="190" type="radio" value="0">
								<span>0~2일</span>
							</label>
							<label class="unit" for="191">
								<input class="idx" name="19" id="191" type="radio" value="1">
								<span>3~5일</span>
							</label>
							<label class="unit" for="192">
								<input class="idx" name="19" id="192" type="radio" value="2">
								<span>6일 이상</span>
							</label>
						</div>
					</div>
				</div>
				
				<div class="slider-partition">
					<b>06.</b>
					<div class="txt-area">
						<h4>다양한 색깔로 하루 5가지 이상의 채소와 과일 </h4>
						<span>(양배추, 가지, 호박, 양파, 버섯, 토마토, 키위, 감, 포도 등)</span>
					</div>
					<div class="slider-group-wrapper" data-radios>
						<div class="pointer" data-pointer>
							<span></span>
							<span></span>
							<span></span>
						</div>
						<div class="slider-group">
							<label class="unit" for="200">
								<input class="idx" checked name="20" id="200" type="radio" value="0">
								<span>0~2일</span>
							</label>
							<label class="unit" for="201">
								<input class="idx" name="20" id="201" type="radio" value="1">
								<span>3~5일</span>
							</label>
							<label class="unit" for="202">
								<input class="idx" name="20" id="202" type="radio" value="2">
								<span>6일 이상</span>
							</label>
						</div>
					</div>
				</div>
				
				<div class="slider-partition">
					<b>07.</b>
					<div class="txt-area">
						<h4>녹황색 채소와 베리 </h4>
						<span>(시금치, 브로콜리, 당근, 블루베리, 크랜베리 등)</span>
					</div>
					<div class="slider-group-wrapper" data-radios>
						<div class="pointer" data-pointer>
							<span></span>
							<span></span>
							<span></span>
						</div>
						<div class="slider-group">
							<label class="unit" for="210">
								<input class="idx" checked name="21" id="210" type="radio" value="0">
								<span>0~2일</span>
							</label>
							<label class="unit" for="211">
								<input class="idx" name="21" id="211" type="radio" value="1">
								<span>3~5일</span>
							</label>
							<label class="unit" for="212">
								<input class="idx" name="21" id="212" type="radio" value="2">
								<span>6일 이상</span>
							</label>
						</div>
					</div>
				</div>
				
				<div class="slider-partition">
					<b>08.</b>
					<div class="txt-area">
						<h4>발효 음식</h4>
						<span>(요거트, 나토 등)</span>
					</div>
					<div class="slider-group-wrapper" data-radios>
						<div class="pointer" data-pointer>
							<span></span>
							<span></span>
							<span></span>
						</div>
						<div class="slider-group">
							<label class="unit" for="220">
								<input class="idx" checked name="22" id="220" type="radio" value="0">
								<span>0~2일</span>
							</label>
							<label class="unit" for="221">
								<input class="idx" name="22" id="221" type="radio" value="1">
								<span>3~5일</span>
							</label>
							<label class="unit" for="222">
								<input class="idx" name="22" id="222" type="radio" value="2">
								<span>6일 이상</span>
							</label>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<div class="button-set w220">
<!-- 			<button class="button-basic border" onclick="location.href='/jspPro/pulmuone_curation/curation01.jsp'" type="button">이전으로</button> -->
			<a href="javascript:history.back()" type="button" class="button-basic border">이전으로</a>
			<button class="next-btn button-basic primary" type="button" id="nextPage">다음으로</button>
		</div>
	</div>
</form>

<script type="text/javascript">


</script>

<script>

$("#nextPage").click(function() {
	location.href="/customer/product/step3.do";
})


  $(function(){

    axios.get('/user_summary/default').then(function (response) {

      const {info, customerVo} = response.data.RESULT_MSG;

		const ec = ( !info.overEnd) && (info.complex||info.hasHp) && customerVo.phiCustomerVo.intfacId == '0' && customerVo.phiCustomerVo.dlvyCustYn==='Y'
        if(ec&&customerVo){
          $('#quickChangeDrink').attr('href', `/mypage/drink/drink/change/${customerVo.custnumber}/${customerVo.prtnId}`)
          $('#quickChangeSchedule').attr('href', `/mypage/drink/drink/pause/${customerVo.custnumber}/${customerVo.prtnId}`)
        }else {
          $('#quickChangeDrink').attr('href', `/mypage?with=01`)
          $('#quickChangeSchedule').attr('href', `/mypage?with=01`)
        }
        console.log(window.innerWidth)
        if(window.innerWidth>1450){
          $('#mini-side-nav').show();
        }
    }).catch(function (error) {
      if(window.innerWidth>1450) {
        $('#mini-side-nav').show()
      }
	});
    window.addEventListener('resize', function(){
	  if(window.innerWidth>1450){
		$('#mini-side-nav').show();
	  }else {
		$('#mini-side-nav').hide();
	  }
	})

  })
</script>

<div style="display: none" id="mini-side-nav">
	<a href="/mypage/drink/drink"><img src="/resources/assets/images/ui/quick1.png" alt=""></a>
	<a id="quickChangeDrink" href="/mypage/drink/drink"><img src="/resources/assets/images/ui/quick2.png" alt=""></a>
	<a id="quickChangeSchedule" href="/mypage/drink/drink"><img src="/resources/assets/images/ui/quick3.png" alt=""></a>
	<a href="/mypage/drink/bill"><img src="/resources/assets/images/ui/quick4.png" alt=""></a>
	<a href="#"><img src="/resources/assets//images/ui/quickTop.png" alt=""></a>
</div>

<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 -->
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"> </script>
<script type="text/javascript">
  if (!wcs_add) var wcs_add={};
  wcs_add["wa"] = "s_3b444dd717b5";
  if (!_nasa) var _nasa={};
  if(window.wcs){
    wcs.inflow();
    wcs_do(_nasa);
  }
</script>
</main>
<%@ include file="/WEB-INF/views/layouts/footer.jsp" %>
</div>
</body>
</html>