<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover" />
<link rel="stylesheet" type="text/css" href="../../../resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../../../resources/fonts/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="../../../resources/css/style.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@500;600;700&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
<meta id="theme-check" name="theme-color" content="#FFFFFF">
<link rel="apple-touch-icon" sizes="180x180" href="app/icons/icon-192x192.png">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="../../../resources/js/bootstrap.min.js"></script>
<script src="../../../resources/js/custom.js"></script>

<meta charset="utf-8">
<title>키워드로 장소검색하기</title>

<style>

/* 모달 스타일 */
.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 500px;
  height: 1000px;
  overflow: auto;
  /* background-color: rgba(0, 0, 0, 0.7); */
}

.modal-content {
  background-color: #fefefe;
  margin: 15% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 50%;
  height: 50%;
}

.close {
  color: #aaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: black;
  text-decoration: none;
  cursor: pointer;
}

</style>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3deea4e437afacaccf5d342a0a21b891&libraries=services"></script>

<!-- 내 위치 가져오기 -->
<script>
function locationLoadSuccess(pos){
// 현재 위치 받아오기
var currentPos = new kakao.maps.LatLng(pos.coords.latitude,pos.coords.longitude);

// 지도 이동(기존 위치와 가깝다면 부드럽게 이동)
map.panTo(currentPos);

// 마커 생성
var marker = new kakao.maps.Marker({
    position: currentPos
});

// 기존에 마커가 있다면 제거
marker.setMap(null);
marker.setMap(map);
};

function locationLoadError(pos){
alert('위치 정보를 가져오는데 실패했습니다.');
};

//위치 가져오기 버튼 클릭시
function getCurrentPosBtn(){
navigator.geolocation.getCurrentPosition(locationLoadSuccess,locationLoadError);
};
</script>
<!-- <script src="../resources/js/map.js"></script> -->   

<jsp:include page="../nav.jsp"></jsp:include>

</head>
<body>

<!-- <h3>쉽고 빠른 식당 예약 서비스</h3> -->

<form method="post" action="/shop/list">
<select id="city" name="city">
	<option value="서울">서울</option>
	<option value="대전">대전</option>
</select>
<select id="gu" name="gu">
	<option value="동구">동구</option>
	<option value="서구">서구</option>
</select>
<select id="dong" name="dong">
	<option value="가양1동">가양1동</option>
	<option value="가양2동">가양2동</option>
</select>
<select id="category" name="category">
	<option value="한식">한식</option>
	<option value="일식">일식</option>
</select>
<!-- <button onclick="applyFn()">적용</button> -->
<button type="submit">적용</button>
</form>

<div id="map" style="width:500px;height:400px;"></div>

<!-- 카카오 지도 생성 -->
<script>
// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(36.350614570020895, 127.42563406620827), // 지도의 중심좌표
        //center: new kakao.maps.LatLng(pos.coords.latitude,pos.coords.longitude), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
};

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 
</script>


<c:forEach var="item" items="${list}">
<p>위도 : ${item.latitude}, 경도 : ${item.longitude}</p>

<script>
//var lat = [];
//var lng = [];

alert(`${item.latitude}, ${item.longitude}`);


/*
var positions = [];
positions.title.append(${item.shopName});
positions.latlng.append(new kakao.maps.LatLng(${item.latitude}, ${item.longitude}));
*/

var positions = [
	{
        title: `${item.shopName}`, 
        latlng: new kakao.maps.LatLng(${item.latitude}, ${item.longitude})
    }
]

//마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

for (var i = 0; i < positions.length; i ++) {
	
	// 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
    
 	// 마커에 클릭이벤트를 등록합니다
    kakao.maps.event.addListener(marker, 'click', function() {
    	document.getElementById('myModal').style.display = 'block';
    	fetch(`item/${item.shopCode}`, {
            method: "GET",
        });
    	document.getElementById('sn').innerHTML = `${item.shopName}`;
    	document.getElementById('sa').innerHTML = `${item.shopAddress}`;
    	document.getElementById('sp').innerHTML = `${item.shopPhone}`;
    	document.getElementById('res').innerHTML = `<a href="${pageContext.request.contextPath}/res/${item.shopCode}">예약하기</a>`;

    	alert("매장번호" + ${item.shopCode});
    });
    
}

