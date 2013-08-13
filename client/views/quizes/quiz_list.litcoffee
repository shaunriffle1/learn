Quiz List Controller
=========

    class @QuizListController extends RouteController
      template: 'quizList'

      data: ->
        quizes:  ->
          Quizes.find()

      run: ->
        console.log 'running quizes controller'
        super
