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
           path: '/course/:course_num'

         @route 'lecturePage',
           path: '/course/:course_num/lecture/:lecture_num'

     Router.configure
       layout: 'layout'
       notFoundTemplate: 'notFound'
       loadingTemplate: 'loading'
       renderTemplates:
         'footer':
             to: 'footer'
         'sidebar':
             to: 'sidebar'

