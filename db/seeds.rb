# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.delete_all
User.create([
              {admin: true, email: 'admin@admin.com', password: "admin123"}
])

Category.delete_all
Category.create([
  {name: 'Consumer Financial Education', description: '<u>Consumer Financial Education</u>- includes all forms of one-on-one, small group, and workshop activities to help clients meet financial goals. Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'},
  {name: 'Benefits and Work Supports', description: '<u>Benefits and Work Supports</u>- Organizations that provide services in <strong>Benefits and Work Supports</strong> help clients enroll in public benefits (e.g. food stamps) and obtain services (e.g. childcare) that will assist them and their families to address barriers to financial stability and success. Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'},
  {name: 'Employment', description: '<u>Employment</u>- Organizations that provide <strong>Employment</strong> activities and services may assist clients in all phases of pre-employment, finding and retaining good jobs with sustainable wages and benefits. Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'},
  {name: 'Debt and Credit Repair', description: '<u>Debit and Credit Repair</u>- services address hurdles in a client\'s financial standing and strategically plan for ways to address those challenges. Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'},
  {name: 'Asset Building and Investments', description: '<u>Asset Building and Investments</u>- activities help clients grow their incomes and plan for the future.  Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'},
  {name: 'Housing', description: '<u>Housing</u>-  services will assist clients at each phase of their housing needs from low-income rental to homeownership preservation.  Homeless clients should be referred to agencies engaging in <a href="resourceDir.php?srvGrpID=2">Social Services</a>. Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'},
  {name: 'Legal', description: '<u>Legal</u>- These organizations provide free or low-cost <strong>Legal</strong> advocacy and representation. Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'},
  {name: 'Community Financial Advocacy', description: '<u>Community Financial Advocacy</u>- activities include information, trainings, and opportunities on policies, practices, and systems that affect client\'s lives. Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'},
  {name: 'Banking and Saving Products', description: '<u>Banking and Saving Products</u>- support will provide clients with the tools to obtain and manage the financial products and services that will best fit their needs. Please see the <a href="glossary.shtml">glossary</a> for definitions of specific activities.'}  
])

