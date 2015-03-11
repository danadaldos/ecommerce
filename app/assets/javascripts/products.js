$(window).ready(function(){
  var prods = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: '/products/autocomplete?query=%QUERY'
  });

  prods.initialize();
  console.log(prods);
  $("#search-form .typeahead").typeahead(null, {
    displayKey: 'name',
    source: prods.ttAdapter()
  });

  //Sets up masonry
  var $container = $('#masonry-container');
  $container.imagesLoaded(function () {
            $container.masonry({
                itemSelector:'.box',
                isFitWidth: true
              });
          });
})
