(function () {
  var input = document.getElementById('wiki-search-input');
  var list = document.getElementById('wiki-term-list');
  if (!input || !list) return;

  var items = Array.prototype.slice.call(list.querySelectorAll('.wiki-term-item'));
  var headings = Array.prototype.slice.call(list.querySelectorAll('.wiki-letter-heading'));
  var noResults = document.getElementById('wiki-no-results');

  function updateHeadingVisibility() {
    headings.forEach(function (heading) {
      var ul = heading.nextElementSibling;
      if (!ul) return;
      var anyVisible = Array.prototype.slice.call(ul.children).some(function (li) {
        return li.style.display !== 'none';
      });
      heading.style.display = anyVisible ? '' : 'none';
      ul.style.display = anyVisible ? '' : 'none';
    });
  }

  input.addEventListener('input', function () {
    var query = input.value.trim().toLowerCase();
    var visibleCount = 0;

    items.forEach(function (item) {
      var haystack = item.getAttribute('data-search') || '';
      var match = query === '' || haystack.indexOf(query) !== -1;
      item.style.display = match ? '' : 'none';
      if (match) visibleCount++;
    });

    updateHeadingVisibility();
    if (noResults) {
      noResults.style.display = visibleCount === 0 ? '' : 'none';
    }
  });
})();
