Course List Controller
=========

    class @CourseListController extends RouteController
      template: 'courseList'

      data: ->
        courses: ->
          Courses.find()

      run: ->
        console.log 'running courses controller'
        super
