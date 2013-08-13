Course Page Controller
=========

    class @CoursePageController extends RouteController
      template: 'coursePage'

      data: ->
        cn = @params.course_num
        cn = parseInt(cn)
        console.log "course number: #{cn}"
        lectures: ->
          Lectures.find({course_num: cn})
        course_num: cn

      run: ->
        console.log 'running courses controller'
        super
