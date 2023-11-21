<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="/WEB-INF/views/layouts/head.jsp"%>
<body>
	<div class="wrapper">
		<%@ include file="/WEB-INF/views/layouts/header.jsp"%>
		<main class="page forum">
			<div class="breadcrumb-style">
				<div class="container">
					<ul>
						<li><a href="/">홈</a></li>
						<li><a href="/mypage.do">MY녹즙</a></li>
						<li><a class="" href="/mypage/product/list.do">활동정보</a></li>
						<li><a class="active" href="/mypage/action/review.do">리뷰</a></li>
					</ul>
				</div>
			</div>
			<div class="container aside-layout" style="padding-bottom: 120px;">
				<%@ include file="/WEB-INF/views/layouts/mypage/aside.jsp"%>
				<div class="container">
					<div class="border-wrapper">
						<h2 class="container-title">찜한 상품</h2>
					</div>
					<div class="page-addiction-wrapper"
						style="align-items: center; margin-bottom: 17px;">
						<div class="info-copy description" style="margin-top: 7px;">
							<p style="padding: 0;">
								총 <b class="cnt">${fn:length(wishlist) }</b>건
							</p>
						</div>
					</div>
					<div class="box-partition"
						style="margin-bottom: 12px; padding: 0 20px; height: 60px; display: flex; justify-content: space-between; align-items: center">
						<label style="margin-bottom: 14px" class="check-type"> <input
							class="chk-all" id="chk-all" name="chk-all" type="checkbox">
							<span
							style="font-size: 16px; margin-bottom: 4px; padding-left: 51px;">전체선택</span>
						</label>
						<button type="button" id="deleteBtn" class="button-text">선택삭제</button>
					</div>
					<div class="box-partition" style="border: unset">

						<ul class="drinkchange-list favorite" id="pagable-items"
							data-list-object="append"
							style="border: 1px solid #e5e5e5; border-radius: 10px">
							<c:forEach items="${wishlist }" var="dto">
								<li data-idx="${dto.idx }" data-tag="${dto.products_tag}"><label
									class="item-wrapper"> <input name="chk-prd1"
										type="checkbox">
										<div class="item">
											<a
												data-url="/product/daily/view.do?tag=${dto.products_tag }&eventIdx="
												onclick="event.preventDefault();hrefMove(this)"
												data-issale="Y" style="display: flex">
												<div class="thumb">
													<img src="/file/download//product/${dto.system_name }"
														alt="">
												</div>
												<div class="contents">
													<p class="prd-title">${dto.products_name }</p>
													<b class="price">${dto.price }<span>
															원(${dto.products_size})</span>
													</b>
												</div>
											</a>
										</div>

										<button type="button" data-idx="${dto.idx }"
											data-tag="${dto.products_tag}" class="btn-delete">
											<i class="ico ico-prd-delete"></i> <span class="hide">카트에서
												삭제</span>
										</button>
								</label></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</main>
		<%@ include file="/WEB-INF/views/layouts/footer.jsp"%>
		<div class="modal fade" id="alertModal" tabindex="-1"
			aria-labelledby="alertModalLabel"
			style="display: none; padding-right: 17px;" aria-modal="true"
			role="dialog">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="alertModalLabel"></h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">선택된 상품이 없습니다.</div>
					<button type="button" class="modal-footer" data-dismiss="modal">확인</button>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/ui/modal.jsp"%>
	<script>
	
	let currentCate = `${param.category}`;
	if( ${param.category == null || param.category == ""} ) currentCate = "전체";  
	$(".inquiry-cate-select .dropdown-toggle").text(currentCate);
	$(".inquiry-cate-select .dropdown-item").on("click", function(){
		let val = $(this).data("value");
		if( val != "" ) {
			location.href = `/mypage/inquiry/list.do?category=\${ val }`;		
		}else {
			location.href = "/mypage/inquiry/list.do";
			
		}
	})
</script>

</body>
</html>