</script>

</c:forEach>


<!-- <script language="JavaScript"> window.name = "Test_Dialog"; </script>
<a href="http://www.egocube.pe.kr/" target="Test_Dialog">Click!</a> -->


<div id="myModal" class="modal">
	<div class="modal-content">
		<span class="close">&times;</span>
		<div id="sn">
		</div>
		<div id="sa">
		</div>
		<div id="sp">
		</div>
		
		<form>
		<div class="accordion border-0 accordion-s" id="accordion-group-6">

                    <div class="accordion-item">
                        <button class="accordion-button collapsed px-0" type="button" data-bs-toggle="collapse" data-bs-target="#accordion6-1">
                            <!-- <span class="font-600 font-13">예약 날짜 선택</span> -->
                            <input class="font-600 font-13 datepicker" value="예약 날짜 선택">
                            <i class="bi bi-chevron-down font-20"></i>
                        </button>
                        <div id="accordion6-1" class="accordion-collapse collapse" data-bs-parent="#accordion-group-6">
                            <p class="pb-3 opacity-60">

                                <!-- <input class="datepicker"> -->
                                <script>
                                $(function(){
                                    $('.datepicker').datepicker();
                                })
                                </script>

                            </p>
                        </div>
                    </div>

                    <div class="accordion-item">
                        <button class="accordion-button collapsed px-0" type="button" data-bs-toggle="collapse" data-bs-target="#accordion6-2">
                            <input id="resHour" class="font-600 font-13" value="예약 시간 선택">
                            <i class="bi bi-chevron-down font-20"></i>
                        </button>
                        <div id="accordion6-2" class="accordion-collapse collapse" data-bs-parent="#accordion-group-6">
                        	<script>
                        	function resHour( item ) {
                        		document.querySelector('#resHour').value = $(item).text();
                        	}
                        	</script>
                        
                            <div class="mb-2 pb-2"></div>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">11:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">12:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">13:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">14:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">17:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">18:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">19:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">20:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="resHour(this)">21:00</a>
                            <div class="mb-2"></div> 
                        </div>
                    </div>

                    <div class="accordion-item">
                        <button class="accordion-button collapsed px-0" type="button" data-bs-toggle="collapse" data-bs-target="#accordion6-3">
                            <input id="tit_nop" class="font-600 font-13" value="예약 인원 선택">
                            <i class="bi bi-chevron-down font-20"></i>
                        </button>
                        <div id="accordion6-3" class="accordion-collapse collapse" data-bs-parent="#accordion-group-6">
                            <p class="pb-3 opacity-60">
                            1~10명까지 선택 가능합니다.<br>
                            방문하시는 인원을 선택하세요.
                            </p>

                            <div class="row">
                                <div class="col-6"  style="margin: 0 auto;">
                                    <div class="stepper rounded-s">
                                    	<script>
                                    	function count(type) {
                                    		let nop = document.querySelector('#nop').value;
                                    		
                                    		if(type === 'plus') {
                                    			nop = parseInt(nop) + 1;
                                    			if (nop > 10) {
                                    				return false;
                                    			}
                                    		}
                                    		else if(type === 'minus')  {
                                    			nop = parseInt(nop) - 1;
                                    			if (nop < 1) {
                                    				return false;
                                    			}
                                    		}
                                    		document.querySelector('#nop').value = nop;
                                    		document.querySelector('#tit_nop').value = nop;
										}
                                    	
                                    	function plus() {
                                    		//document.querySelector('#nop').value += 1;
                                    		//var nop = document.querySelector('#nop').value                                    		
                                    		//console.log(typeof(Number(nop)));
                                    		//console.log(Number(nop));
                                    		//Number(nop) = Number(nop) + 1;
										}
                                    	</script>
                                        <a href="#"><i class="bi bi-dash font-18 color-red-dark" onclick="count('minus')"></i></a>
                                        <input type="number" id="nop" class="color-theme" min="1" max="10" value="1">
                                        <a href="#"><i class="bi bi-plus font-18 color-green-dark" onclick="count('plus')"></i></a>
                                    </div>
                                </div>
                            </div>
                            
                        </div>

                    </div>
                </div>
		
		<div>
			<button type="submit" id="res"></button>
		</div>
		</form>
		
	</div>
