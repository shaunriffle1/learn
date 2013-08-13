Course Page Controller
=========

    class @LecturePageController extends RouteController
      template: 'lecturePage'

      data: ->
        ln = @params.lecture_num
        cn = @params.course_num
        cn = parseInt(cn)
        ln = parseInt(ln)
        console.log "course number #{cn} and  lecture number: #{ln}"
        questions: ->
          Questions.find({lecture_num: ln, course_num: cn})
        course_num: cn
        lecture_num: ln

      run: ->
        console.log 'running Lecture Page controller'
        super
