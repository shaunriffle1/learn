if (Lectures.find().count() === 0) {
  console.log("fixtures intiated.");
  var k  = 50;
  for (var i = 0; i < k; i++) {

  Lectures.insert({
    title: 'Lecture '+i,
    professor: 'Dr. '+i,
    url: 'http://testing.com/testing'+i
  });
  }
}
