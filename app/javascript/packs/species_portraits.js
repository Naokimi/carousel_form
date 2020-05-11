const getPortraits = (archetype) => {
  const divSelector = document.querySelector('.portrait-selection');
  const wiki = 'https://stellaris.paradoxwikis.com/images/';
  archetype.addEventListener('change', (event) => {
    console.log(event.currentTarget.value);
    const selectedArchetype = event.currentTarget.value
    divSelector.innerHTML = "";

    fetch('./new.json').then(response => response.json()).then((data) => {
      data[selectedArchetype].forEach((url, index) => {
        const portrait = wiki + url + '.png';
        divSelector.insertAdjacentHTML('beforeend', `
          <input type="radio" name="species[portrait]" id=${index} value=${portrait} />
          <label for=${index} ><img src=${portrait} /></label>
        `);
      });
    })
  });
};

export { getPortraits };
