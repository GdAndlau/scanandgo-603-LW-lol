export const handlePopups = () => {
  const togglePopupTrigger = document.getElementById("open-popup-trigger");
  const closePopupTrigger = document.getElementById("close-popup-trigger");
  const popup = document.getElementById("myPopup");
  if (!popup) return

  togglePopupTrigger.addEventListener("click", () => {
    popup.classList.toggle("show");
  })

  closePopupTrigger.addEventListener("click", (event) => {
    event.stopPropagation()
    popup.classList.remove("show");
  })
}



