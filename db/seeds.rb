User.destroy_all
Session.destroy_all
Perception.destroy_all

# :username, :password
user1 = User.create(username: 'Theo', password: '123')
user2 = User.create(username: 'Randy', password: '123')
user3 = User.create(username: 'Nicky', password: '123')

# :start_time, :end_time, :duration, :landscape, :user
session1 = Session.create( 
    start_time: '2020/4/28 10:00:00',
    end_time: '2020/4/28 10:12:00',
    duration: 12,
    landscape: nil,
    user: user1,
    summary: "All the new thinking is about loss.
    In this it resembles all the old thinking.
    The idea, for example, that each particular erases
    the luminous clarity of a general idea. That the clown-
    faced woodpecker probing the dead sculpted trunk
    of that black birch is, by his presence,
    some tragic falling off from a first world
    of undivided light. Or the other notion that,
    because there is in this world no one thing
    to which the bramble of blackberry corresponds,
    a word is elegy to what it signifies.
    We talked about it late last night and in the voice
    of my friend, there was a thin wire of grief, a tone
    almost querulous. After a while I understood that,
    talking this way, everything dissolves: justice,
    pine, hair, woman, you and I. There was a woman
    I made love to and I remembered how, holding
    her small shoulders in my hands sometimes,
    I felt a violent wonder at her presence
    like a thirst for salt, for my childhood river
    with its island willows, silly music from the pleasure boat,
    muddy places where we caught the little orange-silver fish
    called pumpkinseed. It hardly had to do with her.
    Longing, we say, because desire is full
    of endless distances. I must have been the same to her.
    But I remember so much, the way her hands dismantled bread,
    the thing her father said that hurt her, what
    she dreamed. There are moments when the body is as numinous
    as words, days that are the good flesh continuing.
    Such tenderness, those afternoons and evenings,
    saying blackberry, blackberry, blackberry.
    "
)
session2 = Session.create( 
    start_time: '2020/4/23 08:00:00',
    end_time: '2020/4/23 08:12:00',
    duration: 12,
    landscape: nil,
    user: user1,
    summary: "“Hope” is the thing with feathers -
    That perches in the soul -
    And sings the tune without the words -
    And never stops - at all -
    
    And sweetest - in the Gale - is heard -
    And sore must be the storm -
    That could abash the little Bird
    That kept so many warm -
    
    I’ve heard it in the chillest land -
    And on the strangest Sea -
    Yet - never - in Extremity,
    It asked a crumb - of me."
)
session3 = Session.create( 
    start_time: '2020/4/24 07:00:00',
    end_time: '2020/4/24 07:12:00',
    duration: 12,
    landscape: nil,
    user: user1,
    summary: "You must see with eyes unclouded by hate. See the good in that which is evil, and the evil in that which is good. Pledge yourself to neither side, but vow instead to preserve the balance that exists between the two."
)

session4 = Session.create( 
    start_time: '2020/4/28 10:00:00',
    end_time: '2020/4/28 10:12:00',
    duration: 12,
    landscape: nil,
    user: user2,
    summary: "Late light, uneven mole-gnawed meadow, 
    gullies, freshets, falls, whose start and speckle 
    Hopkins would have loved – and you – you too, 
    who loved the sheen and shade, the forest dapple
    where grass meets cypress just beyond the house –
    you’d praise the mushroom-sprout, the chilly glisten
    as the hedgerow folds into the solstice
    and suddenly the last crisp leaves unfasten … 
    
    This time of year, this place, light dims at the pace 
    of a long late afternoon walk, light seems to slow
    and sorrow as the meadow turns its face
    into your unlived season, the winter hollow
    where only a steep sky, in quarter inches,
    adjusts descending sun, ascending branches. "
)
session5 = Session.create( 
    start_time: '2020/4/28 10:00:00',
    end_time: '2020/4/28 10:12:00',
    duration: 12,
    landscape: nil,
    user: user2,
    summary: "“When you build giant systems – in this case we’re talking about social media but you could also make the case about all kinds of massive systems that undergird our democracy – when you build those on certain assumptions that are under-determined by evidence, you could wind up really screwing yourself over.
    “When you just assume that people will tend toward progress and equality and they’ll always make good decisions and everything that rises to the top of your relevance algorithm will be something that will help you become a more engaged and informed citizen, that assumption is going to be wrong a lot of the time. And you know so…
    “I agree that we shouldn’t be blinded by our assumptions either utopian or dystopian, that’s where I really want to end my readers thinking: in a place more of contingency and kind of pragmatist fragility, that things really could go in any direction, and we shouldn’t be unwilling to see progress but we shouldn’t be dogmatic about seeing it everywhere either.” 1:49:30 Making Sense Podcast Episode #172 Among the Deplorables with Andrew Morantz (Andrew’s new book is called Antisocial: Online Extremists, Techno-Utopians, and the Hijacking of the American Conversation) "
)

# # :note, :session
## ahh rails reads backticks in a different way, it was looking for a file inside `them`
session1_perceptions = Perception.create([
    {note: "if it's possible to shut down the economy bc of covid, it's possible with consciousness raising to shut down industries destroying the environment. Both are existential threats and the time horizons are just different.", session: session1}, 
    {note: "a lot of my thoughts are observations trying to understand how the world works", session: session1},
    {note: "fire engine sirens elicit a panic response. I can feel my muscles bracing slightly. I can relax that.", session: session1}
    ])

session2_perceptions = Perception.create([
    {note: "But sir, you're the president", session: session2}, 
    {note: "The Fifth Risk by Michael Lewis", session: session2},
    {note: "If you aren't afraid of death, all your other fears are either imaginary or self-imposed", session: session2}
    ])

session3_perceptions = Perception.create([
    {note: "The fear of poverty is a treadmill", session: session3}, 
    {note: "Excuses are born out of fear. Eliminate your fear and there will be no excuses", session: session3},
    {note: "Do not wish for an easy life. Wish for the strength to endure a difficult one", session: session3}
    ])

    session4_perceptions = Perception.create([
    {note: "When we love, we always strive to become better than we are. When we strive to become better than we are, everything around us becomes better too", session: session4}, 
    {note: "Competition is for losers", session: session4},
    {note: "Treat your job and every day at work as if the fate of the world depended on it, but remember that nobody cares", session: session4}
    ])

    session5_perceptions = Perception.create([
    {note: "Four Rules For Life: Show up. Pay attention. Tell the truth. Don't be attached to the results", session: session5}, 
    {note: "Let your capital be simplicity and contentment", session: session5},
    ])

    # session4_perceptions = Perception.create([
    # {note: "", session: session4}, 
    # {note: "", session: session4},
    # {note: "", session: session4}
    # ])

puts 'The seeds have been sown my liege! 👶👶👶'