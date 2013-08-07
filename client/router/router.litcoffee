main file
=====
routing
------

    Router.map ->
      @route 'home', path: '/'
      @route 'about', path: '/a'
      @route 'lectureList', path: '/l'

    Router.configure layout: 'layout'


