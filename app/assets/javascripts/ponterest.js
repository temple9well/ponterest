function masonryAllTheThings() {
  $('.ponterest-grid').imagesloaded(function(){
    $('.ponterest-grid').masonry({
      itemSelector: '.pon-item',
      columnWidth: '.pon-item'
    });
  });
};

$(document).ready(masonryAllTheThings);
$(document).on('page:load', masonryAllTheThings);
