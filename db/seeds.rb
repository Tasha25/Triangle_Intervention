#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Infraction.delete_all
Connector.delete_all

Infraction.create(code: 'B2', description: 'yelling')
Infraction.create(code: 'B37', description: 'fighting')

Infraction.create(code:'B21', description: 'Defying or disobeying the lawful authority or directive of school personnel or school safety agents in a way that substantially disrupts the educational process (A-G only)')

Infraction.create(code:'B22', description:' Entering or attempting to enter a school building without authorization or  through an  unauthorized  entrance  (A-G only)')

Infraction.create(code:'B23', description: 'Using slurs based upon actual or perceived race, ethnicity, color) national  origin, citizenship/immigration status, weight,
religion, gender, gender identity, gender expression, sexual orientation, or
disability)')

Infraction.create(code:'B24', description: 'Shoving, pushing, or engaging in a minor altercation or similar physical confrontational behavior towards students or school personnel (e.g., pushing past another person), or throwing an object (e.g., chalk)
or spitting at another person (for more serious physically aggressive
behavior, see B36)')

Infraction.create(code:'B25', description: 'Bringing unauthorized  persons to  school  or  allowing  unauthorized visitors to enter school in violation of written school rules')

Infraction.create(code:'B26', description:  'Engaging  in  gang-related  behavior  (e.g., wearing or displaying gang apparel and/or accessories, writing graffiti, making  gestures  or  signs')

Infraction.create(code:'B27', description: 'Tampering with, changing or altering a record or document of a school by any method, including, but not limited to, computer access or other electronic means')

Infraction.create(code: 'B28', description: 'Engaging in  vandalism,  graffiti  or  other intentional damage  to  school property or property belonging to staff, students or others B29  Knowingly  possessing  property  belonging to  another without
authorization')

Connector.create(
  organization_name: 'Casita Maria Inc.',
  organization_mission: 'The mission of the Casita Maria Center for Arts and Education is to empower youth and their families by creating a culture of learning through high quality social, cultural, and educational opportunities.',
  street_address: '928 Simpson Street',
  city: 'Bronx',
  state: 'NY',
  zip_code: '10459',
  contact_person_first_name: 'John',
  contact_person_last_name: 'Doe ',
  contact_person_email: 'info@casita.us',
  contact_number: '718-234-5678',
  organization_number: '718-589-2230 ',
  organization_website: 'http://www.casita.us/'
  )

Connector.create(
  organization_name: 'Good Shepherd Services',
  organization_mission: 'The mission of Good Shepherd Services is to surround at-risk New York City youth and their families with a web of supports that promote a safe passage to self-sufficiency.  To achieve our mission, we lead in the development of innovative youth development programs; provide quality, effective services that strengthen participants\' connections with family, school and community; and advocate on their behalf for broader change.',
  street_address: '928 Simpson Street',
  city: 'Bronx',
  state: 'NY',
  zip_code: '10459',
  contact_person_first_name: 'John',
  contact_person_last_name: 'Doe ',
  contact_person_email: 'info@casita.us',
  contact_number: '718-234-5678',
  organization_number: '718-589-2230 ',
  organization_website: 'http://www.casita.us/'
  )

Connector.create(
  organization_name: 'Lively Fun',
  organization_mission: 'The mission of the Lively Fun is to ensure that family and firends enjoy themselves everyday',
  street_address: '928 Simpson Street',
  city: 'Bronx',
  state: 'NY',
  zip_code: '10459',
  contact_person_first_name: 'John',
  contact_person_last_name: 'Doe ',
  contact_person_email: 'info@casita.us',
  contact_number: '718-234-5678',
  organization_number: '718-589-2230 ',
  organization_website: 'http://www.casita.us/'
  )


Connector.create(
  organization_name: 'One day at a time',
  organization_mission: 'Helping people to handle daily changes every day',
  street_address: '928 Simpson Street',
  city: 'Bronx',
  state: 'NY',
  zip_code: '10459',
  contact_person_first_name: 'John',
  contact_person_last_name: 'Doe ',
  contact_person_email: 'info@casita.us',
  contact_number: '718-234-5678',
  organization_number: '718-589-2230 ',
  organization_website: 'http://www.casita.us/'
  )

Connector.create(
  organization_name: 'Boys and Girls Club',
  organization_mission: 'The mission of the Boys and Girls Club is to make sure each child feels special.',
  street_address: '928 Simpson Street',
  city: 'Bronx',
  state: 'NY',
  zip_code: '10459',
  contact_person_first_name: 'John',
  contact_person_last_name: 'Doe ',
  contact_person_email: 'info@casita.us',
  contact_number: '718-234-5678',
  organization_number: '718-589-2230 ',
  organization_website: 'http://www.casita.us/'
  )



