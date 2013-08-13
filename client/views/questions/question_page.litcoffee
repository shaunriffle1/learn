Course Page Controller
=========

    class @QuestionPageController extends RouteController
      template: 'questionPage'

      data: ->
        ln = @params.lecture_num
        cn = @params.course_num
        qn = @params.question_num
        qn = parseInt(qn)
        cn = parseInt(cn)
        ln = parseInt(ln)
        console.log "question number #{qn} course number #{cn} and  lecture number: #{ln}"
        question_num: qn
        course_num: cn
        lecture_num: ln

      run: ->
        console.log 'running question Page controller'
        super
