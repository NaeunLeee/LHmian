<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="sec-padding">
		<div class="container">
			<div class="row">

				<div class="error_holder">
					<h1 class="uppercase title text-orange-2">접근 불가</h1>
					<br>
					<h2 class="uppercase">접근 불가능한 URL</h2>
					<p>이 곳으로는 접근할 수 없어요.</p>
					<br> <br> <br>
					<div class="error-search-box">
						<form method="get" action="index.html">
							<input class="email_input" name="samplees" id="samplees"
								value="E-mail Address"
								onfocus="if(this.value == 'E-mail Address') {this.value = '';}"
								onblur="if (this.value == '') {this.value = 'E-mail Address';}"
								type="text"> <input name="" value="Search"
								class="input_submit" type="submit">
						</form>
					</div>
				</div>

			</div>
		</div>
	</section>
</body>
</html>