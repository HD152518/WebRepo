$(document).ready(function() {
         	$('#loginForm').submit(function(event) {
         		// submit이 자동으로 되는 기능을 막기
         		event.preventDefault();

         		// id, pwd를 가져오기
         		// document.getElementById("id").value
         		var id = $('#id').val();
         		var pwd = $('#pwd').val();
         		console.log(id, pwd);

         		$.post("http://httpbin.org/post",
         				{ "id" : id, "pwd" : pwd },
         				function(data) {
         					// alert(data.form.id + '님 로그인되었습니다.');
         					var myModal=$('#myModal');
         					myModal.modal();
         					myModal.find('.modal-body').text(data.form.id + "님 로그인되었습니다.");

         				}
         		);
         	});

          $('#signupForm').submit(function(event) {
            // submit이 자동으로 되는 기능을 막기
            event.preventDefault();

            // id, pwd를 가져오기
            // document.getElementById("id").value
            var name = $('#signupName').val();

            $.post("http://httpbin.org/post",
                { "name" : name},
                function(data) {
                  
                  var myModal=$('#myModal');
                  myModal.modal();
                  myModal.find('.modal-body').text(data.form.name + "님 회원가입되었습니다.");

                }
            );
          });
    });
