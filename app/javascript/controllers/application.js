import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
import "bootstrap"
application.debug = false
window.Stimulus   = application

export { application }
