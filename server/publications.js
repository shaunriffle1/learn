Meteor.publish('aLectures', function() {
  return Lectures.find();
});

