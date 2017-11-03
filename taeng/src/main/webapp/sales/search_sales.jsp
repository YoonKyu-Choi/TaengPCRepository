<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매상 관리</title>
<script src="//code.jquery.com/jquery.min.js"></script>
<script>
   $(document).ready(function() {
      $("#menu1").click(function() {
         $(".content1").show();
         $(".content2").hide();
         $(".content3").hide();
         $(".content4").hide();
         $(".content5").hide();
      });
      $("#menu2").click(function() {
         $(".content1").hide();
         $(".content2").show();
         $(".content3").hide();
         $(".content4").hide();
         $(".content5").hide();
      });
      $("#menu3").click(function() {
         $(".content1").hide();
         $(".content2").hide();
         $(".content3").show();
         $(".content4").hide();
         $(".content5").hide();
      });
      $("#menu4").click(function() {
         $(".content1").hide();
         $(".content2").hide();
         $(".content3").hide();
         $(".content4").show();
         $(".content5").hide();
      });
      $("#menu5").click(function() {
         $(".content1").hide();
         $(".content2").hide();
         $(".content3").hide();
         $(".content4").hide();
         $(".content5").show();
      });
      
   });
</script>
<style>
@font-face {
   font-family: "INTERPARKGOTHICLIGHT";
   src: url("/taeng/font/INTERPARKGOTHICLIGHT.TTF") format("truetype");
}

* {
   font-family: "INTERPARKGOTHICLIGHT";
}


body {
   background-image: url("/taeng/image/background3.jpg");
   margin: 0;
}

/* Style the header */
.header {
   background-color: #4D6C9C;
   padding: 1px;
   text-align: center;
   color: #F6F792;
}

/* Style the side navigation */
.sidenav {
   height: 100%;
   width: 250px;
   position: fixed;
   z-index: 1;
   top: 0;
   left: 0;
   background-color: #4D6C9C;
   overflow-x: hidden;
   cursor: pointer;
   font-size: 18px;
}

/* Side navigation links */
.sidenav a {
   color: #F6F792;
   padding: 20px;
   text-decoration: none;
   display: block;
}

/* Change color on hover */
.sidenav a:hover {
   background-color: #F6F792;
   color: black;
}

/* Style the content */
.content1, .content2, .content3, .content4, .content5 {
   font-size: 20px;
   line-height: 60px;
   margin-top: 20px;
   margin-left: 250px;
   padding-left: 20px;
}

.content2, .content3, .content4, .content5 {
   display: none;
}

.input {
   height: 30px;
}

.btn {
   width: 110px;
   height: 30px;
   border: none;
   background-color: #DBD4D0;
   color: black;
   font-size: 15px;
   cursor: pointer;
}

.backbtn {
   width: 110px;
   height: 30px;
   border: none;
   background-color: #DBD4D0;
   color: black;
   font-size: 15px;
   cursor: pointer;
}

.money{
   font-familly:"맑은 고딕";
   font-size:80px;
   text-align:center;
   margin-top:100px;   
}

.backbtn2 {
   width: 170px;
   height: 30px;
   background-color: #4D6C9C;
   color: #F6F792;
   font-size: 20px;
   cursor: pointer;
   border: thick;
}

</style>
</head>
<body>
   <c:if test="${requestScope.errMsg != null}">
      <span style="color: red">${requestScope.errMsg }</span>
   </c:if>

   <div class="header">
      <h1>매상 관리하기</h1>
   </div>
   
   <div class="sidenav">
   <br><br><br><br><br>
       <a id="menu1">♡ 날짜로 조회</a>
       <a id="menu2">♡ 전체 매출 목록 조회</a> 
       <a id="menu3">♡ 전체매출 조회</a> 
       <a id="menu4">♡ PC요금 조회</a> 
       <a id="menu5">♡ 상품요금 조회 </a> 
       <br><br><br>
       <button class="backbtn2" onclick="location.href='/taeng/admin/search'">◁ 관리자 페이지</button>
   </div>
   <div class="content1">
      <div>
         <br> <span>날짜로 조회하기</span>
      </div>
      <br>
      <form action="/taeng/sales/salesByDate" method="post">
         <input type="date" class="day" name="sDay"> ~ <input
            type="date" name="eDay" class="day">
         <button>조회</button>
      </form>
   </div>
   
   <div class="content2">
      <form action="/taeng/salesList" method="post">
         전체 매출 목록조회
         <button>조회</button>
      </form>
   </div>
   
   <div class="content3">
      <div class="money">
         <form action="/taeng/sales/allSales" method="post">
            <input type="hidden" name="select" value="all">
               ${requestScope.all }원
                <button class="btn">상품요금조회</button>
         </form>
      </div>
   </div>
   
   <div class="content4">
      <div class="money">
           <form action="/taeng/sales/allSales" method="post">
            <input type="hidden" name="select" value="pc">
               ${requestScope.pc }원
              <button class="btn">상품요금조회</button>
         </form>
      </div>
   </div>
   
   <div class="content5">
      <div class="money">
         <form action="/taeng/sales/allSales" method="post">
            <input type="hidden" name="select" value="item">
               ${requestScope.item }원
         
         <button class="btn">상품요금조회</button>
     	 </form>
      </div>
   </div>
</body>
</html>