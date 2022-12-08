Airline.destroy_all
Review.destroy_all
User.destroy_all

airlines = Airline.create([
    { 
        name: "United Airlines",
        image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
    }, 
    { 
        name: "Southwest",
        image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
    },
    { 
        name: "Delta",
        image_url: "https://open-flights.s3.amazonaws.com/Delta.png" 
    }, 
    { 
        name: "Alaska Airlines",
        image_url: "https://open-flights.s3.amazonaws.com/Alaska-Airlines.png" 
    }, 
    { 
        name: "JetBlue",
        image_url: "https://open-flights.s3.amazonaws.com/JetBlue.png" 
    }, 
    { 
        name: "American Airlines",
        image_url: "https://open-flights.s3.amazonaws.com/American-Airlines.png" 
    }
    
])

user1 = User.create([{email: "levin@gmail.com", password: "123"}])
user2 = User.create([{email: "beryl@gmail.com", password: "234"}])
user3 = User.create([{email: "calvin@gmail.com", password: "456"}])
user4 = User.create([{email: "sammy@gmail.com", password: "134"}])
user5 = User.create([{email: "mike@gmail.com", password: "546"}])

reviews = Review.create([
    {
        title: 'Great airline',
        description: 'I had a lovely time.',
        score: 5,
        user_id: user5.id,
        airline: airlines.first
    },
    {
        title: "Bad airline",
        description: "i had a bad time",
        score: 1,
        user_id: user1.id,
        airline: airlines.first
    },
    {
        title: 'Good',
        description: 'Averege',
        score: 6,
        user_id: user4.id,
        airline: airlines.first
    },
    {
        title: 'Great ',
        description: 'good food.',
        score: 8,
        user_id: user2.id,
        airline: airlines.first
    },
    {
        title: 'Horrible',
        description: 'Rude air crew.',
        score: 3,
        user_id: user3.id,
        airline: airlines.first
    },
    {
        title: 'Good',
        description: 'enjoyed',
        score: 5,
        user_id: user2.id,
        airline: airlines.first
    },
    {
        title: 'Awesome',
        description: 'nice travel time.',
        score: 7,
        user_id: user1.id,
        airline: airlines.first
    },
    {
        title: 'averege',
        description: 'lovely time.',
        score: 4,
        user_id: user5.id,
        airline: airlines.first
    },
    {
        title: 'Terrible',
        description: 'Bad food.',
        score: 2,
        user_id: user3.id,
        airline: airlines.first
    },
    {
        title: 'can do better',
        description: 'lost luggage',
        score: 6,
        user_id: user4.id,
        airline: airlines.first
    },
])