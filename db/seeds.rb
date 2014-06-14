# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
  { name: 'Student 1' },
                      { name: 'EE 1' },
                      { name: 'Student 2' },
                      { name: 'EE 2' }
])

help_requests = HelpRequest.create([
  { subject: 'Foobar subject',
  description: 'Foobar description',
  searched: 'Foobar searched',
  problem: 'Foobar problem',
  state: 'Foobar state',
  assigned_to: 'Foobar assigned_to',
  user_id: 1 }
  ])
