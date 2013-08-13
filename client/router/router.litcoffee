main file
=====
routing
------

    Router.map ->
        @route 'home',
          path: '/'

        @route 'about',
          path: '/about'

        @route 'courseList',
          path: '/courses'

        @route 'coursePage',
          path: '/course/:_id'

        @route 'lecturePage',
          path: '/lecture/:_id'

    Router.configure
      layout: 'layout'
      notFoundTemplate: 'notFound'
      loadingTemplate: 'loading'
      renderTemplates:
        'footer':
            to: 'footer'
        'sidebar':
            to: 'sidebar'



