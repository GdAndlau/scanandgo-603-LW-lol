import autoComplete from "@tarekraafat/autocomplete.js";



const autoCompleteJS = () => {
  const form = document.getElementById("autocomplete-form");

  if(!form) return ;


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
    // element: (list, data) => {
    //   const info = document.createElement("p");
    //   if (data.results.length > 0) {
    //     info.innerHTML = `Displaying <strong>${data.results.length}</strong> out of <strong>${data.matches.length}</strong> results`;
    //   } else {
    //     info.innerHTML = `Found <strong>${data.matches.length}</strong> matching results for <strong>"${data.query}"</strong>`;
    //   }
    //   list.prepend(info);
    // },
    noResults: true,
    maxResults: 5,
    tabSelect: true
  },

    resultItem: {
    element: (item, data) => {
      // Modify Results Item Style
      item.id = "dropdown";
      // Modify Results Item Content
      item.innerHTML = `
      <span class="dropdown-item">
        ${data.match}
      </span>`;
    },
  },

    events: {
        input: {
            selection: (event) => {
            console.log(event);
            const selection = event.detail.selection.value;
            const inputField = document.getElementById('autoComplete')
            // inputField.value = selection.name;
            const path = selection.path;
            // let obj = JSON.parse(form.dataset.autocompleteStores).find(obj => obj.name == selection.name);
            // console.log(obj)
            Turbolinks.visit(path);
                }
                }
            }


    }
  )



 };

export { autoCompleteJS };
