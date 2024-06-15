resource "google_firestore_database" "database" {
  project     = "vn-cloud-resume-api-challenge"
  name        = "cloud-resume-challenge-firestore-database"
  location_id = "nam5"
  type        = "FIRESTORE_NATIVE"
}

resource "google_firestore_document" "resume" {
  project     = "vn-cloud-resume-api-challenge"
  database    = google_firestore_database.database.name
  collection  = "resumes"
  document_id = "12"
  fields      = jsonencode({
  "basics": {
    "name": "Vikram Nayyar",
    "label": "Computer Science Graduate, All Round Tech Enthusiast",
    "image": "https://media.licdn.com/dms/image/D4E03AQEjKLH1r-NJ7A/profile-displayphoto-shrink_400_400/0/1678379873396?e=1723680000&v=beta&t=s6xDT3oT23Rl84KByLRhQ7DaZENu3kYuCccqGuVfIZQ",
    "email": "vikramnayyarcp@gmail.com",
    "phone": "PRIVATE PHONE NUMBER",
    "url": "https://vikramnayyarcs.vercel.app/",
    "summary": "An insight into Vikram Nayyar",
    "location": {
      "address": "PRIVATE ADDRESS",
      "postalCode": "PRIVATE POST CODE",
      "city": "Newcastle Upon Tyne",
      "countryCode": "UK",
      "region": "North East"
    },
    "profiles": [
      {
        "network": "Twitter",
        "username": "john",
        "url": "https://twitter.com/vikramnayyarcs"
      }
    ]
  },
  "work": [
    {
      "name": "SquaredUp",
      "position": "Software Development Placement Student",
      "url": "https://company.com",
      "startDate": "2022-07-04",
      "endDate": "2023-07-04",
      "summary": "JavaScript Developer, embedded within the engineering department.",
      "highlights": [
        "Helping prepare the product for launch.",
        "Attending AWS Summit 2023."
      ]
    }
  ],
  "volunteer": [
    {
      "organization": "TheNibbleByte",
      "position": "Volunteer Blogger",
      "url": "https://www.facebook.com/thenibblebyte/",
      "startDate": "2020-08-01",
      "endDate": "2021-03-01",
      "summary": "Blogger",
      "highlights": ["Contributing towards their blog."]
    }
  ],
  "education": [
    {
      "institution": "Newcastle University",
      "url": "https://www.ncl.ac.uk/",
      "area": "Computer Science With Industrial Placement",
      "studyType": "Bachelor",
      "startDate": "2020-09-01",
      "endDate": "2024-07-01",
      "score": "First Class Honours",
      "courses": [
        "CSC1031 - Fundamentals of Computing",
        "CSC1032 - Computer Systems Design and Architecture",
        "CSC1033 - Information Storage and Retrieval",
        "CSC1034 - Programming Portfolio 1 (Python)",
        "CSC1035 - Programming Portfolio 2 (Java)",
        "CSC2031 - Security and Programming Paradigms",
        "CSC2032 - Algorithms",
        "CSC2033 - Software Engineering Team Project",
        "CSC2034 - Contemporary Topics",
        "CSC2035 - Software Systems Design and Implementation"
      ]
    }
  ],
  "awards": [
    {
      "title": "High School 100% Attendance",
      "date": "2018-09-01",
      "awarder": "Gosforth Academy",
      "summary": "High Attendance"
    }
  ],
  "certificates": [
    {
      "name": "Python For Data Science and Machine learning Bootcamp by Jose Portilla",
      "date": "2020-11-07",
      "issuer": "Udemy",
      "url": "https://certificate.com"
    }
  ],
  "skills": [
    {
      "name": "Web Development",
      "level": "Improving",
      "keywords": [
        "HTML",
        "CSS",
        "JavaScript",
        "React JS",
        "Next JS",
        "Tailwind CSS",
        "Node JS",
        "TypeScript",
        "FireBase",
        "GCP",
        "Nivo",
        "Vercel",
        "Stripe"
      ]
    },
    {
      "name": "Scriptingt",
      "level": "Improving",
      "keywords": ["Python", "JavaScript"]
    }
  ],
  "languages": [
    {
      "language": "English",
      "fluency": "Native speaker"
    }
  ],
  "interests": [
    {
      "name": "Travelling",
      "keywords": ["London", "Edinburgh"]
    },
    {
      "name": "Active Lifestyle",
      "keywords": ["Badminton", "Gym"]
    }
  ],
  "references": [
    {
      "name": "TheNibbleByte",
      "reference": "He has an incredible attitude and mentality that really shines through in his writing - he is keen to share his thoughts and those thoughts are often inspiring and very well expressed. He clearly has a great passion for computer science, as well as great time management skills that can be seen in the way he has scheduled himself to post once a week, giving him time to properly think about what he’s writing and ensure it is of benefit to anyone who many read. Besides all this, he is an extremely reliable and polite person, willing to help out wherever he can. We couldn’t have asked for more from him and recommend him very highly"
    }
  ],
  "projects": [
    {
      "name": "Next JS ECommerce Store",
      "description": "Amazon CLONE with Next JS, Stripe, Tailwind, Firebaase",
      "highlights": ["Completed as part of the Sonny Sangha 5 Day CHallenge."],
      "url": "https://project.com/"
    },
    {
      "name": "Cloud Resume API Challenge",
      "description": "Amazon CLONE with Next JS, Stripe, Tailwind, Firebaase",
      "highlights": ["Shoutout Rishab in Cloud for sharing!"],
      "url": "https://project.com/"
    },
    {
      "name": "Physical Activity Data Visualisation Platform",
      "description": "Dissertation project using a wide range of tech",
      "highlights": ["Dissertation Project"],
      "url": "https://dissertation-2024.vercel.app/"
    }
  ]
}
)
}
