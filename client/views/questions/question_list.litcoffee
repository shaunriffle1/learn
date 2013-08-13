Lecture List Controller
=========

    class @QuestionListController extends RouteController
      template: 'questionList'

      data: ->
        ln = @params.lecture_num
        ln = parseInt(ln)
        cn = @params.course_num
        cn = parseInt(cn)
        course_num: cn
        lecture_num: ln
        questions:  ->
          Questions.find({course_num: cn, lecture_num: ln})

      run: ->
        console.log 'running questions list controller'
        super
