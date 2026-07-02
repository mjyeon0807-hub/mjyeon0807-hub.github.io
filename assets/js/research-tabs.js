(function () {
  var hashToTabId = {
    '#theme': 'theme-tab',
    '#theme-pane': 'theme-tab',
    '#wiki': 'wiki-tab',
    '#wiki-pane': 'wiki-tab',
    '#paper': 'paper-tab',
    '#paper-pane': 'paper-tab'
  };

  function activateFromHash() {
    var tabId = hashToTabId[window.location.hash];
    if (!tabId) return;
    var trigger = document.getElementById(tabId);
    if (!trigger || typeof jQuery === 'undefined') return;
    jQuery(trigger).tab('show');
  }

  document.addEventListener('DOMContentLoaded', activateFromHash);
  window.addEventListener('hashchange', activateFromHash);

  document.addEventListener('DOMContentLoaded', function () {
    if (typeof jQuery === 'undefined') return;
    jQuery('.research-subtabs [data-toggle="tab"]').on('shown.bs.tab', function (e) {
      var target = e.target.getAttribute('href');
      if (target && history.replaceState) {
        history.replaceState(null, '', target.replace('-pane', ''));
      }
    });
  });
})();
