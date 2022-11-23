import { Controller } from "@hotwired/stimulus"
import uploadFilesPreview from "./lib/uploadFilesPreview"

// Connects to data-controller="user-image"
export default class extends Controller {
  connect() {
    let image = document.querySelector("#user_photo")
    let imagePlace = document.querySelector(".register_pic")
    uploadFilesPreview(image, imagePlace, "img_prd")
  }
}
