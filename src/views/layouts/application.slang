doctype html
html lang="en"
  head
    meta charset="utf-8"
    meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"
    meta name="description" content="Amber aims to deliver developer happiness, productivity and bare metal performance"
    meta name="keywords" content="amber, mvc, Framework, generator, cli, statically typed, crystal language"
    title = @title
    link href="/dist/main.bundle.css" rel="stylesheet"
    link rel="apple-touch-icon" href="/favicon.png"
    link rel="icon" href="/favicon.png"
    link rel="icon" type="image/x-icon" href="/favicon.ico"

  body
    == render_template "layouts/_nav.slang"
    == content
    - unless context.request.path.starts_with? "/guides"
      == render_template "layouts/_footer.slang"

    script src="/assets/js/core.min.js"
    script src="/dist/main.bundle.js"
    script async="" defer="" src="https://buttons.github.io/buttons.js"
    - if context.request.path.starts_with? "/guides"
      script src="/dist/sidebar.bundle.js"
    == render_template "layouts/google_analytics.slang"
