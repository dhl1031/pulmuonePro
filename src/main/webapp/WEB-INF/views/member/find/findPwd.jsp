<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/layouts/head.jsp" %>

<style> /* 닫기 버튼 */

	.relative {
		position: relative;
	}

	a, a:hover, a:active {
	    text-decoration: none;
	    color: #333;
	}

	.member-close {
	    width: 33px;
	    height: 33px;
	    display: block;
	    position: absolute;
	    right: 0;
	    top: 40px;
	    background: url("/resources/assets/images/button_layer_close.png") no-repeat;
	}


	.account-wrapper {
	    width: 640px;
	    margin: 0 auto;
	}

	.account-wrapper .account-logo-wrapper {
	    padding-top: 40px;
	    margin-bottom: 40px;
	}

	.account-wrapper .account-logo {
	    display: block;
	    margin: 40px auto 20px;
	    width: 94px;
	    height: 67px;    
	    background: url("/resources/assets/images/common/main_logo.png") no-repeat;

	}
</style>


<style> /* 상단 영역 */
	.account-wrapper .title b {
	    font-weight: 400;
	}

	.account-wrapper .textrow-layout {
	    display: flex;
	    align-items: flex-start;
	    padding: 60px 0;
	}
	
	.account-wrapper .textrow-layout .content {
    	flex: 1;
	}

	.form-input:not(:last-of-type) {
	    margin-bottom: 10px;
	}
	
	.account-wrapper .title {
	    font-size: 24px;
	    line-height: 30px;
	    letter-spacing: -1.8px;
	    color: #333;
	    font-weight: 300;
	    flex: 1;
	}
	
	
	input[type="password"] {
	    letter-spacing: 1px !important;
	}
	
	/* 로그인 버튼 */	
	.button-basic:hover {
	    border-color: #7acc12 !important;
	    transition-duration: .3s;
	    color: #7acc12;
	}
	[type=button]:not(:disabled), [type=reset]:not(:disabled), [type=submit]:not(:disabled), button:not(:disabled) {
	    cursor: pointer;
	}
	.button-basic {
	    display: flex;
	    cursor: pointer;
	    align-items: center;
	    justify-content: center;
	    width: 350px;
	    height: 60px;
	    letter-spacing: -1.65px;
	    border-radius: 20px 0 20px 0;
	    font-size: 18px;
	    font-weight: 400;
	    color: #333;
	    background: #fff;
	    transition-duration: .3s;
	}
	.border {
	    border: 1px solid #dee2e6!important;
	}
	[type=button], [type=reset], [type=submit], button {
	    -webkit-appearance: button;
	}
</style>


<style> /*  탭 형식 구조 */

.tab-border-style {
    border-bottom: 1px #e5e5e5 solid;
    display: flex;
    align-items: center;
}

.tab-border-style .item {
    border-bottom: 3px transparent solid;
    margin-bottom: -1px;
    position: relative;
    z-index: 1;
}

.tab-border-style li+li {
    margin-left: 20px;
}

.tab-border-style .item.active {
    border-color: #333;
}

.tab-border-style .item button, .tab-border-style .item a {
    display: block;
    height: 54px;
    display: flex;
    align-items: center;
    font-size: 18px;
    color: #666;
    letter-spacing: -1.35px;
    line-height: 1;
}

.tab-border-style .item.active button, .tab-border-style .item.active a {
    color: #333;
    font-weight: 500;
}


</style>


<style> /* 안내 영역 */

.type-guide-area {
    padding: 60px 90px 60px;
}

.caution-unit {
    text-align: center;
}

.mark, mark {
    padding: 0.2em;
    background-color: #fcf8e3;
}

.caution-unit .mark {
    width: 100px;
    height: 100px;
    margin: 0 auto 10px;
    display: block;
    border-radius: 50%;
    background: #e5e5e5 url(/resources/assets/images/ico_caution.png) no-repeat center center;
}

.caution-unit h4 {
    font-size: 20px;
    color: #333;
    font-weight: 400;
    letter-spacing: -1.5px;
    line-height: 28px;
    margin-top: 26px;
    display: block;
}

.small, small {
    font-size: .875em;
    font-weight: 400;
}

.caution-unit p {
    margin-top: 20px;
    font-size: 20px;
    color: #666;
    line-height: 1.5;
    letter-spacing: -1.5px;
    font-weight: 300;
    text-align: center;
}

.caution-unit p.small {
    margin-top: 12px;
    font-size: 16px;
    color: #999;
}

.button-set {
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 36px 0;
}

.w-100 {
    width: 100%!important;
}

[type=button]:not(:disabled), [type=reset]:not(:disabled), [type=submit]:not(:disabled), button:not(:disabled) {
    cursor: pointer;
}


.button-basic.primary {
    background: #7acc12;
    color: #fff;
}


</style>


<body>
	<div class="wrapper">
		<div class="container relative">
			<a class="member-close" href="/"></a>
			<div class="account-wrapper">
				<div class="account-logo-wrapper">
					<a class="account-logo" alt="풀무원녹즙"></a>				
				</div>
			</div>
		</div>
		
		<div class="container relative">
			<div class="account-wrapper">
				<ul class="tab-border-style">
					
					<li class="item active">
					
					
						<a href="/member/find/id.do" class="item">
							아이디찾기
						</a>
					</li>
					
					
					<li class="item">
					
						<a href="/member/find/password.do" class="item">
							비밀번호찾기
						</a>
					</li>
				</ul>
		
		<div>
			<div class="reference-area">
				<p>
					비밀번호 찾기를 위해 아이디 입력과<br>
					본인인증을 진행해 주세요.
				</p>
			</div>
			<div class="type-guide-area" style="padding-top: 56px">
				<h5>일반회원</h5>
				<div class="form-input" style="margin-bottom: -2px">
					<dl>
						<dt><label>아이디</label></dt>
						<dd>
							<input type="text" id="memberId">
						</dd>
					</dl>
					<p id="memberIdError" style="padding-left: 136px"></p>
				</div>
				<div class="button-set" style="margin:20px 0 0">
					<button class="button-basic primary w-100" id="findPwdAuth" style="height: 69px">본인인증</button>
				</div>
			</div>
			<div class="type-guide-area" style="padding-top: 56px">
				<h5>SNS 간편회원</h5>
				<div class="sns-selector-group" style="padding-top: 10px">
					<label class="kakao item">
						<div class="ico">
							<i></i>
						</div>
						<input type="radio" name="moveTo" value="/member/find/password-social?s=K">
						<p>카카오</p>
					</label>
					<label class="naver item">
						<div class="ico">
							<i></i>
						</div>
						<input type="radio" name="moveTo" value="/member/find/password-social?s=N">
						<p>네이버</p>

					</label>
				</div>
				<div class="button-set" style="margin-top: 30px">
					<button class="button-basic primary w-100" onclick="moveSocial()" style="height: 69px">인증하기</button>
				</div>
			</div>
		</div>
		
				
		
				
			</div>
		</div>
 	</div>
</body>

<script type="text/javascript">
	$("#findIdAuth").on("click", function() {

		$(this).parent().submit();
		
// 		//window.open("[팝업을 띄울 파일명 path]", "[별칭]", "[팝업 옵션]")
// 		var url  = "https://nice.checkplus.co.kr/CheckPlusSafeModel/service.cb?m=authMobileMain";
// 		window.open(url, "mypopup", "width=450, height=250, top=150, left=200");
	
	})
	
		
</script>


</html>