</div>

<div>
${info.shopCode}
</div>





<script>
//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(null);
    }
}
</script>



<script>
function applyFn(){
	
	var city  = document.getElementById("city");
	var cityval = (city.options[city.selectedIndex].value);
	
	var gu  = document.getElementById("gu");
	var guval = (gu.options[gu.selectedIndex].value);
	
	var dong  = document.getElementById("dong");
	var dongval = (dong.options[dong.selectedIndex].value);
	
	var dish  = document.getElementById("category");
	var dishval = (dish.options[dish.selectedIndex].value);
	
	alert("value = " + cityval + guval + dongval + dishval);
	
	/* 		
	var selectedindex = city.selectedIndex;
	alert("value = "+value+" , selectedindex = "+selectedindex); 
	*/
	
	

	/* 주소-좌표 변환 */
	
	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	//console.log(cityval)
	geocoder.addressSearch(cityval + " " + guval + " " + dongval, function(result, status) {
	
    // 정상적으로 검색이 완료됐으면 
    if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">적용위치</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
	        
	        
	        
	        /* ~ 카테고리 검색 ~ */
	    	
	    	// 장소 검색 객체를 생성합니다
	    	var ps = new kakao.maps.services.Places(); 
	    	
	    	// input에서 키워드 받음 
	    	//var keyword = document.querySelector('#search').value;	
	    		
	    	// 키워드로 장소를 검색합니다
	    	ps.keywordSearch(dishval, placesSearchCB, {
	    		radius : 2000,
	    		location: coords
	    	});
	
	
	    	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	    	function placesSearchCB (data, status, pagination) {
	    	    if (status === kakao.maps.services.Status.OK) {
	
	    	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	    	        // LatLngBounds 객체에 좌표를 추가합니다
	    	        var bounds = new kakao.maps.LatLngBounds();
	
	    	        for (var i=0; i<data.length; i++) {
	    	            displayMarker(data[i]);    
	    	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	    	        }       
	    			
	    	        //if ( bounds =! null )
	    	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    	        map.setBounds(bounds);
	    	    } 
	    	}
	    	
	    	// 지도에 마커를 표시하는 함수입니다
	    	function displayMarker(place) {
	    		
	    	    // 마커를 생성하고 지도에 표시합니다
	    	    var marker = new kakao.maps.Marker({
	    	        map: map,
	    	        position: new kakao.maps.LatLng(place.y, place.x) 
	    	    });
	
	    	    // 마커에 클릭이벤트를 등록합니다
	    	    kakao.maps.event.addListener(marker, 'click', function() {
	    	    	document.getElementById('myModal').style.display = 'block';
	    	    });
	    	    	
    	    	//modal.classList.remove('hidden');
    	    	
    	        
    	    	// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
    	        /* infowindow.setContent(
    	       		'<div style="padding:5px;font-size:12px;">' + place.place_name + '</div><br><div style="padding:5px;font-size:12px;">' + place.road_address_name + '</div><br><div style="padding:5px;font-size:12px;">' + place.phone + '</div>'
    	        );
    	        infowindow.open(map, marker); */
	    	        
	    	        
			};
	    }
	    	
	});
};
</script>

<script>
//모달 닫기 버튼 이벤트 처리
document.querySelector('.close').addEventListener('click', function() {
    document.getElementById('myModal').style.display = 'none';
});

// 모달 바깥 영역 클릭 시 모달 닫기
window.addEventListener('click', function(event) {
    var modal = document.getElementById('myModal');
    if (event.target === modal) {
        modal.style.display = 'none';
    }
});
</script>

<button type="button" id="getMyPositionBtn" onclick="getCurrentPosBtn()">내 위치 가져오기</button>

</body>
</html>