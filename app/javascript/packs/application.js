// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

window.addEventListener(`DOMContentLoaded`, () => {
    
        // NAVIGATION CODE START
        let nav = document.querySelector(`.mobile-nav`)
        let closenav = document.querySelector(`.closebtn`)
    
        nav.addEventListener(`click`, () => {
            document.querySelector("#navs").style.width = "100%";
        })
    
        closenav.addEventListener(`click`, () => {
            document.querySelector("#navs").style.width = "0%";
        })
        // NAVIGATION CODE END
    

})


Rails.start()
Turbolinks.start()
ActiveStorage.start()
