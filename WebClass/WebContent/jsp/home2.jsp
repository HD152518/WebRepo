<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Bootstrap 실습</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/footer.css">
    <script>
    	function menu_over(e) {
    		e.setAttribute("class", "nav-item active");
    	}
    	function menu_out(e) {
    		e.setAttribute("class", "nav-item");
    	}
    </script>

    <style>
    	div.container {
    		padding-top:30px;
    	}
    </style>
  </head>
  <body>
  	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  		<a class="navbar-brand" href="#">Navbar</a>
 		 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
   		 <span class="navbar-toggler-icon"></span>
 		 </button>

		  <div class="collapse navbar-collapse" id="navbarSupportedContent">
   		 	<%@ include file="menu.jsp" %>
    		<form class="form-inline my-2 my-lg-0" id="loginForm">
     		 <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID" id="id" required>
     		 <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD" id="pwd" required>
      		<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
   		 </form>
  </div>
</nav>
<div class="container">
    <h1>Hello, Bootstrap!</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sem mi, vestibulum non iaculis venenatis, lobortis feugiat lorem. Nulla facilisi. Nunc eu ligula dapibus, porta tortor a, finibus risus. Nullam accumsan sollicitudin lorem quis dictum. Sed tempus porttitor lorem, sit amet feugiat dui lacinia a. Ut non eros eget turpis tincidunt commodo a in purus. Duis rhoncus eget massa quis consequat. Sed gravida nunc a magna faucibus bibendum. Sed sollicitudin mollis dui, quis dignissim neque tempor eu. Donec eget tristique massa. Nullam sed sollicitudin nisl. Quisque in sapien sem. Proin sed dui in metus efficitur sagittis eu sit amet sapien. Nullam id porttitor neque.

Duis non diam augue. Nullam purus eros, dapibus non molestie ornare, rhoncus dignissim nunc. Cras viverra est sed lacus bibendum, vitae aliquet ante rhoncus. Duis non nisi non odio viverra semper et et arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam fermentum at ante in porttitor. Aliquam quis tincidunt nibh. Nam eu pharetra ante. Praesent eu metus maximus ante luctus gravida. Ut vel vestibulum nunc. Phasellus commodo enim eu odio pulvinar cursus.

Donec vitae sem eget ex sollicitudin lacinia. Nam venenatis diam in lorem faucibus, in ultrices ex aliquet. Quisque vel risus luctus, finibus libero quis, gravida massa. Cras tincidunt dignissim augue ac cursus. Nulla ac cursus elit. Nam iaculis eros non scelerisque sodales. Vivamus sagittis elit et ligula bibendum gravida. Mauris lacinia diam neque, sed commodo massa dignissim vitae. Donec ut eleifend risus. Aliquam posuere vehicula diam. Cras ac enim quis ante bibendum facilisis id ut dolor. Curabitur elementum tempor lacus, a ultricies est iaculis quis.
</div>

<%@ include file="modal.jsp" %>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <script>
    	$(document).ready(function() {
    		$('#loginForm').submit(function(event) {
    			// submit이 자동으로 되는 기능을 막기
    			event.preventDefault();

    			// id, pwd를 가져오기
    			//document.getElementById("id").value
    			var id = $('#id').val();
    			var pwd = $('#pwd').val();
    			console.log(id, pwd);

    			$.post("/WebClass/login",
    					{ "id" : id, "pwd" : pwd },
    					function(data) {
    						// alert(data.form.id + '님 로그인되었습니다.');
    						var myModal=$('#myModal');
    						myModal.modal();
    						myModal.find('.modal-body').text(data.id + "님 로그인되었습니다.");

    					}
    			);
    		});
    	});
    </script>

	<%@ include file="footer.jsp" %>
  </body>
</html>
