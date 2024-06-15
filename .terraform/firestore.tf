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
    basics = {
      name = { string_value = "Vikram Nayyar" },
      label = { string_value = "Computer Science Graduate, All Round Tech Enthusiast" },
      image = { string_value = "https://media.licdn.com/dms/image/D4E03AQEjKLH1r-NJ7A/profile-displayphoto-shrink_400_400/0/1678379873396?e=1723680000&v=beta&t=s6xDT3oT23Rl84KByLRhQ7DaZENu3kYuCccqGuVfIZQ" },
      email = { string_value = "vikramnayyarcp@gmail.com" },
      phone = { string_value = "PRIVATE PHONE NUMBER" },
      url = { string_value = "https://vikramnayyarcs.vercel.app/" },
      summary = { string_value = "An insight into Vikram Nayyar" },
      location = {
        map_value = {
          fields = {
            address = { string_value = "PRIVATE ADDRESS" },
            postalCode = { string_value = "PRIVATE POST CODE" },
            city = { string_value = "Newcastle Upon Tyne" },
            countryCode = { string_value = "UK" },
            region = { string_value = "North East" }
          }
        }
      },
      profiles = {
        array_value = {
          values = [
            {
              map_value = {
                fields = {
                  network = { string_value = "Twitter" },
                  username = { string_value = "john" },
                  url = { string_value = "https://twitter.com/vikramnayyarcs" }
                }
              }
            }
          ]
        }
      }
    },
    work = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                name = { string_value = "SquaredUp" },
                position = { string_value = "Software Development Placement Student" },
                url = { string_value = "https://company.com" },
                startDate = { string_value = "2022-07-04" },
                endDate = { string_value = "2023-07-04" },
                summary = { string_value = "JavaScript Developer, embedded within the engineering department." },
                highlights = {
                  array_value = {
                    values = [
                      { string_value = "Helping prepare the product for launch." },
                      { string_value = "Attending AWS Summit 2023." }
                    ]
                  }
                }
              }
            }
          }
        ]
      }
    },
    volunteer = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                organization = { string_value = "TheNibbleByte" },
                position = { string_value = "Volunteer Blogger" },
                url = { string_value = "https://www.facebook.com/thenibblebyte/" },
                startDate = { string_value = "2020-08-01" },
                endDate = { string_value = "2021-03-01" },
                summary = { string_value = "Blogger" },
                highlights = {
                  array_value = {
                    values = [
                      { string_value = "Contributing towards their blog." }
                    ]
                  }
                }
              }
            }
          }
        ]
      }
    },
    education = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                institution = { string_value = "Newcastle University" },
                url = { string_value = "https://www.ncl.ac.uk/" },
                area = { string_value = "Computer Science With Industrial Placement" },
                studyType = { string_value = "Bachelor" },
                startDate = { string_value = "2020-09-01" },
                endDate = { string_value = "2024-07-01" },
                score = { string_value = "First Class Honours" },
                courses = {
                  array_value = {
                    values = [
                      { string_value = "CSC1031 - Fundamentals of Computing" },
                      { string_value = "CSC1032 - Computer Systems Design and Architecture" },
                      { string_value = "CSC1033 - Information Storage and Retrieval" },
                      { string_value = "CSC1034 - Programming Portfolio 1 (Python)" },
                      { string_value = "CSC1035 - Programming Portfolio 2 (Java)" },
                      { string_value = "CSC2031 - Security and Programming Paradigms" },
                      { string_value = "CSC2032 - Algorithms" },
                      { string_value = "CSC2033 - Software Engineering Team Project" },
                      { string_value = "CSC2034 - Contemporary Topics" },
                      { string_value = "CSC2035 - Software Systems Design and Implementation" }
                    ]
                  }
                }
              }
            }
          }
        ]
      }
    },
    awards = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                title = { string_value = "High School 100% Attendance" },
                date = { string_value = "2018-09-01" },
                awarder = { string_value = "Gosforth Academy" },
                summary = { string_value = "High Attendance" }
              }
            }
          }
        ]
      }
    },
    certificates = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                name = { string_value = "Python For Data Science and Machine learning Bootcamp by Jose Portilla" },
                date = { string_value = "2020-11-07" },
                issuer = { string_value = "Udemy" },
                url = { string_value = "https://certificate.com" }
              }
            }
          }
        ]
      }
    },
    skills = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                name = { string_value = "Web Development" },
                level = { string_value = "Improving" },
                keywords = {
                  array_value = {
                    values = [
                      { string_value = "HTML" },
                      { string_value = "CSS" },
                      { string_value = "JavaScript" },
                      { string_value = "React JS" },
                      { string_value = "Next JS" },
                      { string_value = "Tailwind CSS" },
                      { string_value = "Node JS" },
                      { string_value = "TypeScript" },
                      { string_value = "FireBase" },
                      { string_value = "GCP" },
                      { string_value = "Nivo" },
                      { string_value = "Vercel" },
                      { string_value = "Stripe" }
                    ]
                  }
                }
              }
            }
          },
          {
            map_value = {
              fields = {
                name = { string_value = "Scripting" },
                level = { string_value = "Improving" },
                keywords = {
                  array_value = {
                    values = [
                      { string_value = "Python" },
                      { string_value = "JavaScript" }
                    ]
                  }
                }
              }
            }
          }
        ]
      }
    },
    languages = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                language = { string_value = "English" },
                fluency = { string_value = "Native speaker" }
              }
            }
          }
        ]
      }
    },
    interests = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                name = { string_value = "Travelling" },
                keywords = {
                  array_value = {
                    values = [
                      { string_value = "London" },
                      { string_value = "Edinburgh" }
                    ]
                  }
                }
              }
            }
          },
          {
            map_value = {
              fields = {
                name = { string_value = "Active Lifestyle" },
                keywords = {
                  array_value = {
                    values = [
                      { string_value = "Badminton" },
                      { string_value = "Gym" }
                    ]
                  }
                }
              }
            }
          }
        ]
      }
    },
    references = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                name = { string_value = "TheNibbleByte" },
                reference = { string_value = "He has an incredible attitude and mentality that really shines through in his writing - he is keen to share his thoughts and those thoughts are often inspiring and very well expressed. He clearly has a great passion for computer science, as well as great time management skills that can be seen in the way he has scheduled himself to post once a week, giving him time to properly think about what he’s writing and ensure it is of benefit to anyone who may read. Besides all this, he is an extremely reliable and polite person, willing to help out wherever he can. We couldn’t have asked for more from him and recommend him very highly." }
              }
            }
          }
        ]
      }
    },
    projects = {
      array_value = {
        values = [
          {
            map_value = {
              fields = {
                name = { string_value = "Next JS ECommerce Store" },
                description = { string_value = "Amazon CLONE with Next JS, Stripe, Tailwind, Firebase" },
                highlights = {
                  array_value = {
                    values = [
                      { string_value = "Completed as part of the Sonny Sangha 5 Day Challenge." }
                    ]
                  }
                },
                url = { string_value = "https://project.com/" }
              }
            }
          },
          {
            map_value = {
              fields = {
                name = { string_value = "Cloud Resume API Challenge" },
                description = { string_value = "Amazon CLONE with Next JS, Stripe, Tailwind, Firebase" },
                highlights = {
                  array_value = {
                    values = [
                      { string_value = "Shoutout Rishab in Cloud for sharing!" }
                    ]
                  }
                },
                url = { string_value = "https://project.com/" }
              }
            }
          },
          {
            map_value = {
              fields = {
                name = { string_value = "Physical Activity Data Visualisation Platform" },
                description = { string_value = "Dissertation project using a wide range of tech" },
                highlights = {
                  array_value = {
                    values = [
                      { string_value = "Dissertation Project" }
                    ]
                  }
                },
                url = { string_value = "https://dissertation-2024.vercel.app/" }
              }
            }
          }
        ]
      }
    }
  })
}
