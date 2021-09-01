import autoComplete from "@tarekraafat/autocomplete.js";



const autoCompleteJS = () => {
  const form = document.getElementById("autocomplete-form");
  const autocompleteData = JSON.parse(form.dataset.autocompleteStores);
  console.log(autocompleteData);
  new autoComplete(
    {
    placeHolder: "Search for stores in your area...",
    data: {
        src: JSON.parse(form.dataset.autocompleteStores),
        keys: ["name"]
      },

    resultsList: {
        element: (list, data) => {
            if (!data.results.length) {
                // Create "No Results" message element
                const message = document.createElement("div");
                // Add class to the created element
                message.setAttribute("class", "no_result");
                // Add message text content
                message.innerHTML = `<span>Found No Results for "${data.query}"</span>`;
                // Append message element to the results list
                list.prepend(message);
            }
        },
        noResults: true,
    },

    resultItem: {
        highlight: true
      },

    events: {
        input: {
            selection: (event) => {
            const selection = event.detail.selection.value;
            const inputField = document.getElementById('autoComplete')
            inputField.value = selection.name;
                }
                }
            }
    }
  )
 };

export { autoCompleteJS };
