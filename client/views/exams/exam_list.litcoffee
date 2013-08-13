Lecture List Controller
=========

    class @ExamListController extends RouteController
      template: 'examList'

      data: ->
        exams:  ->
          Exams.find()

      run: ->
        console.log 'running Exams controller'
        super
