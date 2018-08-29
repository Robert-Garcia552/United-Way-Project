# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
DATA = {
  calendarEvents: [
    {
      name: "Event 1",
      details: [
                {
                  title: "Pixelate it! with Inspire305 and CodeArt",
                  description: "You voted for your favorite nonprofit, you helped inspire change. Now join Inspire305 winner, Codeart to Pixelate It!, a morning of hands-on creativity, coding, interactive activities and giving back.

                  Bring your family and help create a collaborative mixed media mural while at the same time learn how CodeART increases interest in coding among girls. You will help design and create binary baubles for backpacks (children 8+ only) and prepare materials for girls starting CodeART this upcoming school year.

                  CodeART is a Miami-based nonprofit whose mission is to increase the number of girls studying computer science by delighting and inspiring them with the creative possibilities of computer programming",
                  date:"August 25, 2018" ,
                  start_at: "2018-08-25 10:00:00 EDT",
                  end_at: "2018-08-25 13:00:00 EDT",
                  location: "Pinecrest Library",
                  street_address: "5835 SW 111th Street",
                  city: "Pinecrest",
                  state: "FL",
                  zip: "33156"
                },

              ]
    },
    {
      name: "Event 2",
      details: [
                {
                  title: "JCS Milk & Honey",
                  description: "Volunteer to fight food insufficiency and help deliver Rosh Hashanah food baskets and companionship to homebound seniors during Jewish Community Service's annual Milk & Honey food distribution event, in partnership with the Greater Miami Jewish Federation.",
                  date: "August 26, 2018" ,
                  start_at: "2018-08-26 09:00:00 EDT",
                  end_at: "2018-08-26 11:15:00 EDT",
                  location: "Aventura Turnberry Jewish Center",
                  street_address: "20400 Northeast 30 Avenue",
                  city: "Miami",
                  state: "FL",
                  zip: "33180"
                },

              ]
    },
    {
      name: "Event 3",
      details: [
                {
                  title: "AARP FL Disaster Kit Assembly",
                  description: "For vulnerable older adults, a natural disaster compounds the challenges they already experience. As storms surge, so do the hardships for those struggling to make ends meet. That’s why the Miami Dolphins, AARP and AARP Foundation are mobilizing volunteers to assemble and distribute thousands of bags filled with emergency preparedness supplies to families in Miami. Each bag will contain things like water bottles with a built-in filter, flashlights, first aid kits and pillboxes, along with useful recovery tips and resources.",
                  date: "September 8, 2018",
                  start_at: "2018-09-08 10:00:00 EDT",
                  end_at: "2018-09-08 13:00:00 EDT",
                  location: "Fernandez Family Center, St. Thomas University",
                  street_address: "16401 Northwest 37th Avenue",
                  city: "Miami Gardens",
                  state: "FL",
                  zip: "33054"
                },

              ]
    },
    {
      name: "Event 4",
      details: [
                {
                  title: "2018 International Coastal Cleanup",
                  description: "Thanks to volunteers around the world, the International Coastal Cleanup has become a beacon of hope, leading and inspiring action in support of our ocean. Over the years, this movement has created a family that spans oceans and country borders. Join United Way of Miami-Dade and other members of our community as we help improve our local environment.",
                  date: "September 15, 2018",
                  start_at: "2018-09-15 08:30:00 EDT",
                  end_at: "2018-09-15 12:00:00 EDT",
                  location: "Bill Baggs Florida State Park",
                  street_address: "1200 Crandon Boulevard",
                  city: "Key Biscayne",
                  state: "FL",
                  zip: "33149"
                },

              ]
    },
    {
      name: "Event 5",
      details: [
                {
                  title: "Green Up and Clean Up at Simpson Park",
                  description: "Join United Way of Miami-Dade and City of Miami's Parks and Recreation Department in conserving and preserving unique ecosystems in one of three Natural Areas. Through community involvement, restoration efforts to keep these ecosystems healthy is possible. Volunteers will have the opportunity to learn about Miami's local habitats and ecosystems, as well as learn to identify various native and non-native invasive plant species. Opportunities will also include exotic invasive removal to prevent displacing our native plant species, seed propagation in the nursery, planting of trees, and debris clean-up. Returning volunteers can take part in research and monitoring of plant species.

                  Children under 17 years of age must be accompanied by an adult",
                  date: "October 13, 2018",
                  start_at: "2018-10-13 09:00:00 EDT",
                  end_at: "2018-10-13 12:00:00 EDT",
                  location: "Simpson Park",
                  street_address: "55 Southwest 17 Road",
                  city: "Miami",
                  state: "FL",
                  zip: "33129"
                },

              ]
    },
    {
      name: "Event 6",
      details: [
                {
                  title: "Green Up and Clean Up at Simpson Park",
                  description: "Join United Way of Miami-Dade and City of Miami's Parks and Recreation Department in conserving and preserving unique ecosystems in one of three Natural Areas. Through community involvement, restoration efforts to keep these ecosystems healthy is possible. Volunteers will have the opportunity to learn about Miami's local habitats and ecosystems, as well as learn to identify various native and non-native invasive plant species. Opportunities will also include exotic invasive removal to prevent displacing our native plant species, seed propagation in the nursery, planting of trees, and debris clean-up. Returning volunteers can take part in research and monitoring of plant species.

                  Children under 17 years of age must be accompanied by an adult",
                  date: "October 20, 2018",
                  start_at: "2018-10-20 09:00:00 EDT",
                  end_at: "2018-10-20 12:00:00 EDT",
                  location: "Simpson Park",
                  street_address: "55 Southwest 17 Road",
                  city: "Miami",
                  state: "FL",
                  zip: "33129"
                },

              ]
    },
    {
      name: "Event 7",
      details: [
                {
                  title: "2018 Read for the Record",
                  description: "Book lovers, join us to read Maybe Something Beautiful by F. Isabel Campoy and Theresa Howell and help set a new world record for the largest and most rewarding shared reading experience, ever! Each volunteer will be paired with children at Centro Mater East, a United Way-funded agency, and discover what good can a splash of color do in a community of gray.
                  8:45am - Registration, networking, light breakfast
                  9:15am Reading",
                  date: "October 25, 2018",
                  start_at: "2018-10-25 08:45:00 EDT",
                  end_at: "2018-10-25 08:45:00 EDT",
                  location: "Centro Mater East",
                  street_address: "418 Southwest4 Avenue",
                  city: "Miami",
                  state: "FL",
                  zip: "33130"
                },

              ]
    },
    {
      name: "Event 8",
      details: [
                {
                  title: "United4Care (U4C) with Care Resource",
                  description: "Care Resource relies on the generous support of volunteers to enhance the health center’s efforts of providing residents of Broward & Miami-Dade Counties comprehensive health and support services. United4Care will provide fun, food, music, resources and health screenings to all attendees. Volunteers are needed during the U4C event to assist with set-up, breakdown, and other support tasks as needed",
                  date: "October 27, 2018",
                  start_at: "2018-10-27 11:00:00 EDT",
                  end_at: "2018-10-27 15:00:00 EDT",
                  location: "Culmer Community Action Center",
                  street_address: "1600 Northwest 3 Avenue",
                  city: "Miami",
                  state: "FL",
                  zip: "33136"
                },

              ]
    },
    {
      name: "Event 9",
      details: [
                {
                  title: "Making a difference this Thanksgiving",
                  description: "Thanksgiving is a time for sharing … so join us for a festive evening as we kick off this holiday season. We will be assembling food boxes with donated details to distribute to the 600 low-income families throughout early care and education programs so they can prepare their Thanksgiving dinner.",
                  date: "November 14, 2018",
                  start_at: "2018-11-14 18:00:00 EDT",
                  end_at: "2018-11-14 20:00:00 EDT",
                  location: "United Way Center for Excellence in Early Education",
                  street_address: "3250 Southwest 3rd Avenue",
                  city: "Miami",
                  state: "FL",
                  zip: "33129"
                },

              ]
    },
    {
      name: "Event 10",
      details: [
                {
                  title: "Green Up and Clean Up at Virginia Key Beach North Point Park",
                  description: "Join United Way of Miami-Dade and City of Miami's Parks and Recreation Department in conserving and preserving unique ecosystems in one of three Natural Areas. Through community involvement, restoration efforts to keep these ecosystems healthy is possible. Volunteers will have the opportunity to learn about Miami's local habitats and ecosystems, as well as learn to identify various native and non-native invasive plant species. Opportunities will also include exotic invasive removal to prevent displacing our native plant species, seed propagation in the nursery, planting of trees, and debris clean-up. Returning volunteers can take part in research and monitoring of plant species.

                  Children under 17 years of age must be accompanied by an adult",
                  date: "December 8, 2018",
                  start_at: "2018-12-08 09:00:00 EDT",
                  end_at: "2018-12-08 12:00:00 EDT",
                  location: "Virginia Key Beach North Point Park",
                  street_address: "1820 Arthur Lamb Junior Road",
                  city: "Miami",
                  state: "FL",
                  zip: "33149"
                },

              ]
    },
    {
      name: "Event 11",
      details: [
                {
                  title: "Green Up and Clean Up at Virginia Key Beach North Point Park",
                  description: "Join United Way of Miami-Dade and City of Miami's Parks and Recreation Department in conserving and preserving unique ecosystems in one of three Natural Areas. Through community involvement, restoration efforts to keep these ecosystems healthy is possible. Volunteers will have the opportunity to learn about Miami's local habitats and ecosystems, as well as learn to identify various native and non-native invasive plant species. Opportunities will also include exotic invasive removal to prevent displacing our native plant species, seed propagation in the nursery, planting of trees, and debris clean-up. Returning volunteers can take part in research and monitoring of plant species.

                  Children under 17 years of age must be accompanied by an adult",
                  date: "December 15, 2018",
                  start_at: "2018-12-15 09:00:00 EDT",
                  end_at: "2018-12-15 12:00:00 EDT",
                  location: "Virginia Key Beach North Point Park",
                  street_address: "1820 Arthur Lamb Junior Road",
                  city: "Miami",
                  state: "FL",
                  zip: "33149"
                },

              ]
    },
    {
      name: "Event 12",
      details: [
                {
                  title: "Green Up and Clean Up at Virginia Key Beach North Point Park",
                  description: "Join United Way of Miami-Dade and City of Miami's Parks and Recreation Department in conserving and preserving unique ecosystems in one of three Natural Areas. Through community involvement, restoration efforts to keep these ecosystems healthy is possible. Volunteers will have the opportunity to learn about Miami's local habitats and ecosystems, as well as learn to identify various native and non-native invasive plant species. Opportunities will also include exotic invasive removal to prevent displacing our native plant species, seed propagation in the nursery, planting of trees, and debris clean-up. Returning volunteers can take part in research and monitoring of plant species.

                  Children under 17 years of age must be accompanied by an adult",
                  date: "March 2, 2019",
                  start_at: "2019-03-02 09:00:00 EDT",
                  end_at: "2019-03-02 12:00:00 EDT",
                  location: "Virginia Key Beach North Point Park",
                  street_address: "1820 Arthur Lamb Junior Road",
                  city: "Miami",
                  state: "FL",
                  zip: "33149"
                },

              ]
    },
    {
      name: "Event 13",
      details: [
                {
                  title: "Green Up and Clean Up at Virginia Key Beach North Point Park",
                  description: "Join United Way of Miami-Dade and City of Miami's Parks and Recreation Department in conserving and preserving unique ecosystems in one of three Natural Areas. Through community involvement, restoration efforts to keep these ecosystems healthy is possible. Volunteers will have the opportunity to learn about Miami's local habitats and ecosystems, as well as learn to identify various native and non-native invasive plant species. Opportunities will also include exotic invasive removal to prevent displacing our native plant species, seed propagation in the nursery, planting of trees, and debris clean-up. Returning volunteers can take part in research and monitoring of plant species.

                  Children under 17 years of age must be accompanied by an adult",
                  date: "March 16, 2019",
                  start_at: "2019-03-16 09:00:00 EDT",
                  end_at: "2019-03-16 12:00:00 EDT",
                  location: "Virginia Key Beach North Point Park",
                  street_address: "1820 Arthur Lamb Junior Road",
                  city: "Miami",
                  state: "FL",
                  zip: "33149"
                },

              ]
    },
    {
      name: "Event 14",
      details: [
                {
                  title: "Green Up and Clean Up at Alice Wainwright Park",
                  description: "Join United Way of Miami-Dade and City of Miami's Parks and Recreation Department in conserving and preserving unique ecosystems in one of three Natural Areas. Through community involvement, restoration efforts to keep these ecosystems healthy is possible. Volunteers will have the opportunity to learn about Miami's local habitats and ecosystems, as well as learn to identify various native and non-native invasive plant species. Opportunities will also include exotic invasive removal to prevent displacing our native plant species, seed propagation in the nursery, planting of trees, and debris clean-up. Returning volunteers can take part in research and monitoring of plant species.

                  Children under 17 years of age must be accompanied by an adult.",
                  date: "January 12, 2019",
                  start_at: "2019-01-12 09:00:00 EDT",
                  end_at: "2019-01-12 12:00:00 EDT",
                  location: "Alice Wainwright Park",
                  street_address: "2845 Brickell Avenue",
                  city: "Miami",
                  state: "FL",
                  zip: "33129"
                },

              ]
    },
    {
      name: "Event 15",
      details: [
                {
                  title: "Green Up and Clean Up at Alice Wainwright Park",
                  description: "Join United Way of Miami-Dade and City of Miami's Parks and Recreation Department in conserving and preserving unique ecosystems in one of three Natural Areas. Through community involvement, restoration efforts to keep these ecosystems healthy is possible. Volunteers will have the opportunity to learn about Miami's local habitats and ecosystems, as well as learn to identify various native and non-native invasive plant species. Opportunities will also include exotic invasive removal to prevent displacing our native plant species, seed propagation in the nursery, planting of trees, and debris clean-up. Returning volunteers can take part in research and monitoring of plant species.

                  Children under 17 years of age must be accompanied by an adult.",
                  date: "January 26, 2019",
                  start_at: "2019-01-26 09:00:00 EDT",
                  end_at: "2019-01-26 12:00:00 EDT",
                  location: "Alice Wainwright Park",
                  street_address: "2845 Brickell Avenue",
                  city: "Miami",
                  state: "FL",
                  zip: "33129"
                },

              ]
    },
    {
      name: "Event 16",
      details: [
                {
                  title: "AMIKids North",
                  description: "Uses a structured behavior modification system and an educational component to improve student academic achievement for youth, ages 14 to 18 that have been referred through the juvenile justice system. AMIKids North is looking for volunteers

                  Volunteer opportunities vary depending on the time of the year and what is currently taking place at the program. Opportunities can range from mentoring a student, tutoring, small groups on hygiene, relationships, college or career guidance.

                  Please note that if you volunteer once, you might not need to complete a background check, but if you sign up for multiple shifts, you will be asked to complete a background check.",
                  date: "",
                  start_at: "2018-09-15 09:00:00 EDT",
                  end_at: "2018-09-15 12:00:00 EDT",
                  location: "",
                  street_address: "701 Northeast 151 Street",
                  city: "North Miami Beach",
                  state: "FL",
                  zip: "33160"
                },

              ]
    },
    {
      name: "Event 16",
      details: [
                {
                  title: "Food for Life Network, Inc. Food Bank",
                  description: "Food for Life Network, Inc., a program through Care Resource, is committed to delivering services with compassion and confidentiality, to fostering clients’ dignity and independence, and to enhancing clients’ quality of life. Clients are never charged for services. Instead, Care Resource depend on grants and donations from socially responsible individuals, groups, businesses and organizations within and beyond the local community.​

                  Volunteers are needed in the food bank to pack groceries for pickup and meals for delivery, sort and shelve donations, in addition to other food bank tasks as needed.",
                  date: "",
                  start_at: "2018-09-19 09:00:00 EDT",
                  end_at: "2018-09-18 12:00:00 EDT",
                  location: "Food for Life Network",
                  street_address: "3400 Northeast 2nd Avenue",
                  city: "Miami",
                  state: "FL",
                  zip: "33137"
                },

              ]
    },
    {
      name: "Event 17",
      details: [
                {
                  title: "Lotus Village Volunteer Opportunities",
                  description: "They have a new state-of-the-art facility and they are looking for volunteers that can come with activities or ideas. Lotus Village relies on volunteers to create and lead activities for the women, children, and together (including mommy & me)! If you have knowledge or passion about art, meditation, Zumba, knitting, make-up, manicures, (to name a few), Lotus Village is especially (but not only) looking for volunteers to commit 1+ hours a week.",
                  date: "" ,
                  start_at: "2018-09-21 09:00:00 EDT",
                  end_at: "2018-09-21 12:00:00 EDT",
                  location: "",
                  street_address: "",
                  city: "Miami",
                  state: "FL",
                  zip: ""
                },

              ]
    },
    {
      name: "Event 18",
      details: [
                {
                  title: "Red Cross",
                  description: "The Red Cross is looking for volunteers to cover their reception desk and answer phones. If you have any questions, please call Sylvia J. Taylor at (954) 895-8935.",
                  date: "",
                  start_at: "2018-09-24 09:00:00 EDT",
                  end_at: "2018-09-24 12:00:00 EDT",
                  location: "",
                  street_address: "",
                  city: "Miami",
                  state: "FL",
                  zip: ""
                },

              ]
    },
    {
      name: "Event 19",
      details: [
                {
                  title: "Southwest Social Services Badia Senior Center",
                  description: "Southwest Social Services Programs, Inc. has been serving senior citizens throughout Miami-Dade County since 1981. The services they offer include home-delivered meals, congregate meals in senior centers, screening and assessment, nutrition education, recreational activities, education, and transportation. Southwest Social services is looking for volunteers throughout the week to help with arts & crafts, English classes, recreational activities and computer classes for seniors.",
                  date: "" ,
                  start_at: "2018-09-27 09:00:00 EDT",
                  end_at: "2018-09-27 12:00:00 EDT",
                  location: "Badia Senior Center (Main)",
                  street_address: "25 Tamiami Boulevard",
                  city: "Miami",
                  state: "FL",
                  zip: "33144"
                },

              ]
    },
  ]
}

DATA[:calendarEvents].each do |event|
  p Event.create!(event[:details][0])
end
