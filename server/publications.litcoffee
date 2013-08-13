Publications
====

     Meteor.publish 'allLectures', ->
       Lectures.find()

     Meteor.publish 'allQuestions', ->
       Questions.find()

     Meteor.publish 'allExams', ->
       Exams.find()

     Meteor.publish 'allQuizes', ->
       Quizes.find()

     Meteor.publish 'allCourses', ->
       Courses.find()