Organization.delete_all
Organization.create([
  { name: 'Game Theory Academy', address: '337 17th St. #101', city: 'Oakland', zipcode: '94612', phone: '(510)459-0938', website: 'http://www.gametheoryacademy.org', email: 'trish@gametheoryacademy.org', population: 'Youth ages 16-22', description: 'Game Theory Academy (GTA) has a mission to improve the economic decision making skills of at-risk, low-income youth who have experienced probation, foster care or homelessness. To achieve this, we partner with existing youth agencies to provide a unique, complementary program that few have the capacity to offer. Since January 2009, we have reached 265 youth with GTA''s transformative decision-making toolkit and financial mentorship, working with foster youth housing facilities, libraries, arts programs, tutoring centers and juvenile halls.'},
  {name: 'Housing Rights Inc', address: '1966 San Pablo Ave', city: 'Berkeley', zipcode: '94710', phone: '(510)548-8776', website: 'www.housingrights.org', email: 'hri@housingrights.com', population: 'Northern Alameda County', description: 'TEST Our mission is to fight for equal access to housing for everyone by eliminating barriers to housing choice such as discrimination, sub-standard housing, ignorance, apathy and malice in order to eradicate illegal housing discrimination, prevent evictions/foreclosures and encourage diversity in our neighborhoods.\r\n\r\nWe do this by assisting individuals in exercising their housing rights to obtain and maintain the home of their choice and by promoting understanding by tenants and landlords, housing consumers and housing providers of their rights and responsibilities through housing rights counseling/advocacy, education, outreach, investigation, mediation, self-advocacy, legal referrals and enforcement of fair housing laws.\r\n', goal_1: 'Help people become successful renters and homeowners', goal_2: 'Prevent evictions and foreclosures', goal_3: 'Eliminate discrimination', goal_4: 'Encourage diversity in our communities.'},
  { name: 'Davis Street Family Resource Center', address: '3081 Teagarden Street', city: 'San Leandro', zipcode: '94577', phone: '(510)347-4620', website: 'www.davisstreet.org', email: 'tmcgill@davisstreet.org', population: 'Residents of Alameda County', description: 'The Mission of the Davis Street Family Resource Center (DSFRC) is to help people with low income of the Eden area and its surrounding communities improve their quality of life through short and long-term assistance.'},
  { name: 'Healthy Oakland', address: '2572-2580 San Pablo Avenue', city: 'Oakland', zipcode: '94612', phone: '(510)444-9655', website: 'http://www.healthycommunities.us', email: 'rlankforde@gmail.com', population: 'Re-Entry (Both Men & Women)\r\nChildren (Foster & Adoption)\r\nLow-Income' },
  { name: "Community Child Care Coordinating Council (4C's) of Alameda County", address: '22351 City Center Dr., Suite 150', city: 'Hayward', zipcode: '94541', phone: '(510)582-2182', website: 'www.4c-alameda.org', email: '4c@4c-alameda.org', population: 'Alameda County', description: "As a private, non-profit organization since 1972, we are part of the California Child Care Resource and Referral Network of agencies dedicated to children and families in their communities.\r\n\r\n4C''s is the state-designated Resource and Referral agency for southern Alameda County and your one-stop resource to finding quality and affordable child care. We also assist child care professionals to develop healthy, safe, and nurturing environments that are both educational and fun. Our vision is to be recognized as a model for providing exemplary services to our diverse community of children, families, and child care professionals.\r\n\r\n4C''s multicultural staff and volunteers are committed to proactive and innovative services supporting our mission to develop and coordinate resources to strengthen families and children. Our resource and referral services are free to all parents, regardless of income.", goal_1: 'Meeting Child Care Needs in Southern Alameda County', goal_2: 'Providing Free Training, Assistance, Resources, and Support for Child Care Service Providers.'},
  { name: 'Elev8 Safe Passages', address: '250 Frank H Ogawa Plaza', city: 'Oakland', zipcode: '94612', phone: '(510)238-6368', website: 'www.safepassages.org/default.asp', email: 'aperez@oaklandnet.com', population: 'Alameda County Residents', description: 'Safe Passages is an inter-governmental partnership including the City of Oakland, the County of Alameda, the Oakland Unified School District (OUSD), philanthropy and community-based partners that is committed to advocating for children, youth, and families with a special emphasis on vulnerable populations within the County of Alameda.'},
  { name: 'The Unity Council', address: '1900 Fruitvale Ave. Suite 2A', city: 'Oakland', zipcode: '94601', phone: '(510)535-6900', website: 'www.unitycouncil.org', email: 'unitycouncil@unitycouncil.org', population: 'Low-income residents of Alameda County', description: 'To help families and individuals build wealth and assets through comprehensive programs of sustainable economic, social and neighborhood development.'},
  { name: 'SACDC', address: '2228 E 15TH Street', city: 'Oakland', zipcode: '94606', phone: '(510) 536-1715', website: 'http://sacdc.org', email: 'ltcloud@sbcglobal.net', population: 'San Antonio neighborhood and greater Oakland.', description: 'The mission of the San Antonio Community Development Corporation is to empower our community, improve the quality of life, and promote dynamic economic and social change.'},
  { name: 'Federal Deposit Insurance Corporation', address: '25 Jessie St. at Ecker Square', city: 'San Francisco', zipcode: '94105', phone: '(415) 546-1460', website: 'http://www.fdic.gov', email: 'http://www2.fdic.gov/starsmail/index.asp'},
  { name: 'Fremont Family Resource Center', address: '39155 Liberty Street Ste. A110', city: 'Fremont', zipcode: '94538', phone: '(510) 574-2000', website: 'http://www.fremont.gov/Community/familyresourcenter', email: 'frc@ci.fremont.ca.us', population: 'Families living in the Tri-City area of southern Alameda County: Fremont, Union City and Newark ', description: 'The Fremont Family Resource Center (FRC) is a welcoming place where families and individuals are nurtured, encouraged, and provided quality services to build on their own strengths to help themselves and others.', goal_1: 'Meeting the needs of families, focusing on family strengths;\r\n\r\nProviding families with information and access to services that strengthen family and community life; assisting families to become economically self sufficient;', goal_2: 'Strengthening collaboration and connection among agencies to better serve families;\r\n\r\nProviding a visible community presence for action on behalf of families;\r\n\r\nAdvocating for a healthy community for children and families; and', goal_3: 'Supporting cultural sensitivity and diversity.'},
  { name: 'Centro Legal de la Raza', address: '2501 International Blvd', city: 'Oakland', zipcode: '94601', phone: '(510) 437-1554', website: 'http://www.centrolegal.org', email: 'info@centrolegal.org'},
  { name: 'Tri-Valley Housing Opportunity Center', address: '20-A South L Street', city: 'Livermore', zipcode: '94550', phone: '(925) 373-3930', website: 'www.tvhoc.org', email: 'jorge@tvhoc.org', description: 'The Tri-Valley Housing Opportunity Center is a non-profit education center working to promote homeownership education and rental opportunities in the Tri-Valley.', goal_1: 'The Tri-Valley Housing Opportunity Center provides information regarding private sector lender programs, funding resources and homebuyer pre and post purchase education- helping match those in need with programs and services that benefit them most.', goal_2: 'Working regionally, the Center provides a one-stop-shop reaching over 260,000 people in the Tri-Valley region. The Center offers a comprehensive counseling and education program that will expand opportunities and increase homeownership in the Tri-Valley region.', goal_3: 'Goals: \r\n1) Build strong families and communities through financial education and the creation of homeownership opportunities.\r\n\r\n2) Help prospective homebuyers and renters   overcome common barriers to finding stable and affordable housing.\r\n\r\n3) Assist in the Marketing and resale of Below-Marke-Rate ownership units.'},
  {name: 'Urban Strategies Council', address: '672 13th St', city: 'Oakland', zipcode: '94612', phone: '(510) 893-2404', website: 'www.urbanstrategies.org', email: 'admindesk@urbanstrategies.org', population: 'Urban Strategies Council works primarily in the Bay Area. The Council\'s approach to its support work is focused on working with community stakeholders to build strategies and capacities (including our own) for effective collective action.  The Council works to build partnerships and alliances across a wide array of community interests.  At the same time, the Council takes leadership in identifying issues that impact urban communities, building understanding of the issues and crafting agenda for addressing those issues.', description: 'To eliminate persistent poverty by working with partners to transform low-income neighborhoods into vibrant, healthy communities.', goal_1: 'Urban Strategies Council is a community building support and advocacy organization located in Oakland, California. Founded as a non-profit organization in 1987, the Council works with stakeholders in low-income communities, community-based organizations, and public systems to expand services for children and families, improve health, educational and other outcomes, and increase employment and economic opportunities.'},
  { name: 'Anew America Community Corporation', address: '1918 University Ave', city: 'Berkeley', zipcode: '94704', phone: '(510) 540-7785', website:  'http://www.anewamerica.org', email: 'info@anewamerica.org', population: 'Anew America Community', description: 'AnewAmerica\'s mission is to promote the long-term economic empowerment of new Americans - new citizens, immigrants, and refugees - and to encourage their full participation in the political, social and cultural growth of America.', goal_1: 'To create networks of access to markets available to newly immigrated Americans, as a means to build greater equity in our society.', goal_2: 'Personal and economic empowerment, along with social and political empowerment, to allow new Americans to enrich this country and their communities', goal_3: 'New America works with microentrepreneurs to build their businesses, our model guides them to discover ways to better their communities, the environment and the global society'},
  { name: 'Alameda County Community Food Bank', address: '7900 Edgewater Drive', city: 'Oakland', zipcode: '94621', phone: '(510) 635-3663', website: 'www.accfb.org', email: 'outreach@accfb.org', population: 'Low-income Alameda County residents.', description: 'To alleviate hunger by providing nutritious food and nutrition education to people in need, educating the public, and promoting public policies that address hunger and its root causes. ', goal_1: '\r\nProvide food to 300 community agencies that serve on-site meals and/or food bags for their clients ', goal_2: 'Distribute bags of food to school children in need. Distribute fresh fruits and vegetables several times a week to member agencies.', goal_3: 'Operate a toll-free emergency food helpline that makes over 2,000 referrals each month, conduct food stamp enrollment clinics and provide application assistance for federal nutrition programs.', goal_4: 'Educate the community and public officials about the causes of hunger and poverty'},

  { name: 'Alameda County Social Services'},

  { name: 'EARN and the Asset Policy Initiative of California (APIC)', address: '235 Montgomery Street, Suite 300', city: 'San Francisco', zipcode: '94104', phone: '(415) 217-3660', website: 'www.sfearn.org; www.assetpolicy.org', email: 'jill@sfearn.org', population: 'Low wage workers at 200% and below of federal poverty guidelines.', description: 'EARN breaks the cycle of poverty by matching the savings of low-wage workers and helping them invest in assets that build wealth, creating a cycle of prosperity across generations.  EARN is a nationally-recognized, award-winning pioneer, engaging low-wage workers, businesses, policymakers, and other nonprofits in its efforts to fulfill its three core promises:', goal_1: '1. Empower low-wage workers in the Bay Area to escape poverty permanently through asset building products and services;\r\n', goal_2: '2. Create, demonstrate, and evaluate innovative asset-building practices that can be replicated on a large scale; and\r\n', goal_3: '3. Champion state and local asset-building policies that enable all families to accumulate, leverage and preserve assets that will grow our state\'s economy '},

  { name: 'Federal Reserve Bank of San Francisco', address: '101 Market Street', city: 'San Francisco', zipcode: '94105', phone: '(415) 974-2765', website:  'www.frbsf.org/community', email: 'sf.communityaffairs@sf.frb.org', population: 'nonprofits and financial institutions that provide community development and mainstream financial services in underserved communities and for low- and moderate-income individuals', description: 'Support the economic growth objectives of the Federal Reserve Act by promoting community development and fair and equal access to credit\r\n', goal_1: 'Help banks to comply with Community Reinvestment Act \r\n', goal_2: 'Facilitate partnerships that promote and support community development activities\r\n', goal_3: 'Increase awareness about emerging issues and trends that affect low- and moderate-income communities\r\n'},

  { name: 'One California Bank', address: '1438 Webster Street', city: 'Oakland', zipcode: '94612', phone: '(510) 663-2253', website: 'www.onecalfoundation.org', email: 'slindsay@onecalfoundation.org', population: 'OneCalifornia Foundation sponsors checking and savings accounts at OneCalifornia Bank, that are offered free of charge to low-income individuals participating in our financial literacy programs. We also offer bank accounts and financial education to support various matching savings programs, administered by our partner non-profit organizations. We provide several resources for business owners, aspiring entrepreneurs and local artists. ', description: 'OneCalifornia Foundation engages in charitable and educational activities that primarily support OneCalifornia Bank\'s community development mission and activities. Included are programs and sponsorships to increase financial literacy, stimulate community development, help eliminate discrimination, encourage affordable housing, and alleviate economic distress in disadvantaged communities throughout California.\r\nOneCalifornia Foundation believes that financial knowledge and sound financial practices can contribute profoundly to wealth creation, community development, and self-sufficiency. ', goal_1: 'OneCalifornia believes that effective community development depends on businesses, government, and non-profits working together for change. We actively work with these three sectors to enhance their activities and help reach their constituencies. We achieve this with programs and products to improve economic opportunity in low- to moderate-income communities.\r\n', goal_2: 'Our financial literacy training programs help people attain fair banking services, and basic bank account and money management skills.\r\nOur banking initiatives, in association with OneCalifornia Bank, help individuals and families manage their accounts, grow their savings and achieve greater financial power and freedom.', goal_3: 'Our Oakland Unwrapped! Online Marketplace provides entrepreneurs and artists technology to run their own e-commerce website, as well as creates demand for their goods and services from the local community.  \r\n\r\nOur Annual Oakland Indie Awards program educates the community on the economic, social, and environmental impact of supporting local independent businesses and artists, while rewarding and celebrating these important community contributors.  \r\n\r\nOur trainings and events help local businesses and artists to learn marketing and technology skills, gain access to community resources, and discover new ways to incorporate social and environmental responsibility into their workplaces and lives.', goal_4: 'Our financial literacy classes are offered Tuesday at 9:30-11:30, 12:30-2:30, and 4:30-6:30.  To register for a class, contact Andrea Walker at 510-663-2253.\r\n\r\nTo learn more about Oakland Unwrapped, visit www.oaklandunwrapped.org.\r\n\r\nTo learn more about the Indie Awards, visit www.oaklandunwrapped.org/indies.\r\n'},
  { name: 'Peoples Federal Credit Union, a division of Self-Help FCU', address: '1432 7th Street', city: 'Oakland', zipcode: '94607', phone: '(510) 267-0450', website: 'www.peoplesfederalcu.org/', email: 'saylae@peoplesfederalcu.org', population: 'Low-income, unbanked and underbanked individuals', description: 'Creating and protecting ownership and economic opportunity for people of color, women, rural residents and low-wealth families and communities.'},
  { name: 'UWBA Earn It Keep It Save It Campaign', address: '1970 Broadway, Suite 600', city: 'Oakland', zipcode: '94612', phone: '(510) 238-2418', website: 'www.earnitkeepitsaveit.org', email: 'vita@uwba.org', population: 'Not a direct service provider. EKS leads coalitions serving low to moderate income working individuals and families with tax preparation and other wealth building opportunities.' },
  { name: 'Workforce Collaborative', address: '1433 Webster St', city: 'Oakland', zipcode: '94612' },
  { name: 'California Reinvestment Coalition', address: '474 Valencia Street, #230', city: 'San Francisco', zipcode: '94103', phone: '(415) 864-3980', website: 'http://www.calreinvest.org', email: 'crc@calreinvest.org'},
  { name: 'East Bay Asian Local Development Corporation', address: '310 8th Street Suite 200', city: 'Oakland', zipcode: '94607', phone: '(510) 287-5353', website: 'http://www.ebaldc.org', email: 'cfong@ebaldc.com', population: 'Low income individuals and families.', description: 'East Bay Asian Local Development Corporation is a community development corporation that develops affordable housing and community facilities with integrated services focused on tenants and neighborhood residents, with emphasis on Asian Pacific Islanders communities and the diverse low income populations of the East Bay.'},
  { name: 'Community Financial Resources', address: '771 Euclid Avenue', city: 'Berkeley', zipcode: '94708', phone: '(510) 559-8638', website: 'http://www.communityfinancialresources.net', email: 'leon@communityfinancialresources.net', population: 'Unbanked and underbanked low-income households and the community based organizations, goverment entities, and social service agencies that support them.', description: 'To provide financial tools for economically disadvantaged families, assist financial service providers in offering consumer friendly products to low-income households, and build the capacity of community organization and social service agencies to provide money mangement and asset-building strategies to their constituents.', goal_1: 'Set new standards for best practices in the financial services industry by designing and coordinating the delivery of inexpensive, reliable products accessible to low wage working families deprived of the financial toold for basic asset building.', goal_2: 'Improve the effectiveness of direct service providers working on poverty alleviation and financial self-sufficiency by creating more options to assist families.', goal_3: 'Enhance community development and social service organizations community outreach efforts by allowing them to offer much needed financial products and services.', goal_4: 'Provide financial service industry market research to identify opportunties for social entrepreneurship.'},
  { name: 'Catholic Charities of the East Bay', address: '433 Jefferson St', city: 'Oakland', zipcode: '94607', phone: '(510) 768-3100', website: 'www.cceb.org', email: 'mail@cceb.org', population: 'Low-income individuals and families', description: 'Directed by our Faith, Catholic Charities lifts people out of poverty by promoting self-sufficiency, strengthening families, and supporting safe and just communities.'},
  { name: 'OCAP', address: '150 frank H Ogawa Plaza #4340', city: 'Oakland', zipcode: '94612', phone: '(510)238-2362', website: 'http://www.oaklandhumanservices.org/initiatives/OCAP/index.htm ', email: 'ocap@oaklandnet.com', population: 'Oakland Residents', description: 'To assure all citizens of Oakland equal and fair access to resources, which will produce a healthy, safe, clean, educated and economically sound, productive community, respecting their rights and values.', goal_1: 'Low-income people become more self-sufficient', goal_2: 'The conditions in which low-income people live are improved (community)', goal_3: 'Low-income people own a stake in their community (community', goal_4: 'Low-income people, especially vulnerable populations, achieve their potential by strengthening family and other supportive systems'},
  { name: 'Oakland Municipal Credit Union', address: '140 Frank Ogawa Plaza #6301', city: 'Oakland', zipcode: '94612', phone: '(510)637-6600', website: 'http://www.omcu.com/', email: 'trabb@omcu.com', population: 'Oakland residents, employers, employees and those that worship in Oakland.', description: 'Help Our Members Achieve Their Financial Dreams'},
  { name: 'Operation Hope', address: '3062 East 9th Street', city: 'Oakland', zipcode: '94601', phone: '(510)535-6700', website: 'http://www.operationhope.org/smdev/', email: 'hcoakland@operationhope.org', population: 'Oakland Residents', description: 'Through a series of public/private partnerships and strategic alliances, HOPE has developed and implemented programs focused on connecting the minority community with mainstream, private sector resources, and empowering under-served communities. While HOPE is actively and directly involved in the communities it serves, the long range programmatic objective of HOPE is to literally \"drive itself out of business.\" HOPE desires to slowly transition out of direct program management, in areas such as lending, replacing the nonprofit with private sector providers. Further, HOPE desires to increase its direct support and involvement with community based non-profit organizations. HOPE brings together, under one organizational umbrella, some of the most talented, experienced and successful individuals that America has to offer, both from the minority and mainstream community.'},
  { name: 'Brighter Beginnings', address: '2648 International Boulevard', city: 'Oakland', zipcode: '94601', phone: '(877)427-7134', website: 'www.brighter-beginnings.org', email: 'jcosenza@brighter-beginnings.org', population: 'Low-income families in Alameda and Contra Costa counties.', description: 'Brighter Beginnings reaches out to families in need, providing home-based support and center-based services to promote healthy births, child development and overall family health. Each year the organizations serves over 2,600 low-income families in Alameda and Contra Costa Counties. Brighter Beginnings believes that every family matters, and every child deserves the chance for a happy, healthy future.'},
  { name: 'Cooperative Center Federal Credit Union', address: '2001 Ashby Avenue', city: 'Berkeley', zipcode: '94703', phone: '(510)845-6428', website: 'www.coopfcu.org', email: 'dcrowson@coopfcu.org', population: 'We serve students on the UC Berkeley campus as well as employees of Select Employer Groups.  Some of our largest Select Employers groups are Alta Bates Summit Medical Center and Truitt & White.  We actively participate in the Berkeley Chamber of Commerce and those affilated with the chamber can also join our credit union.', description: 'Cooperative Center Federal Credit Union, a member owned and governed financial institution, is committed to providing quality services and education in a caring, responsible, professional manner, while maintaining long-term financial strength.', goal_1: 'At CCFCU, our goal is to be the members\' primary resource for financial services and education to attain their economic goals.'},
  { name: 'Alameda County Public Health Department', address: '1000 Broadway Suite 500', city: 'Oakland', zipcode: '94607', phone: '(510)267-8000', website: 'www.acphd.org', email: 'bina.patel@acgov.org', population: 'Residents of Alameda County', description: 'The mission of the Alameda County Public Health Department is to work in partnership with the community to ensure the optimal health and well being of all people through a dynamic and responsive process respecting the diversity of the community and challenging us to provide for present and future generations.'},
  { name: 'Lao Family Community Development Inc', address: '2325 E. 12th Street', city: 'Oakland', zipcode: '94601', phone: '(510)533-8850', website: 'http://www.lfcd.org', email: 'kchao@lfcd.org', population: 'low and moderate income', description: 'Lao Family Community Development, Inc. (LFCD) assists Southeast Asian, refugee, diverse immigrant, limited English, and low-income U.S. born community members in achieving long-term financial and social self-sufficiency. We encourage our community members to establish goals, believe in themselves, and become active, contributing members of society.'},
  { name: 'Center For Neighborhood Technology', address: '731 Market Street', city: 'San Francisco', zipcode: '94103', phone: '(415)644-0877', website: 'http://www.cnt.org/', email: 'info@cnt.org', population: 'Urban communities nation wide', description: 'Since 1978, Center for Neighborhood Technology (CNT) has been a leader in promoting urban sustainability - the more effective use of existing resources and community assets to improve the health of natural systems and the wealth of people, today and in the future.\r\n\r\nCNT is a creative think-and-do tank that combines rigorous research with effective solutions. CNT works across disciplines and issues, including transportation and community development, energy, natural resources, and climate change.', goal_1: 'Researching urban problems to build knowledge through tools and activities that change how residents, policymakers, and market actors respond to issues such as efficient use of resources, strategies for reducing pollution, or ways to improve public transportation. Our studies are readily available for use by residents, policymakers, students, and other researchers.', goal_2: 'Building coalitions to advocate for public policies that can help address urban sustainability issues.', goal_3: 'Designing, developing, and operating economic development demonstration projects to address urban sustainability in innovative ways.'},
  { name: 'Community Check Cashing', address: '3411 East 12th Street Suite 124', city: 'Oakland', zipcode: '94601' },
  { name: 'Eden I & R Inc', address: '570 B Street', city: 'Hayward', zipcode: '94541', phone: '(510)537-2710 ', website: 'http://www.211alamedacounty.org/', email: 'info@edenir.org', population: 'Alameda County Residents', description: 'We believe that all individuals are entitled to fully utilize all community resources for which they are eligible.\r\n\r\nWe believe that optimum utilization of these resources can substantially enhance the quality of life in the community.\r\n\r\nWe believe that access to those resources is often limited by lack of awareness of their existence.\r\n\r\nTherefore, this Agency commits itself to serve as a link between individuals and the full range of community resources available to them. We dedicate the Agency\'s resources to the empowerment of individuals through dissemination of timely and accurate information on how to access community resources.'}
])

