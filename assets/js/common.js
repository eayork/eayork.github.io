document.addEventListener('DOMContentLoaded', function () {
  document.querySelectorAll('a.abstract, a.bibtex').forEach(function (link) {
    var selector = '.' + link.classList[0] + '.hidden';
    link.addEventListener('click', function (event) {
      event.preventDefault();
      var container = link.parentElement && link.parentElement.parentElement;
      if (!container) return;
      var target = container.querySelector(selector);
      if (target) target.classList.toggle('open');
    });
  });
});
