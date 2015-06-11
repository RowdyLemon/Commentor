<cfimport taglib="../customTags/" prefix="layout" />
<layout:page>
		<header id="Header">
			Commentor Login
		</header>
		<main>
			<article id="loginArea">
				<form action="../cfml/login_register.cfm" method="POST">
					<div id="username">
						<label id="label_username">Username <input type="text" name="input_username" id="input_username" required></label>
					</div>
					</br>
					<div id="password">
						<label id="label_password">Password <input type="password" name="input_password" id="input_password" required></label>
					</div>
					</br>
					<h3 id="login_error_msg"></h3>
					<div id="login_button">
						<input type="submit" id="submit_login" name="submit_login" value="Login">
					</div>
					</br>
					<div id="register_button">
						<input type="submit" id="submit_register" name="submit_register" value="Register This Account">
					</div>
				</form>
			</article>
		</main>
</layout:page>