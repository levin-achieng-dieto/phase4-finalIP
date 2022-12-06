airlines = Airline.create([
{
    name: "United Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
},
{
    name: 'Southwest',
    image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
},
{
    
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
    }
])