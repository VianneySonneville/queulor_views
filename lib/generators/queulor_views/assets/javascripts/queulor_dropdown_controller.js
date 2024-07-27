import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "content" ]
  static classes = [ "show" ]

  toggle () {
    console.log("toggle");
    console.log(this.contentTarget)
    if (this.hasContentTarget) {
      this.contentTarget.toggle(this.hiddenClass)
    }
  }
}