roles = ['teacher', 'ta', 'student']

10.times do
  course = Course.create(
    name: Faker::ChuckNorris.fact
  )

  10.times do
    user = User.create(
      first_name: Faker::Beer.brand ,
      last_name:  Faker::Beer.hop
    )

    Enrollment.create(
      role: roles.sample,
      course_id: course.id,
      user_id: user.id
    )
  end
end

puts "Data Seeded"
