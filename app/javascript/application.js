// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery
//= require jquery_ujs

// import "@hotwired/turbo-rails"
import "controllers"

// window.signIn = function(){
// 	console.log("Sign In Called")
// 	var bttn = document.getElementById("loginBttn");
// 	bttn.disabled = true;
// 	var bttn = document.getElementById("signupBttn");
// 	bttn.disabled = false;
// 	var user_card = document.getElementById("user_card");
// 	var newItem = document.createElement('div');
// 	newItem.innerHTML = '<%= render "shared/signin"%>';
// 	newItem.id = 'user_card';
// 	newItem.class = "card-body";
// 	user_card.parentNode.replaceChild(newItem,user_card);
// }

// window.signUp = function(){
// 	var bttn = document.getElementById("signupBttn");
// 	bttn.disabled = true;
// 	var bttn = document.getElementById("loginBttn");
// 	bttn.disabled = false;
// 	var user_card = document.getElementById("user_card");
// 	var newItem = document.createElement('div');
// 	newItem.innerHTML = '<%= render "shared/signup"%>';
// 	newItem.id = 'user_card';
// 	newItem.class = "card-body";
// 	user_card.parentNode.replaceChild(newItem,user_card);
// }