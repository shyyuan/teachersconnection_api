# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Teacher.create([
{name: "Sheila Yuan", email: "shyyuan@yahoo.com"},
{name: "Li Wang", email: "liwang168@gmail.com"},
{name: "J.J. Chou", email: "jj.chow.lm@gmail.com"},
{name: "Stephanie Liu (Kuan)", email: "liukuan612@yahoo.com"},
{name: "Shufen Lin (Wu)", email: "chienmowu@hotmail.com"},
{name: "Nancy Loh", email: "nancyloh@yahoo.com"}
])


Event.create([
  { :convener => "Sheila Yuan",
    :title => "End of Year Exhibit",
    :description => "Teachers please prepare the poster and students works.",
    :location => "Cafeteria",
    :start_datetime => DateTime.parse("21/05/2017 11:00"),
    :end_datetime => DateTime.parse("21/05/2017 12:30")
  },
  { :convener => "Li Wang",
    :title => "End of Year Ceremony",
    :description => "End-of-year ceremony and performance.",
    :location => "Gym",
    :start_datetime => DateTime.parse("04/06/2017 11:00"),
    :end_datetime => DateTime.parse("04/06/2017 12:30")
  },
  { :convener => "J.J. Chou",
    :title => "Teachers Appreciation Lunch",
    :description => "Let get together at New Furture.",
    :location => "New Furtune Restaurant",
    :start_datetime => DateTime.parse("04/06/2017 12:30"),
    :end_datetime => DateTime.parse("04/06/2017 14:30")
  },
  { :convener => "J.J. Chou",
    :title => "2017 New Student Admissions",
    :description => "Test and interview for new students",
    :location => "Romm 110",
    :start_datetime => DateTime.parse("11/06/2017 10:00"),
    :end_datetime => DateTime.parse("11/06/2017 12:30")
  }
  ])


Dialogue.create(teacher_id: 2, event_id: 1, content: "I will bring the hard boards for postser")
Dialogue.create(teacher_id:2, event_id: 3, content: "I have 18 people registered for lunch")
Dialogue.create(teacher_id:2, event_id:4, content: "I need to leave at 11 that day. Can someone come and help out?")
Dialogue.create(teacher_id:5, event_id:4, content: "I can help that day.")
