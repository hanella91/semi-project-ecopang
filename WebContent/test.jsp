<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8">
<title>Swiper 쉬운 예제 모음 : Swiper 이미지 동적 로딩 (lazy)</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<!-- 예제 시작 -->

<!-- 이 예제에서는 필요한 js, css 를 링크걸어 사용 -->
<style type="text/css">

.swiper-container {
	width:650px;
	height:150px;
	border:5px solid silver;
	border-radius:5px;
	box-shadow:0 0 20px #ccc inset;
}
.swiper-slide {
	text-align:center;
	display:flex; /* 내용을 중앙정렬 하기위해 flex 사용 */
	align-items:center; /* 위아래 기준 중앙정렬 */
	justify-content:center; /* 좌우 기준 중앙정렬 */
}
.swiper-slide img {
	border:1px solid #000;
	box-shadow:7px 7px 2px #ccc;
}

</style>

<!-- 클래스명은 변경하면 안 됨 -->
<div class="swiper-container">
	<div class="swiper-wrapper">
		<div class="swiper-slide"><img data-src="http://oldmidi.cdn3.cafe24.com/p/0130.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0294.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0251.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0571.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0698.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0536.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0156.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0240.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://oldmidi.cdn3.cafe24.com/p/0255.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0761.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://oldmidi.cdn3.cafe24.com/p/0648.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0349.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://oldmidi.cdn3.cafe24.com/p/0396.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0731.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0111.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://oldmidi.cdn3.cafe24.com/p/0385.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0650.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0044.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0712.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0330.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0293.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://oldmidi.cdn3.cafe24.com/p/0067.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0495.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0034.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0103.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0184.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0769.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://ktsmemo.cdn3.cafe24.com/p/0234.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="https://ktsmemo.cafe24.com/p/0532.jpg" class="swiper-lazy"></div>
		<div class="swiper-slide"><img data-src="http://oldmidi.cdn3.cafe24.com/p/0260.jpg" class="swiper-lazy"></div>
	</div>

	<!-- 네비게이션 버튼 -->
	<div class="swiper-button-next"></div><!-- 다음 버튼 (오른쪽에 있는 버튼) -->
	<div class="swiper-button-prev"></div><!-- 이전 버튼 -->

	<!-- 페이징 -->
	<div class="swiper-pagination"></div>
</div>
<div style="text-align:center; margin-top:5px;">랜덤사진 갤러리</div>

<script>

new Swiper('.swiper-container', {

	// ★동적로딩 설정
	lazy : {
		loadPrevNext : true // 이전, 다음 이미지는 미리 로딩
	},

	// 페이징 설정
	pagination : {
		el : '.swiper-pagination',
		clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
	},

	// 네비게이션 설정
	navigation : {
		nextEl : '.swiper-button-next', // 다음 버튼 클래스명
		prevEl : '.swiper-button-prev', // 이번 버튼 클래스명
	},
});

</script>

</body>
</html>