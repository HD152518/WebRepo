<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>

<!DOCTYPE html>
<html lang="ko">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>My Blog - Welcome</title>
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
      <link rel="stylesheet" href="../css/myblog.css">
      <link rel="stylesheet" href="css/myblog.css">
      <script type="text/javascript" src="../js/myblog.js"></script>
      <script type="text/javascript" src="js/myblog.js"></script>
   </head>
   <body>
      <nav id="navbar" class="navbar navbar-expand-lg navbar-dark bg-dark">
         <a class="navbar-brand" href="index.jsp">My Blog</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
               <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
                  <a class="nav-link" href="aboutme.html">About Me<span class="sr-only">(current)</span></a>
               </li>
               <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
                  <a class="nav-link" href="mygoals.html">My Goals</a>
               </li>
               <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
                  <a class="nav-link" href="myinterests.html">My Interests</a>
               </li>
            </ul>
             <%
    	UserVO user = (UserVO)session.getAttribute("user");
    
    	if(user==null){
    %>
    	<%-- 세션이 없는 경우 --%>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/bloglogin">Sign in</a>
    <%} else { %>
    <%-- 세션이 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%=user.getName() %>&nbsp;님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action="/WebClass/bloglogout" method="post">
	      		<button type="submit" class="dropdown-item">Sign out</button>
	      	</form>
	       	<div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
	   <%} %>
         </div>
      </nav>

      <div class="container">
        <div class="welcome">
          <h1 class="welcomeTitle">서강민의 블로그에<br>오신 것을 환영합니다<br></h1>
          <p class="welcomeText">HD152518 서강민의 블로그입니다.<br><s>웹 처음이라 정말 힘들었습니다</s><br>좋은 하루 되세요!<p>
        </div>

         <div class="signup">

           <h3 class="alignCenter">블로그 회원에 등록하세요</h3>
           <hr class="signupLine">
           <br>
           <form class="alignCenter" id="signupForm">
             <h5>학년</h5>
             <div class="form-check form-check-inline">
                 <label class="form-check-label">
                <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1학년" checked> 1학년
                 </label>
                </div>
                <div class="form-check form-check-inline">
                 <label class="form-check-label">
                   <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2학년"> 2학년
                 </label>
                </div>
                <div class="form-check form-check-inline">
                 <label class="form-check-label">
                   <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="3학년"> 3학년
                 </label>
                </div>
             	  <br><h5>반</h5>
                <select class="form-control form-control-sm">
                  <option value="1반">1반</option>
                  <option value="2반">2반</option>
                  <option value="3반">3반</option>
                  <option value="4반">4반</option>
                  <option value="5반">5반</option>
                  <option value="6반">6반</option>
                </select>
    			      <br><h5>번호와 이름</h5>

    			      <div style="width:100px;">
                  <input id="signupNumber" class="form-control" type="number" placeholder="번호" style="width:120px; margin-bottom:5px;" required>
                </div>
                <div style="width:100px;">
    			        <input id="signupName" class="form-control" type="text" placeholder="이름"  style="width:120px;" required>
                </div>

                <br>
             	  <h5>아이디와 패스워드</h5>
             	  <input id="signupID" class="form-control" style="width:300px; margin-bottom:5px;" type="text" placeholder="ID" required>
             	  <input id="signupPW" class="form-control" style="width:300px;" type="password" placeholder="PWD" required>

             	  <br>

             	  <input class="btn btn-dark" type="submit" value="가입하기!">
              </form>
         </div>
      </div>

      <footer>
        <p>© 2017 SEO KANG MIN ALL RIGHTS RESERVED</p>
      </footer>


      <div class="modal" id="myModal">
         <div class="modal-dialog" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title">로그인 결과</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                  </button>
               </div>
               <div class="modal-body">
                  <p></p>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
               </div>
            </div>
         </div>
      </div>
      <!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
      <script src="../js/login.js"></script>
   </body>
</html>