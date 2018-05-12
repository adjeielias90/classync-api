AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$11$W9nBWCqGF8JMOFJUnCAZKOXJn8nVQH/ZJARTdSikv96KCEN1Z7/lq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 7, current_sign_in_at: "2018-04-29 14:12:07", last_sign_in_at: "2018-04-12 14:41:19", current_sign_in_ip: "::1", last_sign_in_ip: "127.0.0.1"}
])
Classroom.create!([
  {name: "SF1", capacity: 56},
  {name: "FF1", capacity: 120},
  {name: "SF2", capacity: 30}
])
Course.create!([
  {code: "CSM 291", classroom_id: 3, state_id: 4, period_id: 3, flag: false, level_id: 5, slug: nil, today_id: nil},
  {code: "CSM 292", classroom_id: 3, state_id: 2, period_id: 4, flag: false, level_id: 1, slug: "csm-292", today_id: nil},
  {code: "CSM 392", classroom_id: 3, state_id: 4, period_id: 3, flag: false, level_id: 1, slug: "csm-392", today_id: 1},
  {code: "CSM 392", classroom_id: 3, state_id: 2, period_id: 4, flag: false, level_id: 8, slug: "csm-392-97499315-7bd3-4691-8887-0bccf2d15269", today_id: 2},
  {code: "CSM 293", classroom_id: 2, state_id: 4, period_id: 3, flag: false, level_id: 8, slug: "csm-293", today_id: 2}
])
Level.create!([
  {name: "CS4", size: 118, semester_id: 1, flag: true},
  {name: "CS4", size: 118, semester_id: 1, flag: true},
  {name: "CS4", size: 118, semester_id: 1, flag: true},
  {name: "CS4", size: 118, semester_id: 1, flag: true},
  {name: "CS3", size: 119, semester_id: 4, flag: nil},
  {name: "CS4", size: 118, semester_id: 1, flag: true},
  {name: "CS4", size: 118, semester_id: 1, flag: true},
  {name: "CS5", size: 113, semester_id: 1, flag: nil}
])
Period.create!([
  {time: "2018-02-05 04:07:00", flag: nil, classroom_id: 2, name: nil},
  {time: "2018-03-02 10:00:00", flag: nil, classroom_id: 2, name: nil},
  {time: "2018-01-01 08:00:00", flag: nil, classroom_id: 2, name: nil}
])
Semester.create!([
  {start: "2017-11-28 00:00:00", ending: "2017-12-23 00:00:00", flag: false},
  {start: "2018-01-12 00:00:00", ending: "2018-02-11 00:00:00", flag: nil},
  {start: "2018-01-12 00:00:00", ending: "2018-03-28 00:00:00", flag: false},
  {start: "2018-01-14 00:00:00", ending: "2018-06-12 00:00:00", flag: true}
])
Student.create!([
  {reference_number: 20361000, level_id: 4, index_number: 2561111, image_url: nil},
  {reference_number: 20361234, level_id: 1, index_number: 2561112, image_url: nil},
  {reference_number: 20361234, level_id: 1, index_number: 2561114, image_url: nil}
])
Today.create!([
  {day: "Monday"},
  {day: "Tuesday"},
  {day: "Wednesday"},
  {day: "Thursday"},
  {day: "Friday"}
])
Attendance.create!([
  {present: true, student_id: 2561111, period_id: 4, course_id: 1, today_id: nil},
  {present: false, student_id: 2561111, period_id: 4, course_id: 1, today_id: nil},
  {present: true, student_id: 2561111, period_id: 4, course_id: 1, today_id: nil},
  {present: false, student_id: 2561111, period_id: 4, course_id: 1, today_id: nil},
  {present: false, student_id: 2561111, period_id: 4, course_id: 1, today_id: nil},
  {present: false, student_id: 2561111, period_id: 4, course_id: 1, today_id: 3},
  {present: false, student_id: 2561111, period_id: 4, course_id: 1, today_id: 3},
  {present: false, student_id: 2561111, period_id: 4, course_id: 2, today_id: 3},
  {present: false, student_id: 2561111, period_id: 4, course_id: 2, today_id: 3},
  {present: false, student_id: 2561111, period_id: 4, course_id: 1, today_id: 2}
])
State.create!([
  {cancelled: true, postponed: nil, ongoing: nil, pending: nil, name: "Cancelled"},
  {cancelled: false, postponed: true, ongoing: false, pending: false, name: "Postponed"},
  {cancelled: false, postponed: false, ongoing: true, pending: false, name: "Ongoing"},
  {cancelled: false, postponed: false, ongoing: false, pending: true, name: "Pending"}
])
User.create!([
  {email: "test@example.com", encrypted_password: "$2a$11$FclZqt7oCdV68IhGIfEIleiw.Ts.9rnWKj/bIhZDyAOKh/6lZSm.2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, lecturer_role: false, student_rep_role: false, student_role: true, student_id: 2561111, password_digest: nil},
  {email: "test2@ecample.com", encrypted_password: "$2a$11$zuLLJpL08CVptY6CkCWRnOSwP4X0V1IA/YCaLDUeU2gI20BaDzz8m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, lecturer_role: false, student_rep_role: true, student_role: true, student_id: 2561111, password_digest: nil}
])
