Populate raw database with some dummy content
====
    if (Lectures.find().count() === 0)
      console.logi "fixtures intiated."
      k  = 50
      for  (i = 0; i < k; i++)
        Lectures.insert
          title: 'Lecture #{i}'
          professor: 'Dr. #{i}'
          url: 'http://testing.com/testing#{i}'
