import { Controller } from "@hotwired/stimulus"
import uploadFilesPreview from "./lib/uploadFilesPreview"
// Connects to data-controller="message-photo"
export default class extends Controller {
  connect() {
    console.log("Controller feed")
    let image = document.querySelector("#upload_pic")
    let imagePlace = document.querySelector(".nels")
    console.log(image)
    uploadFilesPreview(image, imagePlace, "img_mss")
  }
}
