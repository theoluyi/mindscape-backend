User.destroy_all
Session.destroy_all
Perception.destroy_all

# :username, :password
user1 = User.create(username: 'Theo', password: '123')
user2 = User.create(username: 'Randy', password: '456')
user3 = User.create(username: 'Nicky', password: '789')

# :start_time, :end_time, :duration, :landscape, :user
session1 = Session.create( 
    start_time: '2020/4/28 10:00:00',
    end_time: '2020/4/28 10:12:00',
    duration: 720,
    landscape: nil,
    user: user1,
    summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
)
session2 = Session.create( 
    start_time: '2020/4/23 08:00:00',
    end_time: '2020/4/23 08:12:00',
    duration: 720,
    landscape: nil,
    user: user1,
    summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
)
session3 = Session.create( 
    start_time: '2020/4/24 07:00:00',
    end_time: '2020/4/24 07:12:00',
    duration: 720,
    landscape: nil,
    user: user1,
    summary: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
)

# # :note, :session
## ahh rails reads backticks in a different way, it was looking for a file inside `them`
session1_perceptions = Perception.create([
    {note: "if it's possible to shut down the economy bc of covid, it's possible with consciousness raising to shut down industries destroying the environment. Both are existential threats and the time horizons are just different.", session: session1}, 
    {note: "a lot of my thoughts are observations trying to understand how the world works", session: session1},
    {note: "fire engine sirens elicit a panic response. I can feel my muscles bracing slightly. I can relax that.", session: session1}
    ])

puts 'The seeds have been sown my liege! 👶👶👶'