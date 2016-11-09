$(() => {

  $(document.body).on('keyup', event => {
    const which = event.which;

    let href = null;

    switch (which) {
      case 32: // SPACE
      case 39: // RIGHT
      case 34: // clicker right
        href = $('#navigation .active').next().find('a').attr('href');
        break;
      case 37: // LEFT
      case 33: // clicker left
        href = $('#navigation .active').prev().find('a').attr('href');
        break;
    }

    if (href) {
      Liferay.SPA.app.navigate(href);
    }
  })

});
