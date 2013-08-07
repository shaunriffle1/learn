Lecture List Controller
=========

    class @LectureListController extends RouteController
      template: 'lectureList'

      data: ->
        blahblah: 'blah!blah'
        lectures:  ->
          Lectures.find()

      run: ->
        console.log 'running lectures controller'
        super
