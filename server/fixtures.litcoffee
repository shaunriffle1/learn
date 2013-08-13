Populate raw database with some dummy content
====
   
      console.log "entering fixtures"
      if Courses.find().count() is 0
        console.log 'fixtures initiated'
        k = 25
        j = 18
        l = 5
        for i in [0..k]
          console.log "course count #{i}"

          Courses.insert
            course_num: i
            title: "Course #{i}"
            professor: "Prof. #{i}"

          for m in [0..j]
            console.log "lecture count #{i}-#{m}"
            Lectures.insert
              title: "Lecture #{i} - #{m}"
              professor: "Prof #{i}"
              course_num: i
              lecture_num: m
            Quizes.insert
              title: "Quiz #{i} - #{m}"
              lecture_num: m
              course_num: i

            for n in [0..l]
              console.log "question count #{i}-#{m}-#{n}"
              Questions.insert
                title: "Question #{i} - #{m} - #{n}"
                lecture_num: m
                course_num: i
                question_num: n

          Exams.insert
            title: "Exam #{i}"
            course_num: i
