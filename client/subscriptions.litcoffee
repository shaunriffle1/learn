Subscriptions
====

     @Subscriptions = {
       questions: Meteor.subscribe 'allQuestions'
       lectures: Meteor.subscribe 'allLectures'
       courses: Meteor.subscribe 'allCourses'
       quizes: Meteor.subscribe 'allQuizes'
       exams: Meteor.subscribe 'allExams'
     }