Service.delete_all
Service.create([
  {name: 'Identity Theft Issues'},
  {name: 'Financial Education and Management', description: 'Group or one-on-one education on financial best-practices and money management techniques'},
  {name: 'Financial Counseling and Planning', description: 'Review of financial situation and any employment, immigration, legal, or family matters affecting such situation and requiring assistance. One-on-one or small group counseling, problem-solving and planning to help meet client''s financial goals'},
  {name: 'Basic Budgeting', description: 'Creating individual and family budgets to help maximize income, meet payment obligations, and save money'},
  {name: 'Banking Product Training', description: 'Assistance and support in the use of banking products such as pre-paid debit cards, checking accounts, savings accounts, and credit products'},
  {name: 'Checking Account Enrollment'},
  {name: 'Savings Account Enrollment'},
  {name: 'Pre-Paid Debit Card Enrollment'},
  {name: 'Low-interest Loan Enrollment'},
  {name: 'Other'},
  {name: 'Benefits Enrollment', description: 'Assistance with and enrollment in income support programs such as Food Stamps, Medi-Cal, and the self-sufficiency calculator'},
  {name: 'Utility Subsidies', description: 'Assistance in application for utility subsidies such as PG&E, telephone, and car insurance discounts for low-income families'},
  {name: 'Childcare Enrollment', description: 'Identification of and enrollment in quality, affordable, and accessible childcare that meets family needs'},
  {name: 'Transportation', description: 'Assistance in addressing transportation needs including enrollment in reduced fare programs for public transit, and budgeting for automobile purchase and upkeep'},
  {name: 'Social Services', description: 'May include domestic violence services and counseling, prisoner re-entry programs, child protection, homeless services, and other family support programs'},
  {name: 'Tax Preparation and EITC', description: 'Volunteer Income Tax Assistance (VITA) sites perform free tax preparation for low-income people and assistance in determining eligibility for tax credits such as the Earned Income Tax Credit and the Child Tax Credit'},
  {name: 'Other'},
  {name: 'Employment Readiness and Training', description: 'Career and job specific training, resume building, job search assistance, interview preparation or other assistance in employment readiness'},
  {name: 'Job Placement', description: 'Connection with employers and support in pre- and post- employment process. Assistance in obtaining jobs with sustainable wages and good benefits'},
  {name: 'Workplace Rights', description: 'Advocacy in employee-employer disputes, education about worker rights, worker safety trainings, assistance in filing grievances, facilitate connection to labor unions or other worker-rights organizations'},
  {name: 'Other'},
  {name: 'Free Tax Preparation'},
  {name: 'Credit Repair Counseling', description: 'Guidance in improving credit scores and paying down debt'},
  {name: 'Debt and Bankruptcy Counseling', description: 'Guidance in paying down debt and decision-making regarding filing for bankruptcy'},
  {name: 'Child Support and Other Payments', description: 'Assistance in planning for child support payments and collections, liaison with Department of Child Support Services'},
  {name: 'Other'},
  {name: 'Emergency Loans'},
  {name: 'Identity Theft'},
  {name: 'IDAs and Matched Savings', description: 'IDAs are matched saving accounts most often for the purpose of home ownership, higher education, or small business start-up. Most IDAs are matched at a rate of $2 for every $1 a client saves with varying requirements for the savings goal'},
  {name: 'Retirement Planning', description: 'Budgeting, financial planning, and investing to save for retirement'},
  {name: 'Investments', description: 'Identifying opportunities for financial savings in retirement accounts or other ventures to build assets'},
  {name: 'Other'},
  {name: 'Financing Education'},
  {name: 'Small Business Development'},
  {name: 'Home-Rental Assistance', description: 'Determining affordability and eligibility for subsidies; locating available units, rental application assistance'},
  {name: 'Home-Ownership Assistance', description: 'Planning and saving, determining affordability, acquiring financial assistance (e.g. first-time homebuyer grants), loan application and negotiation for fair loan terms, and other pre-purchase counseling for home-ownership'},
  {name: 'Foreclosure Prevention and Counseling', description: 'Counseling and planning for payments and loan terms in order to help prevent foreclosure'},
  {name: 'Other'},
  {name: 'Immigration', description: 'Legal and advocacy assistance in all matters pertaining to immigrant rights, status, and applications'},
  {name: 'Tenant Rights', description: 'Legal and advocacy services to tenants'},
  {name: 'Foreclosure'},
  {name: 'Other'},
  {name: 'Predatory Lending', description: 'Information about predatory financial products and services (e.g. payday loans, check cashing, sub-prime loans) including non-predatory alternatives. Advocacy for victims of predatory financial practices'},
  {name: 'Community Economic Development', description: 'Education on the relationship between residents, business, development, and government; how people can invest back into their communities and participate in processes that affect their families and neighbors'},
  {name: 'Other'},
  {name: 'Small business loan'}  
])

# Pick 3 random orgs
orgs=Organization.all

Location.delete_all
Location.create([
  { address: '1431 23rd Avenue', city: 'Oakland', zipcode: '94606', hours: 'M-F 10am - 5pm', wheelchair_accessible: 1, ac_bus_accessible: 1, public_transportation_stop: '23rd and International/23rd and Foothill', directions: 'On 23rd Avenue between International and Foothill', organization_id: orgs[0].id},

  { address: '677 West Ranger Avenue', city: 'Alameda', zipcode: '94501', organization_id: orgs[1].id},

  { address: '25800 Carlos Bee Blvd', city: 'Hayward', zipcode: '94542', organization_id: orgs[2].id},
])
