// TODO: Autocomplete the input with AJAX calls.
document.addEventListener('keyup', () => {
  const text = document.querySelector('#signing_player');
  const results = document.querySelector('#results');
  // console.log(text.value);
  const url = `https://wagon-dictionary.herokuapp.com/autocomplete/${text.value}`;

  fetch(url)
    .then(response => response.json())
    .then((data) => {
      // console.log(data);
      results.innerHTML = "";
      // document.querySelector('body').style.backgroundImage = "none";
      if (data.words) {
        data.words.forEach((word) => {
          const autocompleteWord = `<li>${word}</li>`;
          results.insertAdjacentHTML("beforeend", autocompleteWord);
          // const bg = `https://source.unsplash.com/1600x900/?${text.value}`;
          // document.querySelector('body').style.backgroundImage = `url(${bg})`;
          results.style.maxHeight = '100%';
          results.style.boxShadow = '0 0 8px 8px rgba(0, 0, 0, 0.037)';
        });
      } if (data.count === 0) {
        results.innerHTML = '<li style="text-align: center;">No suggestions</li>';
      }
    });
});
