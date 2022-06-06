// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
// = require jquery-ui
//= require simple_form_autocomplete
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"

// $(document).ready(function() {
//   $('.js-example-basic-single').select2();
// });

const notice = document.querySelector(".notice");

window.addEventListener('load', (event) => {
  // console.log('hmm');
  if (notice.innerText === "Please select a player") {
    notice.style.backgroundColor = "rgba(0, 0, 0, 0.69)";
    notice.style.border = "1px solid rgb(255, 208, 0)";
  }
});
