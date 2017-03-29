class Entry < ActiveRecord::Base


  validates_uniqueness_of :name
  validates_presence_of   :name


  def self.metros
    ["Abilene-Sweetwater TX", "Albany GA", "Albany-Schenectady-Troy NY", "Albuquerque-Santa Fe NM", "Alexandria LA", "Alpena MI", "Amarillo TX", "Anchorage AK", "Atlanta GA", "Augusta GA", "Austin TX", "Bakersfield CA", "Baltimore MD", "Bangor ME", "Baton Rouge LA", "Beaumont-Port Arthur TX", "Bend OR", "Billings MT", "Biloxi-Gulfport MS", "Binghamton NY", "Birmingham AL", "Bluefield-Beckley-Oak Hill WV", "Boise ID", "Boston MA-Manchester NH", "Bowling Green KY", "Buffalo NY", "Burlington VT-Plattsburgh NY", "Butte-Bozeman MT", "Casper-Riverton WY", "Cedar Rapids-Waterloo-Iowa City & Dubuque IA", "Champaign & Springfield-Decatur,IL", "Charleston SC", "Charleston-Huntington WV", "Charlotte NC", "Charlottesville VA", "Chattanooga TN", "Cheyenne WY-Scottsbluff NE", "Chicago IL", "Chico-Redding CA", "Cincinnati OH", "Clarksburg-Weston WV", "Cleveland-Akron (Canton) OH", "Colorado Springs-Pueblo CO", "Columbia SC", "Columbia-Jefferson City MO", "Columbus GA", "Columbus OH", "Columbus-Tupelo-West Point MS", "Corpus Christi TX", "Dallas-Ft. Worth TX", "Davenport IA-Rock Island-Moline IL", "Dayton OH", "Denver CO", "Des Moines-Ames IA", "Detroit MI", "Dothan AL", "Duluth MN-Superior WI", "El Paso TX", "Elmira NY", "Erie PA", "Eugene OR", "Eureka CA", "Evansville IN", "Fairbanks AK", "Fargo-Valley City ND", "Flint-Saginaw-Bay City MI", "Florence-Myrtle Beach SC", "Fresno-Visalia CA", "Ft. Myers-Naples FL", "Ft. Smith-Fayetteville-Springdale-Rogers AR", "Ft. Wayne IN", "Gainesville FL", "Glendive MT", "Grand Junction-Montrose CO", "Grand Rapids-Kalamazoo-Battle Creek MI", "Great Falls MT", "Green Bay-Appleton WI", "Greensboro-High Point-Winston Salem NC", "Greenville-New Bern-Washington NC", "Greenville-Spartanburg SC-Asheville NC-Anderson SC", "Greenwood-Greenville MS", "Harlingen-Weslaco-Brownsville-McAllen TX", "Harrisburg-Lancaster-Lebanon-York PA", "Harrisonburg VA", "Hartford & New Haven CT", "Hattiesburg-Laurel MS", "Helena MT", "Honolulu HI", "Houston TX", "Huntsville-Decatur (Florence) AL", "Idaho Falls-Pocatello ID", "Indianapolis IN", "Jackson MS", "Jackson TN", "Jacksonville FL", "Johnstown-Altoona PA", "Jonesboro AR", "Joplin MO-Pittsburg KS", "Juneau AK", "Kansas City MO", "Knoxville TN", "La Crosse-Eau Claire WI", "Lafayette IN", "Lafayette LA", "Lake Charles LA", "Lansing MI", "Laredo TX", "Las Vegas NV", "Lexington KY", "Lima OH", "Lincoln & Hastings-Kearney NE", "Little Rock-Pine Bluff AR", "Los Angeles CA", "Louisville KY", "Lubbock TX", "Macon GA", "Madison WI", "Mankato MN", "Marquette MI", "Medford-Klamath Falls OR", "Memphis TN", "Meridian MS", "Miami-Ft. Lauderdale FL", "Milwaukee WI", "Minneapolis-St. Paul MN", "Minot-Bismarck-Dickinson (Williston) ND", "Missoula MT", "Mobile AL-Pensacola (Ft. Walton Beach) FL", "Monroe LA-El Dorado AR", "Monterey-Salinas CA", "Montgomery (Selma) AL", "Nashville TN", "New Orleans LA", "New York NY", "Norfolk-Portsmouth-Newport News VA", "North Platte NE", "Odessa-Midland TX", "Oklahoma City OK", "Omaha NE", "Orlando-Daytona Beach-Melbourne FL", "Ottumwa IA-Kirksville MO", "Paducah KY-Cape Girardeau MO-Harrisburg-Mount Vernon IL", "Palm Springs CA", "Panama City FL", "Parkersburg WV", "Peoria-Bloomington IL", "Philadelphia PA", "Phoenix AZ", "Pittsburgh PA", "Portland OR", "Portland-Auburn ME", "Presque Isle ME", "Providence RI-New Bedford MA", "Quincy IL-Hannibal MO-Keokuk IA", "Raleigh-Durham (Fayetteville) NC", "Rapid City SD", "Reno NV", "Richmond-Petersburg VA", "Roanoke-Lynchburg VA", "Rochester MN-Mason City IA-Austin MN", "Rochester NY", "Rockford IL", "Sacramento-Stockton-Modesto CA", "Salisbury MD", "Salt Lake City UT", "San Angelo TX", "San Antonio TX", "San Diego CA", "San Francisco-Oakland-San Jose CA", "Santa Barbara-Santa Maria-San Luis Obispo CA", "Savannah GA", "Seattle-Tacoma WA", "Sherman TX-Ada OK", "Shreveport LA", "Sioux City IA", "Sioux Falls (Mitchell) SD", "South Bend-Elkhart IN", "Spokane WA", "Springfield MO", "Springfield-Holyoke MA", "St. Joseph MO", "St. Louis MO", "Syracuse NY", "Tallahassee FL-Thomasville GA", "Tampa-St. Petersburg (Sarasota) FL", "Terre Haute IN", "Toledo OH", "Topeka KS", "Traverse City-Cadillac MI", "Tri-Cities TN-VA", "Tucson (Sierra Vista) AZ", "Tulsa OK", "Twin Falls ID", "Tyler-Longview (Lufkin & Nacogdoches) TX", "Utica NY", "Victoria TX", "Waco-Temple-Bryan TX", "Washington DC (Hagerstown MD)", "Watertown NY", "Wausau-Rhinelander WI", "West Palm Beach-Ft. Pierce FL", "Wheeling WV-Steubenville OH", "Wichita Falls TX & Lawton OK", "Wichita-Hutchinson KS", "Wilkes Barre-Scranton PA", "Wilmington NC", "Yakima-Pasco-Richland-Kennewick WA", "Youngstown OH", "Yuma AZ-El Centro CA", "Zanesville OH"]
  end


  def self.audiences
    ['Affluent', 'African American Audience', 'Ages 25 - 34', 'Ages 35 - 44', 'Ages 45 - 54', 'Ages 55 +', 'Asian Audience', 'Auto Intenders', 'Business Travelers', 'Caucasian Audience', 'College Students', 'Entertainment Enthusiasts', 'Fitness Enthusiasts', 'Frequent Auto Service Shoppers', 'Frequent CDR Diners', 'Frequent Consumer Electronic Shoppers', 'Frequent Game Shoppers', 'Frequent Health & Beauty Shoppers', 'Frequent High End Grocery Shoppers', 'Frequent High End Restaurant Diners', 'Frequent Home Store Shoppers', 'Frequent Luxury Apparel Shoppers', 'Frequent Price Sensitive Grocery Shoppers', 'Frequent QSR Diners', 'Frequent Sporting Goods Shoppers', 'Healthcare Professionals', 'Hispanic Audience', 'Income $100k - $150k', 'Income  $150k +', 'Income < $25k', 'Income $25k - $35k', 'Income $35k - $50k', 'Income $50k - $75k', 'Income $75k - $100k', 'Live Music Enthusiasts', 'Millennials 18-32', 'Millennials (Young) 18-24', 'Moms With Children In Household', 'Movie Enthusiasts', 'Outdoor Enthusiasts', 'Personal Investors', 'Pet Owners', 'Recent Hospital Visitors', 'Sports Enthusiasts', 'Technology Influencers', 'Urban Office Executives', 'Vacation Travelers']
  end

  def self.content
    ['Arts and Entertainment', 'Automotive', 'Business', 'Food and Drink', 'Health and Fitness', 'Hobbies and Interests', 'News and Information', 'Sports', 'Style and Fashion', 'Technology and Computing', 'Travel', 'Weather']
  end

  def self.carriers
    ['AT&T', 'Cricket Wireless', 'C Spire Wireless', 'Metro PCS', 'Sprint', 'T-Mobile', 'TracFone Wireless', 'Verizon Wireless']
  end

  def self.platforms
    ['Mobile App', 'Mobile Web', 'Tablet App', 'Tablet Web']
  end

  def self.creative_types
    ['Mobile Banner', 'Tablet Banner']
  end

  def self.audiences_prem
     ['Political Affiliation: Republican', 'Political Affiliation: Democrat', 'Political Affiliation: Undecided']
  end

  def self.operating_system
    ['iOS', 'Android']
  end

end
