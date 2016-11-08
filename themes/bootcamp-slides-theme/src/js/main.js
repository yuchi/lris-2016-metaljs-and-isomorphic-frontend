$(() => {

  $(document.body).on('keyup', event => {
    const which = event.which;

    let href = null;

    switch (which) {
      case 32: // SPACE
      case 39: // RIGHT
        href = $('#navigation .active').next().find('a').attr('href');
        break;
      case 37: // LEFT
        href = $('#navigation .active').prev().find('a').attr('href');
        break;
    }

    if (href) {
      Liferay.SPA.app.navigate(href);
    }
  })

});
