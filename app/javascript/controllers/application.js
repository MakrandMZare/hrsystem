import { Application } from "@hotwired/stimulus"
import React from "react"
import ReactDOM from "react-dom"
import "controllers"

//= require jquery3
//= require popper
//= require bootstrap

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
