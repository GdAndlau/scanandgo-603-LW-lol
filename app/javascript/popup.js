export const handlePopups = () => {
  const togglePopupTrigger = document.getElementById("open-popup-trigger");
  const closePopupTrigger = document.getElementById("close-popup-trigger");
  const popup = document.getElementById("myPopup");
  if (!popup) return

  console.log(closePopupTrigger)

  togglePopupTrigger.addEventListener("click", () => {
    popup.classList.toggle("show");
    console.log("showed")
  })

  closePopupTrigger.addEventListener("click", (event) => {
    event.stopPropagation()
    popup.classList.remove("show");
    console.log("clicked")
  })
}



