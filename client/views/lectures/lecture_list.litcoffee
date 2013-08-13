Lecture List Controller
=========

    class @LectureListController extends RouteController
      template: 'lectureList'

      data: ->
        lectures:  ->
          Lectures.find()

      run: ->
        console.log 'running lectures controller'
        super
