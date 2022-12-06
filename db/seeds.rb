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

reviews = Review.create([
    {
        title: 'Great airline',
        description: 'I had a lovely time.',
        score: 5,
        airline: airlines.first
    },
    {
        title: "Bad airline",
        description: "i had a bad time",
        score: 1,
        airline: airlines.first
    },
    {
        title: 'Good',
        description: 'Averege',
        score: 6,
        airline: airlines.first
    },
    {
        title: 'Great ',
        description: 'good food.',
        score: 8,
        airline: airlines.first
    },
    {
        title: 'Horrible',
        description: 'Rude air crew.',
        score: 3,
        airline: airlines.first
    },
    {
        title: 'Good',
        description: 'enjoyed',
        score: 5,
        airline: airlines.first
    },
    {
        title: 'Awesome',
        description: 'nice travel time.',
        score: 7,
        airline: airlines.first
    },
    {
        title: 'averege',
        description: 'lovely time.',
        score: 4,
        airline: airlines.first
    },
    {
        title: 'Terrible',
        description: 'Bad food.',
        score: 2,
        airline: airlines.first
    },
    {
        title: 'can do better',
        description: 'lost luggage',
        score: 6,
        airline: airlines.first
    },

])