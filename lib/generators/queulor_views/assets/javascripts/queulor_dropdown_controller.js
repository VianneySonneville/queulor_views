import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "content" ]
  static classes = [ "show" ]

  toggle () {
    if (this.hasContentTarget) {
      this.contentTarget.classList.toggle(this.hiddenClass)
    }
  }
}