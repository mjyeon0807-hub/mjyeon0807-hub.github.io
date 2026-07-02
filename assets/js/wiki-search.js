(function () {
  var input = document.getElementById('wiki-search-input');
  var list = document.getElementById('wiki-term-list');
  if (!input || !list) return;

  var cards = Array.prototype.slice.call(list.querySelectorAll('.wiki-term-card'));
  var sections = Array.prototype.slice.call(list.querySelectorAll('.wiki-letter-section'));
  var noResults = document.getElementById('wiki-no-results');

  function updateSectionVisibility() {
    sections.forEach(function (section) {
      var anyVisible = Array.prototype.slice.call(section.querySelectorAll('.wiki-term-card')).some(function (card) {
        return card.style.display !== 'none';
      });
      section.style.display = anyVisible ? '' : 'none';
    });
  }

  input.addEventListener('input', function () {
    var query = input.value.trim().toLowerCase();
    var visibleCount = 0;

    cards.forEach(function (card) {
      var haystack = card.getAttribute('data-search') || '';
      var match = query === '' || haystack.indexOf(query) !== -1;
      card.style.display = match ? '' : 'none';
      if (match) visibleCount++;
    });

    updateSectionVisibility();
    if (noResults) {
      noResults.style.display = visibleCount === 0 ? '' : 'none';
    }
  });
})();
