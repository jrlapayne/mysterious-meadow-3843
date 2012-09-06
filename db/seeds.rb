#TSA
Topic.create(
  title: 'TSA nude-body scanners', 
  score: 4,
  is_approved: true)
  
Reason.create(
  topic_id: 1,
  title: 'The cost of one TSA nude-body scanner is up to $200k',
  url1: 'http://articles.businessinsider.com/2012-05-10/politics/31650296_1_tsa-to-advanced-imaging-technology-scanners',
  score: 5,
  is_approved: true,
  question: 'Approximately how much does one TSA nude-body scanner cost?',
  correct: 'Up to $200,000',
  wrong1: 'Less than $10,000',
  wrong2: '$50,000',
  wrong3: 'More than $1 million',
  is_intro: true,
  url: 'http://momentfeed.com/wp-content/uploads/2012/07/business_insider_logo.png')
  
Reason.create(
  topic_id: 1,
  title: 'The theoretical radiation output of a TSA scanner is relatively tiny',
  description: 'One backscatter scan emits 1/200,000th of the radiation of one typical CT scan.  The amount of radiation from a x-ray security scanner is equivalent to at most 42 minutes of natural background radiation in the US.  A person would have to be screened more than 1,000 times in one year to exceed recommended radiation dose limits',
  url1: 'http://en.wikipedia.org/wiki/Full_body_scanner#Backscatter_X-ray_scanners',
  url2: 'http://en.wikipedia.org/wiki/Backscatter_X-ray#Health_effects',
  score: 20,
  is_approved: true,
  question: 'In terms of theoretically emitted radiation, one CT scan is equal to approximately how many TSA nude-body scans?',
  correct: '200,000 TSA scans',
  wrong1: '5,000 TSA scans',
  wrong2: '4 TSA scans',
  wrong3: '600 TSA scans',
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
  
Reason.create(
  topic_id: 1,
  title: 'TSA employees are not allowed to wear radiation-detecting dosimeter badges',
  description: "These badges change color when exposed to radiation.  Employees of other industries wear these to be alerted if they are being exposed to excess radiation.  According to the TSA blog, the TSA did not allow employees to wear badges because they didn't want to alarm passengers and the expected levels were considered negligible.  As of January 2012, the TSA is planning to start having some TSA employees wear dosimeter badges in light of recent radiation output concerns.",
  url1: 'http://blog.tsa.gov/2011/06/tsa-cancer-cluster-myth-buster.html',
  url2: 'http://www.scientificamerican.com/article.cfm?id=airport-screeners-to-be-monitored',
  url3: 'http://intransit.blogs.nytimes.com/2011/07/12/airport-body-scanners-and-health/?src=twr',
  score: 13,
  is_approved: true,
  question: 'True/False: TSA employees wear radiation-detecting dosimeter badges.  ',
  correct: 'False',
  wrong1: 'True',
  is_pro: false,
  url: 'http://orlandolocal.com/ol/wp-content/uploads/2012/06/tsa-logo.jpg')

Reason.create(
  topic_id: 1,
  title: 'TSA employees in are suing the TSA for cancer issues related to the scanners',
  url1: 'http://intransit.blogs.nytimes.com/2011/07/12/airport-body-scanners-and-health/?src=twr',
  score: 11,
  is_approved: false,
  is_pro: false,
  url: 'http://www.technobuffalo.com/wp-content/uploads/2012/08/new-york-times-logo.jpeg')
  
Reason.create(
  topic_id: 1,
  title: "A TSA nude body scanner creates an image of the passenger's naked body",
  url1: 'http://en.wikipedia.org/wiki/Full_body_scanner',
  score: 4,
  is_approved: false,
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
  
Reason.create(
  topic_id: 1,
  title: 'TSA nude-body scans take about 30 seconds on average',
  url1: 'http://www.studentnewsdaily.com/daily-news-article/scanners-and-probing-pat-downs-upset-airline-passengers/',
  score: 3,
  is_approved: true,
  question: 'Approximately how long does an average TSA nude-body scan take?',
  correct: '30 seconds',
  wrong1: '2 seconds',
  wrong2: '3 minutes',
  wrong3: '10 minutes',
  is_pro: true,
  url: 'http://www.studentnewsdaily.com/wp-content/uploads/2011/09/globe.png')

Reason.create(
  topic_id: 1,
  title: 'The cost of the TSA is approximately $8 billion per year',
  url1: 'http://en.wikipedia.org/wiki/Transportation_Security_Administration',
  score: 6,
  is_approved: true,
  question: 'Approximately how large is the annual TSA budget?',
  correct: '$8 billion',
  wrong1: '$800 million',
  wrong2: '$80 billion',
  wrong3: '$800 billion',
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 1,
  title: 'The TSA directly employs nearly 60,000 people',
  url1: 'http://en.wikipedia.org/wiki/Transportation_Security_Administration',
  score: 7,
  is_approved: true,
  question: 'Approximately how many people does the TSA directly employ?',
  correct: '60,000',
  wrong1: '300,000',
  wrong2: '1,500,000',
  wrong3: '12,000',
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
  
Reason.create(
  topic_id: 1,
  title: 'A blogger successfully snuck metal objects through TSA nude-body scanners at multiple airports',
  url1: 'http://www.bgr.com/2012/03/08/blogger-shows-the-world-how-to-sneak-anything-past-tsas-nude-body-scanners-video/',
  score: 17,
  is_approved: true,
  question: "At multiple locations, a blogger successfully snuck metal objects past which federal agency's scanners?",
  correct: 'TSA',
  wrong1: 'Secret Service',
  wrong2: 'CIA',
  wrong3: 'FBI',
  is_pro: false,
  url: 'http://www-deadline-com.vimg.net/wp-content/uploads/2010/04/BGR-logo-300x171.jpg')
  
Reason.create(
  topic_id: 1,
  title: 'When the TSA scanners were actually tested, they were emitting 10 times more radiation than they were supposed to',
  url1: 'http://www.usatoday.com/news/washington/2011-03-11-tsa-scans_N.htm',
  score: 9,
  is_approved: true,
  question: 'When TSA nude-body scanners were tested for radiation output, how much radiation were they actually emitting relative to their theoretical output?',
  correct: '10 times more',
  wrong1: '500 times more',
  wrong2: '10 times less',
  wrong3: '500 times less',
  is_pro: false,
  url: 'http://sportsmediamasters.com/smm/wp-content/uploads/2012/05/USA-Today-logo.bmp')
  
Reason.create(
  topic_id: 1,
  title: 'The TSA will perform enhanced pat-downs on children',
  url1: 'http://travel.usatoday.com/flights/post/2011/04/tsa-screening-controversy/155793/1',
  score: 19,
  is_approved: true,
  question: 'True/False: The TSA will NOT perform enhanced pat-downs on children under the age of 7',
  correct: 'True',
  wrong1: 'False',
  is_pro: false,
  url: 'http://sportsmediamasters.com/smm/wp-content/uploads/2012/05/USA-Today-logo.bmp')
  
Reason.create(
  topic_id: 1,
  title: 'According to a 2012 Gallup poll, 54% of Americans say the TSA is doing a good or excellent job',
  url1: 'http://www.politico.com/news/stories/0812/79499.html?hp=r8',
  score: 21,
  is_approved: true,
  question: 'According to a 2012 Gallup poll, approximately what % of Americans said that the TSA is doing a good or excellent job?',
  correct: '54%',
  wrong1: '92%',
  wrong2: '9%',
  wrong3: '27%',
  is_pro: true,
  url: 'http://www.userlogos.org/files/logos/jumpordie/politico_01.png')
  
Reason.create(
  topic_id: 1,
  title: 'TSA has nearly $200M worth of equipment sitting unused in a Texas warehouse',
  url1: 'http://www.washingtonpost.com/local/trafficandcommuting/tsa-equipment-gathering-dust-house-investigators-say/2012/05/08/gIQAaG9WBU_story.html',
  score: 7,
  is_approved: true,
  question: 'The TSA is storing approximately how much unused security equipment in a Texas warehouse?',
  correct: '$200 million',
  wrong1: '$1.5 billion',
  wrong2: '$11 billion',
  wrong3: '$30 million',
  is_pro: false,
  url: 'http://www.dcmetrochocolatetours.com/wp-content/uploads/washington_post_logo.jpg')
    
Reason.create(
  topic_id: 1,
  title: 'Rapiscan and L-3 Communications manufacture the TSA scanners',
  url1: 'http://www.foxnews.com/politics/2010/11/23/tsa-body-scanners-spend-millions-lobbying-reap-large-rewards/',
  score: 1,
  is_approved: false,
  is_intro: true,
  url: 'http://www.addictinginfo.org/wp-content/uploads/2011/05/fox-news-logo.jpg')
  
Reason.create(
  topic_id: 1,
  title: 'TSA scanners are exempt from state radiation inspections',
  url1: 'http://www.usatoday.com/news/washington/2011-03-11-tsa-scans_N.htm',
  score: 15,
  is_approved: true,
  question: 'True/False: TSA nude-body scanners are exempt from state radiation exemptions',
  correct: 'True',
  wrong1: 'False',
  is_pro: false,
  url: 'http://sportsmediamasters.com/smm/wp-content/uploads/2012/05/USA-Today-logo.bmp')
  
Reason.create(
  topic_id: 1,
  title: 'Employees in most other industries that involve radiation exposure are required to wear dosimeter badges, which are closely monitored',
  url1: 'http://www.stanforddosimetry.com/Badge_Service/badge_service_FAQs.html ',
  url2: 'http://www.ct.gov/dep/cwp/view.asp?a=2713&q=324816&depNav_GID=1639',
  score: 12,
  is_approved: false,
  is_pro: false,
  url: 'http://www.ctdeepstore.com/images/deepcirclejpeg(2).jpg')
  
Reason.create(
  topic_id: 1,
  title: 'Adam Savage from Mythbusters claims that the TSA screenings did not detect his 12" razor blades',
  url1: 'http://arstechnica.com/tech-policy/2010/11/adam-savage-tsa-saw-my-junk-missed-12-razor-blades/',
  score: 11,
  is_approved: false,
  is_pro: false,
  url: 'http://upload.wikimedia.org/wikipedia/en/0/03/Ars_Technica_logo.png')

Reason.create(
  topic_id: 1,
  title: 'TSA employees have claimed that filming checkpoints is terrorism',
  url1: 'http://www.infowars.com/tsa-filming-checkpoints-is-terrorism/',
  score: 10,
  is_approved: false,
  is_intro: true,
  url: 'http://ocoathkeepers.files.wordpress.com/2011/04/infowars-box-logo.png?w=620')

#College
Topic.create(
  title: 'College',
  score: 2,
  is_approved: true)

Reason.create(
  topic_id: 2,
  title: 'Half of all recent college grads are either unemployed or underemployed',
  url1: 'http://www.ibtimes.com/articles/332153/20120423/unemployment-college-young-americans-under-25-student.htm',
  score: 30,
  is_approved: true,
  question: 'Approximately what percentage of recent college graduates are either unemployed or underemployed?',
  correct: '50%',
  wrong1: '70%',
  wrong2: '10%',
  wrong3: '25%',
  is_pro: false,
  url: 'http://t1.gstatic.com/images?q=tbn:ANd9GcQK2M1VuBar9Tyl_xearderKFB-8eVk9No-bEs5JjpO12rwgRjY&t=1')

Reason.create(
  topic_id: 2,
  title: 'The average total yearly cost to attend a private US college is $43,500',
  url1: 'http://money.cnn.com/2012/03/27/pf/college/tuition-costs.moneymag/index.htm',
  score: 10,
  is_approved: true,
  question: 'What is the average TOTAL yearly cost to attend a private US college?',
  correct: '$43,500',
  wrong1: '$84,100',
  wrong2: '$21,200',
  wrong3: '$5,900',
  is_intro: true,
  url: 'http://homesbymorningstar.com/wp-content/uploads/2012/08/CNN-Money-Logo.jpg')

Reason.create(
  topic_id: 2,
  title: 'The cost of college textbooks has been rising much more quickly than inflation',
  description: 'Since 1980, the CPI (Consumer Price Index) has roughly doubled, while the cost of college textbooks has increased by over 600%.',
  url1: 'http://edcetera.rafter.com/college-costs-a-students-perspective/',
  url2: 'http://www.usatoday.com/news/education/story/2012-02-12/college-costs-free-textbooks/53123522/1',
  score: 15,
  is_approved: false,
  is_pro: false,
  url: 'http://sportsmediamasters.com/smm/wp-content/uploads/2012/05/USA-Today-logo.bmp')

Reason.create(
  topic_id: 2,
  title: 'Jobs requiring a degree are being created more quickly than jobs that do not require a degree',
  url1: 'http://wjbc.com/wjbc-forum-the-more-education-the-better/',
  score: 15,
  is_approved: true,
  question: 'Which type of job is being created more quickly in the US?',
  correct: 'Jobs requiring a college degree',
  wrong1: 'Jobs NOT requiring a college degree',
  is_pro: true,
  url: 'http://a3.twimg.com/profile_images/218932595/WJBC-twitter-logo.png')

Reason.create(
  topic_id: 2,
  title: 'Approximately 2/3 of US jobs require at least a two-year college degree',
  url1: 'https://www.acteonline.org/uploadedFiles/Publications_and_E-Media/files/files-techniques-2009/Theme_4(3).pdf',
  score: 14,
  is_approved: true,
  question: 'Approximately how many US jobs require at least a two year college degree?',
  correct: '62%',
  wrong1: '8%',
  wrong2: '86%',
  wrong3: '38%',
  is_pro: true,
  url: 'http://www.mtaae.com/resources/ACTE_Logo.png?timestamp=1265488120337')

Reason.create(
  topic_id: 2,
  title: "Facebook's first investor is giving $100,000 grants to encourage exceptional teenagers to not attend college",
  url1: 'http://www.nytimes.com/2012/07/20/education/edlife/the-thiel-fellowship-aids-young-entrepreneurs-with-grants.html',
  score: 8,
  is_approved: false,
  is_pro: false,
  url: 'http://www.technobuffalo.com/wp-content/uploads/2012/08/new-york-times-logo.jpeg')

Reason.create(
  topic_id: 2,
  title: 'The median US family income is $51,400',
  url1: 'http://www.usatoday.com/money/economy/story/2012-02-09/income-rising/53033322/1',
  score: 10,
  is_approved: true,
  question: 'Approximately what is the median US family annual income?',
  correct: '$51,400',
  wrong1: '$73,500',
  wrong2: '$18,800',
  wrong3: '$42,200',
  is_intro: true,
  url: 'http://sportsmediamasters.com/smm/wp-content/uploads/2012/05/USA-Today-logo.bmp')
  
Reason.create(
  topic_id: 2,
  title: 'There is over $1 trillion in total US student debt',
  url1: 'http://www.nytimes.com/2012/05/13/business/student-loans-weighing-down-a-generation-with-heavy-debt.html?_r=1&pagewanted=all',
  score: 14,
  is_approved: true,
  question: 'Approximately how large is the total US student debt?',
  correct: 'Over $1 trillion',
  wrong1: '$250 billion',
  wrong2: '$60 billion',
  wrong3: '$15 billion',
  is_pro: false,
  url: 'http://www.technobuffalo.com/wp-content/uploads/2012/08/new-york-times-logo.jpeg')

Reason.create(
  topic_id: 2,
  title: 'Significant amounts of recent graduates are working at jobs that do not require a college degree (McDonalds, Starbucks, etc)',
  url1: 'http://abclocal.go.com/kabc/story?section=news/national_world&id=8633117',
  score: 16,
  is_approved: false,
  is_pro: false,
  url: 'http://www.worldtvpc.com/blog/wp-content/uploads/2011/08/abc-online-tv.jpg')

Reason.create(
  topic_id: 2,
  title: 'Student loans are practically non-dischargeable by bankruptcy',
  url1: 'http://en.wikipedia.org/wiki/Student_loans_in_the_United_States#Discharge_of_student_loans',
  score: 18,
  is_approved: false,
  is_pro: false,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
 
Reason.create(
  topic_id: 2,
  title: 'Salary and employment statistics provided by universities can be misleading and unrealistically optimistic',
  url1: 'http://insidethelawschoolscam.blogspot.com/2012/03/myth-of-sophisticated-law-student.html',
  score: 19,
  is_approved: false,
  is_pro: false,
  url: 'http://www.smfpl.org/files/images/blogspot-logo.png')

Reason.create(
  topic_id: 2,
  title: "Inflation-adjusted earnings for college graduates have been relatively stagnant since the 1980's",
  url1: 'http://www.businessinsider.com/these-two-charts-prove-a-college-education-just-isnt-worth-the-money-anymore-2012-6',
  score: 21,
  is_approved: true,
  question: 'True/False: Adjusted for inflation, earnings for college graduates have been relatively stagnant since the 1980s',
  correct: 'True',
  wrong1: 'False',
  is_pro: false,
  url: 'http://momentfeed.com/wp-content/uploads/2012/07/business_insider_logo.png')

Reason.create(
  topic_id: 2,
  title: "Costs of a 4-year degree have increased drastically since the 1980's and show no signs of slowing down",
  description: "The inflation-adjusted cost of a 4-year degree has more than doubled since 1980, while wages have increased by less than 15%",
  url1: 'http://www.businessinsider.com/these-two-charts-prove-a-college-education-just-isnt-worth-the-money-anymore-2012-6',
  score: 22,
  is_approved: true,
  question: 'Adjusted for inflation, approximately how much has the cost of a 4-year degree increased since the 1980s?',
  correct: 'Increased by more than 100%',
  wrong1: 'Increased by less than 10%',
  wrong2: 'Increased by 20%',
  wrong3: 'Increased by 50%',
  is_pro: false,
  url: 'http://momentfeed.com/wp-content/uploads/2012/07/business_insider_logo.png')
  
Reason.create(
  topic_id: 2,
  title: 'The majority of unemployed Americans have college degrees',
  url1: 'http://www.businessinsider.com/these-two-charts-prove-a-college-education-just-isnt-worth-the-money-anymore-2012-6',
  score: 23,
  is_approved: true,
  question: 'Given that a certain American is unemployed, are they more likely to be a college graduate or NOT a college graduate?',
  correct: 'More likely to be a college graduate',
  wrong1: 'More likely to NOT be a college graduate',
  wrong2: 'Both equally likely',
  is_pro: false,
  url: 'http://momentfeed.com/wp-content/uploads/2012/07/business_insider_logo.png')

Reason.create(
  topic_id: 2,
  title: 'Higher average career earnings are generally correlated with level of education',
  url1: 'http://usgovinfo.about.com/od/moneymatters/a/edandearnings.htm',
  score: 21,
  is_approved: true,
  question: 'Higher average career earnings are strongly correlated with which factor?',
  correct: 'Level of education',
  wrong1: 'Eye color',
  wrong2: 'Hair color',
  wrong3: 'Obesity',
  is_pro: true,
  url: 'http://old.epilepsyfoundation.org/local/massri/images/about_logo400w_1.gif')

Reason.create(
  topic_id: 2,
  title: 'The average working college graduate earns $80,000 per year',
  url1: 'http://www9.georgetown.edu/grad/gppi/hpi/cew/pdfs/FullReport.pdf',
  score: 22,
  is_approved: true,
  question: 'Approximately how much does the average working college graduate earn per year?',
  correct: '$80,000',
  wrong1: '$57,000',
  wrong2: '$106,000',
  wrong3: '$35,000',
  is_pro: true,
  url: 'http://www.showballbaseball.com/Portals/23/logos/georgetown.gif')

Reason.create(
  topic_id: 2,
  title: 'The average non-college graduate (only a high school diploma) earns about $40,000 per year',
  url1: 'http://www9.georgetown.edu/grad/gppi/hpi/cew/pdfs/FullReport.pdf',
  score: 21,
  is_approved: true,
  question: 'Approximately how much does the average non-college graduate (with high school diploma) earn per year?',
  correct: '$40,000',
  wrong1: '$18,000',
  wrong2: '$98,000',
  wrong3: '$61,000',
  is_pro: true,
  url: 'http://www.showballbaseball.com/Portals/23/logos/georgetown.gif')
 
Reason.create(
  topic_id: 2,
  title: 'Over the course of a career, graduates can earn millions of dollars more than a non-graduate',
  url1: 'http://usgovinfo.about.com/od/moneymatters/a/edandearnings.htm',
  score: 20,
  is_approved: true,
  question: 'Over the course of a career, approximately how much more money does an average college graduate earn than a non-college graduate?',
  correct: 'Over $1 million',
  wrong1: '$500,000',
  wrong2: '$0',
  wrong3: '$100,000',
  is_pro: true,
  url: 'http://old.epilepsyfoundation.org/local/massri/images/about_logo400w_1.gif')

Reason.create(
  topic_id: 2,
  title: "Since college worked out well for the parents of today's prospective college students, they are much more likely to recommend attending college",
  url1: 'http://www.alleydog.com/glossary/definition.php?term=Representative%20Heuristic',
  url2: 'http://en.wikipedia.org/wiki/Status_quo_bias',
  score: 4,
  is_approved: false,
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

#US vs. Finland Education
Topic.create(
  title: "Adopting Finland's Education System",
  score: 3,
  is_approved: true)
  
Reason.create(
  topic_id: 3,
  title: 'In 2008, the US spent approximately $15,000 per student for primary education',
  url1: 'http://www.oecd-ilibrary.org/sites/eag_highlights-2011-en/03/01/index.html;jsessionid=1gcqdsr4ne73e.delta?contentType=&itemId=/content/chapter/eag_highlights-2011-21-en&containerItemId=/content/serial/2076264x&accessItemIds=/content/book/eag_highlights-2011-en&mimeType=text/html',
  score: 20,
  is_approved: true,
  question: 'In 2008, approximately how much did the US spend per student for private education?',
  correct: '$15,000',
  wrong1: '$28,000',
  wrong2: '$3,000',
  wrong3: '$9,000',
  is_intro: true,
  url: 'http://www.oecd-ilibrary.org/images/oecd/normal_page_logo_2010.gif')
 
Reason.create(
  topic_id: 3,
  title: 'In 2008, Finland spent approximately $9,000 per student for primary education',
  url1: 'http://www.oecd-ilibrary.org/sites/eag_highlights-2011-en/03/01/index.html;jsessionid=1gcqdsr4ne73e.delta?contentType=&itemId=/content/chapter/eag_highlights-2011-21-en&containerItemId=/content/serial/2076264x&accessItemIds=/content/book/eag_highlights-2011-en&mimeType=text/html',
  score: 19,
  is_approved: true,
  question: 'In 2008, approximately how much did Finland spend per student for private education?',
  correct: '$9,000',
  wrong1: '$28,000',
  wrong2: '$3,000',
  wrong3: '$15,000',
  is_intro: true,
  url: 'http://www.oecd-ilibrary.org/images/oecd/normal_page_logo_2010.gif')

Reason.create(
  topic_id: 3,
  title: "All education from preschool to university would have to be free to implement Finland's educational system",
  url1: 'http://www.washingtonpost.com/blogs/answer-sheet/post/what-the-us-cant-learn-from-finland-about-ed-reform/2012/04/16/gIQAGIvVMT_blog.html',
  score: 5,
  is_approved: true,
  question: "Approximately how much do Finland's parents pay to send their child to preschool?",
  correct: '$0',
  wrong1: '$9,200',
  wrong2: '$3,700',
  wrong3: '$900',
  is_intro: true,
  url: 'http://www.dcmetrochocolatetours.com/wp-content/uploads/washington_post_logo.jpg')
 
Reason.create(
  topic_id: 3,
  title: "Free comprehensive health care would have to be provided to all students to implement Finland's educational system",
  url1: 'http://www.washingtonpost.com/blogs/answer-sheet/post/what-the-us-cant-learn-from-finland-about-ed-reform/2012/04/16/gIQAGIvVMT_blog.html',
  score: 6,
  is_approved: true,
  question: "Approximately how much do Finland's parents pay for their children's healthcare per year?",
  correct: '$0',
  wrong1: '$4,500',
  wrong2: '$500',
  wrong3: '$2,400',
  is_intro: true,
  url: 'http://www.dcmetrochocolatetours.com/wp-content/uploads/washington_post_logo.jpg')

Reason.create(
  topic_id: 3,
  title: "Schools would have to be guaranteed equal allocation of money to implement Finland's educational system",
  url1: 'http://www.washingtonpost.com/blogs/answer-sheet/post/what-the-us-cant-learn-from-finland-about-ed-reform/2012/04/16/gIQAGIvVMT_blog.html',
  description: "There would be be no more rich or poor schools.",
  score: 7,
  is_approved: true,
  question: "True/False: In Finland, schools are guaranteed equal allocation of money",
  correct: 'True',
  wrong1: 'False',
  is_intro: true,
  url: 'http://www.dcmetrochocolatetours.com/wp-content/uploads/washington_post_logo.jpg')
 
Reason.create(
  topic_id: 3,
  title: "Finland students are consistently ranked in the top 3 for overall academics according to the Program for International Student Assessment (PISA) tests.",
  url1: 'http://online.wsj.com/public/resources/documents/st_PISA1206_20101207.html',
  url2: 'http://en.wikipedia.org/wiki/Programme_for_International_Student_Assessment#2009',
  score: 20,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
 
Reason.create(
  topic_id: 3,
  title: "According to the Education Index, Finland is the #2 ranked country in the world for education",
  url1: 'http://en.wikipedia.org/wiki/Education_Index ',
  score: 19,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 3,
  title: "The PISA rank of US students is barely in the top 20",
  url1: 'http://online.wsj.com/public/resources/documents/st_PISA1206_20101207.html ',
  url2: 'http://en.wikipedia.org/wiki/Programme_for_International_Student_Assessment#2009',
  score: 18,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 3,
  title: "The Education Index rank for the US is #20",
  url1: 'http://en.wikipedia.org/wiki/Education_Index',
  score: 19,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 3,
  title: "Norway and Finland share almost identical ethnic and demographic profiles",
  url1: 'http://www.indexmundi.com/norway/ethnic_groups.html',
  url2: 'http://www.indexmundi.com/finland/demographics_profile.html',
  score: 10,
  is_approved: false,
  is_pro: true,
  url: 'http://www.indexmundi.com/img/logo.gif')
     
Reason.create(
  topic_id: 3,
  title: "Norway's educational system is generally considered to be very similar to the educational system of the US",
  url1: 'http://www.minddump.org/education-policies-not-population-finland-usa',
  score: 11,
  is_approved: false,
  is_pro: true)

Reason.create(
  topic_id: 3,
  title: "Norway and the US are ranked approximately the same for education (around #20), according to the Program for International Assessment (PISA) tests",
  url1: 'http://en.wikipedia.org/wiki/Programme_for_International_Student_Assessment#2009',
  score: 9,
  is_approved: false,
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 3,
  title: "Less than 7% of Finland's population is ethnically not Finnish",
  url1: 'http://www.indexmundi.com/finland/demographics_profile.html',
  score: 15,
  is_approved: false,
  is_pro: false,
  url: 'http://www.indexmundi.com/img/logo.gif')
 
Reason.create(
  topic_id: 3,
  title: "The US population is significantly more diverse, with more than 27% of the US population not being caucasian",
  url1: 'http://en.wikipedia.org/wiki/Demographics_of_the_United_States',
  score: 14,
  is_approved: false,
  is_pro: false,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 3,
  title: "The US population is 60 times larger than Finland's",
  url1: 'http://en.wikipedia.org/wiki/List_of_countries_by_population',
  score: 16,
  is_approved: false,
  is_pro: false,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

#Marijuana
Topic.create(
  title: "Marijuana Legalization",
  score: 5,
  is_approved: true)
  
Reason.create(
  topic_id: 4,
  title: "According to a 2008 Columbia University study, it's easier for a teen to buy marijuana than alcohol",
  description: '23% of teens found marijuana was the easiest illegal substance to buy. 15% found that beer was the easiest substance to buy.',
  url1: 'http://www.casacolumbia.org/templates/PressReleases.aspx?articleid=533&zoneid=66',
  score: 15,
  is_approved: true,
  question: "True/False: According to a 2008 Columbia University study, teens found that it was easier to buy beer than marijuana.",
  correct: 'False',
  wrong1: 'True',
  is_pro: true,
  url: 'http://designarchives.aiga.org/assets/images/000/028/896/28896_lg.jpg')

Reason.create(
  topic_id: 4,
  title: "40% of high school students have tried marijuana",
  description: "According to a 2011 study, approximately 40% of Connecticut high school students have tried marijuana.  Students who were underclassmen or were involved in sports or extracurricular activities were less likely to have tried marijuana.",
  url1: 'http://well.blogs.nytimes.com/2011/03/10/marijuana-use-in-high-school/',
  score: 10,
  is_approved: true,
  question: "Approximately what percent of high school students have tried marijuana?",
  correct: '40%',
  wrong1: '10%',
  wrong2: '20%',
  wrong3: '80%',
  is_intro: true,
  url: 'http://www.technobuffalo.com/wp-content/uploads/2012/08/new-york-times-logo.jpeg')
 
Reason.create(
  topic_id: 4,
  title: "The DEA/FDA classify marijuana as a Schedule 1 drug (no accepted medical use)",
  description: 'A Schedule 1 drug is considered to have a high potential for abuse, no currently accepted medical use in the US, and is generally considered unsafe to use.',
  url1: 'http://en.wikipedia.org/wiki/Controlled_Substances_Act#Schedule_I_controlled_substances',
  score: 9,
  is_approved: true,
  question: "According to the DEA and FDA, what medical use does marijuana have?",
  correct: 'No accepted medical use',
  wrong1: 'Multiple accepted medical uses',
  wrong2: 'Unlimited accepted medical uses',
  wrong3: 'Depends on the US state',
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 4,
  title: "For-profit prisons profit from marijuana prohibition",
  description: "Private, for-profit prisons make more money when they have more inmates.  Their corporations and lobbyists are opposed to reducing arrests, lowering minimum sentencing requirements for non-violent offenders, and increasing early-release programs for good inmate behavior.",
  url1: 'http://www.nakedcapitalism.com/2011/06/matt-stoller-who-wants-keep-the-war-on-drugs-going-and-put-you-in-debtors-prison.html',
  score: 19,
  is_approved: false,
  is_pro: true)
 
Reason.create(
  topic_id: 4,
  title: "According to WebMD, many experts believe that marijuana is physically addictive",
  description: "People quitting marijuana use have reported irritability, sleeping difficulty, craving, anxiety, and depression.",
  url1: 'http://www.webmd.com/mental-health/marijuana-use-and-its-effects',
  score: 14,
  is_approved: false,
  is_pro: false,
  url: 'http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/usability/2012/LBi_Masthead/logo.jpg')

Reason.create(
  topic_id: 4,
  title: "Marijuana is generally believed to be at least psychologically addictive",
  description: "Some marijuana users can feel withdrawal symptoms if they can't get high when they want to.",
  url1: 'http://www.drugabuse.gov/publications/research-reports/marijuana-abuse/marijuana-addictive',
  url2: 'http://www.webmd.com/mental-health/marijuana-use-and-its-effects',
  score: 13,
  is_approved: false,
  is_pro: false,
  url: 'http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/usability/2012/LBi_Masthead/logo.jpg')

Reason.create(
  topic_id: 4,
  title: "Potential long term health risks exist, such as lung cancer and infertility ",
  url1: 'http://www.webmd.com/mental-health/marijuana-use-and-its-effects',
  score: 16,
  is_approved: false,
  is_pro: false,
  url: 'http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/usability/2012/LBi_Masthead/logo.jpg')

Reason.create(
  topic_id: 4,
  title: "Marijuana is believed to possibly impair learning ability",
  url1: 'http://www.acde.org/common/Marijana.htm',
  score: 13,
  is_approved: false,
  is_pro: false,
  url: 'http://www.sunvalley.govoffice.com/vertical/Sites/%7B2C30E796-8326-4746-BE0E-7DC1B5CFDCC7%7D/uploads/%7B5E5B4873-5C4A-4660-A668-FDFBCB46BB47%7D.GIF')

Reason.create(
  topic_id: 4,
  title: "Marijuana is potentially a 'gateway drug' ",
  description: "A gateway drug is a less-dangerous drug that can lead to more dangerous drug-use/crime later in life.  Marijuana is sometimes referred to as a gateway drug.",
  url1: 'http://en.wikipedia.org/wiki/Gateway_drug_theory#Cannabis',
  score: 15,
  is_approved: false,
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
  
Reason.create(
  topic_id: 4,
  title: "Multiple studies indicate that marijuana is a gateway drug",
  description: 'Wikipedia cites multiple examples of studies that support the theory that marijuana is a gateway drug.',
  url1: 'http://en.wikipedia.org/wiki/Gateway_drug_theory#Study_of_Australian_Adolescents_.2810_years.29',
  url2: 'http://en.wikipedia.org/wiki/Gateway_drug_theory#Twin_Study',
  score: 11,
  is_approved: false,
  is_pro: false,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
 
Reason.create(
  topic_id: 4,
  title: "Multiple studies indicate that marijuana is NOT a gateway drug",
  description: "Wikipedia cites multiple examples that indicate marijuana is NOT a gateway drug.",
  url1: 'http://en.wikipedia.org/wiki/Gateway_drug_theory#Studies_not_in_favor_of_the_gateway_theory',
  score: 11,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 4,
  title: "Map of worldwide marijuana legalization",
  url1: 'http://en.wikipedia.org/wiki/File:World-cannabis-laws.png',
  score: 5,
  is_approved: false,
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
 
Reason.create(
  topic_id: 4,
  title: "Driving while high makes you twice as likely to be involved in serious car crash",
  url1: 'http://blogs.scientificamerican.com/observations/2012/02/09/smoke-and-mirrors-driving-while-on-marijuana-doubles-ones-chances-of-a-serious-car-crash/',
  score: 10,
  is_approved: false,
  is_pro: false,
  url: 'http://www.drugabuse.gov/list/2009/issue010images/ScientificAmericanLogo.gif')

Reason.create(
  topic_id: 4,
  title: "Driving at the legal limit for BAC makes you 11 times more likely to be involved in a fatal car crash",
  url1: 'http://alcoholism.about.com/cs/alerts/l/blnaa31.htm',
  score: 10,
  is_approved: false,
  is_pro: true,
  url: 'http://old.epilepsyfoundation.org/local/massri/images/about_logo400w_1.gif')

Reason.create(
  topic_id: 4,
  title: "Texting while driving increases crash risk by 20 times",
  url1: 'http://www.pcmag.com/article2/0,2817,2350843,00.asp',
  score: 9,
  is_approved: false,
  is_intro: true,
  url: 'http://www.market7.com/wordpress/wp-content/uploads/2010/07/pcmag_logo.jpg')

Reason.create(
  topic_id: 4,
  title: "Alcohol is more dangerous for drivers than marijuana",
  url1: 'http://www.slate.com/articles/health_and_science/explainer/2011/11/does_marijuana_make_you_a_more_dangerous_driver_than_alcohol_.html',
  score: 18,
  is_approved: false,
  is_pro: true,
  url: 'http://static01.mediaite.com/med/power-grid/images/affiliates/98/slate-logo_x200.jpg')

Reason.create(
  topic_id: 4,
  title: "States that legalized medical marijuana saw a nearly 9% drop in traffic fatalities",
  description: "The study found that alcohol consumption decreased in states that legalized medical marijuana.  The states also saw a 5% drop in beer sales.",
  url1: 'http://a0.twimg.com/profile_images/1324543229/logo.jpg',
  url2: 'http://ftp.iza.org/dp6112.pdf',
  score: 21,
  is_approved: true,
  question: "According to a 2011 University of Colorado study, states that legalized medical marijuana saw what effect in traffic fatalities?",
  correct: 'Decreased by nearly 9%',
  wrong1: 'Decreased by 2%',
  wrong2: 'Increased by 2%',
  wrong3: 'Increased by nearly 9%',
  is_pro: true,
  url: 'http://a0.twimg.com/profile_images/1324543229/logo.jpg')
 
Reason.create(
  topic_id: 4,
  title: "In 1969, only 16% of Americans favored marijuana legalization",
  url1: 'http://en.wikipedia.org/wiki/Legality_of_cannabis',
  score: 16,
  is_approved: true,
  question: "In 1969, approximately what percent of Americans favored marijuana legalization?",
  correct: '16%',
  wrong1: '52%',
  wrong2: '3%',
  wrong3: '81%',
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 4,
  title: "Prohibition of alcohol in the US completely failed",
  description: "The 18th Amendment (made alcohol illegal, also known as Prohibition) failed so badly that thirteen years later, the 21st Amendment was passed to repeal Prohibition.",
  url1: 'http://en.wikipedia.org/wiki/Prohibition_in_the_United_States',
  score: 22,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 4,
  title: "US economy could save over $10 B/year by legalizing marijuana according to 500 economists, Milton Friedman",
  url1: 'http://economics.about.com/od/incometaxestaxcuts/a/legalize_pot.htm',
  url2: 'http://web.archive.org/web/20110718082820/http://www.prohibitioncosts.org/execsummary.html',
  score: 20,
  is_approved: true,
  question: "According to a letter signed by over 500 economists, approximately how much money could the US economy save by legalizing marijuana?",
  correct: '$10 Billion',
  wrong1: '$130 Billion',
  wrong2: '$300 Million',
  wrong3: '$100 Million',
  is_pro: true,
  url: 'http://old.epilepsyfoundation.org/local/massri/images/about_logo400w_1.gif')

Reason.create(
  topic_id: 4,
  title: "More than 50% of Americans now favor marijuana legalization",
  description: "The Rasmussen poll cited here found that 56% of Americans wanted to see marijuana legalized and regulated like alcohol and tobacco.  36% of polled Americans opposed legalization and regulation.",
  url1: 'http://www.csmonitor.com/USA/2012/0523/Poll-shows-strong-support-for-legal-marijuana-Is-it-inevitable',
  score: 18,
  is_approved: true,
  question: "Approximately what percent of Americans favor marijuana legalization?",
  correct: '50%',
  wrong1: '90%',
  wrong2: '20%',
  wrong3: '5%',
  is_pro: true,
  url: 'http://www.reputation.com/wp-content/uploads/2008/10/csm_logo.jpg')

Reason.create(
  topic_id: 4,
  title: "There are serious life-long consequences for a marijuana conviction or arrest",
  url1: 'http://washington-drug-defense.com/Marijuana_Conviction_or_Arrest',
  url2: 'http://www.mapinc.org/newscsdp/v06/n476/a02.html',
  score: 14,
  is_approved: false,
  is_pro: true)
 
Reason.create(
  topic_id: 4,
  title: "Marijuana is potentially believed to have multiple health benefits",
  url1: 'http://en.wikipedia.org/wiki/Medical_cannabis#Recent_studies',
  score: 5,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 4,
  title: "Richard Nixon is generally credited with starting the drug war and coined the term 'War on Drugs'",
  url1: 'http://en.wikipedia.org/wiki/War_on_Drugs',
  score: 8,
  is_approved: true,
  question: "Which US president is generally credited with starting the drug war and coining the term 'War on Drugs?'",
  correct: 'Richard Nixon',
  wrong1: 'George HW Bush',
  wrong2: 'Barack Obama',
  wrong3: 'Ronald Reagan',
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 4,
  title: "The amount of drug-related prisoners has increased dramatically since the 1970's",
  url1: 'http://en.wikipedia.org/wiki/File:US_incarceration_rate_timeline.gif',
  score: 21,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 4,
  title: "The 2011 Global Commission on Drug Policy is strongly against the war on drugs",
  url1: 'http://en.wikipedia.org/wiki/Global_Commission_on_Drug_Policy',
  score: 18,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 4,
  title: "Former president Jimmy Carter tried to decriminalize marijuana",
  url1: 'http://en.wikipedia.org/wiki/Global_Commission_on_Drug_Policy#Reactions_to_report',
  url2: 'http://www.npr.org/templates/story/story.php?storyId=9252490',
  score: 15,
  is_approved: true,
  question: "Which former US president tried to decriminalize marijuana?",
  correct: 'Jimmy Carter',
  wrong1: 'Richard Nixon',
  wrong2: 'Bill Clinton',
  wrong3: 'Harry Truman',
  is_pro: true,
  url: 'http://yellowedandcreased.files.wordpress.com/2011/10/npr-logo.jpg')
  
Reason.create(
  topic_id: 4,
  title: "17 states plus Washington DC have legalized medical marijuana",
  url1: 'http://en.wikipedia.org/wiki/Removal_of_cannabis_from_Schedule_I_of_the_Controlled_Substances_Act',
  score: 21,
  is_approved: true,
  question: 'In addition to Washington DC, how many states have legalized medical marijuana as of July 2012?',
  correct: '17 states',
  wrong1: '2 states',
  wrong2: '45 states',
  wrong3: '8 states',
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
  
Reason.create(
  topic_id: 4,
  title: "US has 5% of the world's population but 25% of the world's prison population",
  url1: 'http://blogs.reuters.com/bernddebusmann/2011/07/01/the-u-s-drug-war-and-racial-disparities/',
  url2: 'http://www.nytimes.com/2008/04/23/us/23prison.html?pagewanted=all',
  score: 24,
  is_approved: true,
  question: "The US has what percent of the world's prison population (the US has 5% of the world's population)?",
  correct: '25%',
  wrong1: '2%',
  wrong2: '5%',
  wrong3: '60%',
  is_pro: true,
  url: 'http://www.haguejusticeportal.net/Images/Organisations/Media%20Logos/reuters-logo.jpg')
  
Reason.create(
  topic_id: 4,
  title: "African Americans make up a disproportionate amount of drug war prisoners",
  description: "African Americans make up roughly 12% of the US population but account for 37% of state prison inmates serving time for drug related offenses.",
  url1: 'http://blogs.reuters.com/bernddebusmann/2011/07/01/the-u-s-drug-war-and-racial-disparities/',
  score: 14,
  is_approved: false,
  is_pro: true,
  url: 'http://www.haguejusticeportal.net/Images/Organisations/Media%20Logos/reuters-logo.jpg')
  
Reason.create(
  topic_id: 4,
  title: "Presidents Bill Clinton, Obama, and Bush have all used marijuana at least once",
  url1: 'http://www.csmonitor.com/USA/DC-Decoder/2012/0526/President-Obama-smoked-pot-in-high-school.-Why-is-he-against-legalizing-marijuana',
  url2: 'http://www.cato-at-liberty.org/obamas-new-drug-strategy/',
  score: 22,
  is_approved: true,
  question: "Which US president(s) have used marijuana at least once?",
  correct: 'All three of them',
  wrong1: 'Bill Clinton',
  wrong2: 'Barack Obama',
  wrong3: 'George W Bush',
  is_pro: true,
  url: 'http://www.cato.org/images/logo.jpg')

Reason.create(
  topic_id: 4,
  title: "Police unions and lobbyists have a monetary incentive to keep marijuana illegal",
  url1: 'http://www.republicreport.org/2012/exclusive-why-cant-you-smoke-pot-because-lobbyists-are-getting-rich-off-of-the-war-on-drugs/',
  score: 24,
  is_approved: false,
  is_pro: true)

Reason.create(
  topic_id: 4,
  title: "42% of Americans have tried marijuana at least once",
  url1: 'http://www.time.com/time/health/article/0,8599,1821697,00.html',
  score: 19,
  is_approved: true,
  question: "Approximately what percent of Americans have tried marijuana at least once?",
  correct: '42%',
  wrong1: '23%',
  wrong2: '2%',
  wrong3: '11%',
  is_pro: true,
  url: 'http://blog.pandora.com/press/Time_jpeg.jpg')
 
Reason.create(
  topic_id: 4,
  title: "For marijuana possession, African Americans are arrested at 4-12 times the rate of whites",
  url1: 'http://blog.norml.org/2010/10/22/california-study-say-blacks-disproportionately-arrested-for-minor-marijuana-crimes/',
  score: 16,
  is_approved: false,
  is_pro: true,
  url: 'http://www.canorml.org/pix/norml_logo.gif')

Reason.create(
  topic_id: 4,
  title: "Marijuana arrests now comprise more than half of all US drug arrests",
  url1: 'http://blog.norml.org/2011/09/19/marijuana-arrests-driving-americas-so-called-drug-war-latest-fbi-data-shows/',
  score: 25,
  is_approved: true,
  question: "Marijuana arrests account for approximately what percent of all US drug arrests?",
  correct: 'More than 50%',
  wrong1: 'Less than 5%',
  wrong2: '10%',
  wrong3: '25%',
  is_pro: true,
  url: 'http://www.canorml.org/pix/norml_logo.gif')
  
Reason.create(
  topic_id: 4,
  title: "Police made 853,838 arrests in 2010 for marijuana-related offenses",
  url1: 'http://blog.norml.org/2011/09/19/marijuana-arrests-driving-americas-so-called-drug-war-latest-fbi-data-shows/',
  score: 3,
  is_approved: true,
  question: "In 2010, approximately how many US arrests were for marijuana-related offenses?",
  correct: '4,400,000',
  wrong1: '12,000,000',
  wrong2: '850,000',
  wrong3: '120,000',
  is_intro: true,
  url: 'http://www.canorml.org/pix/norml_logo.gif')
 
Reason.create(
  topic_id: 4,
  title: "The 1937 laws first criminalizing marijuana were not based on medical evidence and likely due to corruption",
  url1: 'http://en.wikipedia.org/wiki/Marihuana_Tax_Act_of_1937#Background',
  score: 15,
  is_approved: false,
  is_pro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

#Electoral College
Topic.create(
  title: "Electoral College",
  score: 1,
  is_approved: true)
  
Reason.create(
  topic_id: 5,
  title: "Non-swing states are practically ignored in presidential elections",
  description: "Both in terms of candidate visits and money spent on advertising, swing states are given majorly disproportionate attention relative to non-swing states.",
  url1: 'http://en.wikipedia.org/wiki/Swing_state',
  score: 5,
  is_approved: false,
  is_pro: false,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
 
Reason.create(
  topic_id: 5,
  title: "Relative to their population size, small states are given disproportionate power by the electoral college",
  url1: 'http://www.fairvote.org/problems-with-the-electoral-college/#.UEd02KSe6k0',
  score: 8,
  is_approved: false,
  is_intro: true,
  url: 'http://www.stoptoptwo.org/wp-content/themes/wptobin/images/logo-fairvote-70x75.jpg')

Reason.create(
  topic_id: 5,
  title: "It is exceptionally unlikely for a 3rd party candidate to win a presidential election",
  description: "The last time a third-party candidate won any electoral votes was 1968.  ",
  url1: 'http://en.wikipedia.org/wiki/United_States_presidential_election,_1968',
  url2: 'http://en.wikipedia.org/wiki/List_of_third_party_performances_in_United_States_elections#1968.2A',
  url3: 'http://www.thedailybeast.com/articles/2011/12/03/drop-the-fantasy-of-a-third-party-candidate-winning-in-2012.html',
  score: 10,
  is_approved: false,
  is_pro: false,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 5,
  title: "The founding fathers did not intend for American politics to have political parties",
  url1: 'http://en.wikipedia.org/wiki/Political_parties_in_the_United_States#History',
  url2: 'http://www.politicalstrategy.org/policy/electoralcollege.htm',
  score: 11,
  is_approved: false,
  is_pro: false,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')
 
Reason.create(
  topic_id: 5,
  title: "There have been more proposed Constitutional amendments to get rid of the electoral college than on any other subject",
  description: "None of the amendments have been passed by Congress.  Over 700 proposals have been introduced to reform or eliminate the electoral college",
  url1: 'http://www.archives.gov/federal-register/electoral-college/faq.html#changes',
  score: 15,
  is_approved: false,
  is_intro: true,
  url: 'http://blog.eogn.com/.a/6a00d8341c767353ef0134851e8c29970c-320wi')
 
Reason.create(
  topic_id: 5,
  title: "A vote from a Wyoming resident is worth way more than a vote from a Texas resident",
  description: "In 2008, Wyoming had one electoral vote for every 178,000 state residents.  Conversely, Texas had one electoral vote for every 715,000 state residents.",
  url1: 'http://www.fairvote.org/problems-with-the-electoral-college/#.UEd02KSe6k0',
  score: 14,
  is_approved: true,
  question: "In electoral vote terms, a single vote from a Wyoming resident is worth roughly how many votes from a Texas resident?",
  correct: '4.0 Texas resident votes',
  wrong1: '1.5 Texas resident votes',
  wrong2: '1.0 Texas resident vote',
  wrong3: '2.1 Texas resident votes',
  is_pro: false,
  url: 'http://www.stoptoptwo.org/wp-content/themes/wptobin/images/logo-fairvote-70x75.jpg')

Reason.create(
  topic_id: 5,
  title: "Former US Presidents Gerald Ford, Jimmy Carter, Richard Nixon, and Lyndon Johnson all support the abolishment of the electoral college",
  description: "Other notable opponents of the electoral college include Hillary Clinton, Dick Durbin, Bob Dole, Al Gore, and the American Bar Association.",
  url1: 'http://spot.colorado.edu/~mcguire/alternatevoting.htm',
  url2: 'http://news.google.com/newspapers?nid=348&dat=19690930&id=L5BOAAAAIBAJ&sjid=3EMDAAAAIBAJ&pg=1650,3850175',
  url3: 'http://www.oocities.org/dave_enrich/ctd/endorse.html',
  score: 13,
  is_approved: true,
  question: "Which former US president(s) supported the abolishment of the electoral college?",
  correct: 'All of these presidents',
  wrong1: 'Jimmy Carter',
  wrong2: 'Richard Nixon',
  wrong3: 'Gerald Ford',
  is_pro: false)

Reason.create(
  topic_id: 5,
  title: "Four US presidents won the presidential election without winning the popular vote",
  description: "John Quincy Adams (1824), Rutherford B Hayes (1876), Benjamin Harrison (1888), and George W Bush (2000).",
  url1: 'http://americanhistory.about.com/od/uspresidents/f/pres_unpopular.htm',
  score: 12,
  is_approved: true,
  question: "As of September 2012, how many US presidents have won the presidential election without winning the popular vote?",
  correct: 'Four',
  wrong1: 'Eight',
  wrong2: 'Two',
  wrong3: 'One',
  is_intro: true,
  url: 'http://old.epilepsyfoundation.org/local/massri/images/about_logo400w_1.gif')
 
Reason.create(
  topic_id: 5,
  title: "A constitutional amendment requires a 2/3 Congressional vote and ratification by 75% of the states",
  url1: 'http://usgovinfo.about.com/od/usconstitution/a/conshttp://archive.fairvote.org/?page=2052tamend.htm',
  score: 4,
  is_approved: true,
  question: "The ratification of a constitutional amendment requires a vote from what percent of the states?",
  correct: '75%',
  wrong1: '50%',
  wrong2: '66%',
  wrong3: '100%',
  is_intro: true,
  url: 'http://old.epilepsyfoundation.org/local/massri/images/about_logo400w_1.gif')

Reason.create(
  topic_id: 5,
  title: "Swing states have similar voter-turnout numbers as non-swing states",
  description: "Some have argued that non-swing states will feel politically disenfranchised, yet these states show similar voter turnout numbers as swing states.",
  url1: 'http://elections.gmu.edu/Turnout_2008G.html',
  url2: 'http://www.statemaster.com/graph/gov_200_tot_vot_as_per-2004-election-total-votes-percentage',
  score: 8,
  is_approved: false,
  is_pro: true)
 
Reason.create(
  topic_id: 5,
  title: "According to a 2011 Gallup poll, 62% of Americans want to abolish the electoral college",
  url1: 'http://www.gallup.com/poll/150245/americans-swap-electoral-college-popular-vote.aspx',
  score: 11,
  is_approved: true,
  question: "According to a 2011 Gallup poll, approximately what percent of Americans want to abolish the electoral college?",
  correct: '62%',
  wrong1: '5%',
  wrong2: '15%',
  wrong3: '37%',
  is_pro: false,
  url: 'http://3.bp.blogspot.com/_sW65ilskOC8/SxfUo8ICSJI/AAAAAAAAcUc/-8zYHrEHPh4/s400/GallupPollLogo.jpg')

Reason.create(
  topic_id: 5,
  title: "Senators used to be elected by non-direct elections until the passage of the 17th amendment",
  description: "Prior to 1913, Senate elections were not directly elected by the people.  Instead, state legislatures elected senators to represent the state.  The passage of the 17th amendment changed the election method to a direct election.",
  url1: 'http://en.wikipedia.org/wiki/Seventeenth_Amendment_to_the_United_States_Constitution',
  score: 8,
  is_approved: false,
  is_intro: true,
  url: 'http://upload.wikimedia.org/wikipedia/en/thumb/8/80/Wikipedia-logo-v2.svg/220px-Wikipedia-logo-v2.svg.png')

Reason.create(
  topic_id: 5,
  title: "The founding fathers did not trust direct democracy",
  url1: 'http://www.factcheck.org/2008/02/the-reason-for-the-electoral-college/',
  score: 12,
  is_approved: false,
  is_pro: true,
  url: 'http://thepoliticalcarnival.net/wp-content/uploads/2012/01/fact-check-logo-hog-lg-300x234.jpg')