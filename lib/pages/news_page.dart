import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app/model/news_item.dart';
import 'package:real_estate_app/pages/description_news_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
        title:
            'February home sales spike 9.5%, the largest monthly gain in a year, as supply improves',
        text:
            'Sales of existing homes surged 9.5% in February from January to 4.38 million units, on a seasonally adjusted annualized basis, according to the National Association of Realtors. Housing analysts had been expecting a slight drop. Sales were down 3.3% year over year, but it was the largest monthly gain since February 2023. Sales surged the most in the West, up 19.4%, and the South, up 16.4%. Sales in the Northeast were unchanged. “Additional housing supply is helping to satisfy market demand,” said Lawrence Yun, NAR’s chief economist. “Housing demand has been on a steady rise due to population and job growth, though the actual timing of purchases will be determined by prevailing mortgage rates and wider inventory choices.” Inventory rose 10.3% year over year to 1.07 million homes for sale at the end of February. That represents a still low 2.9-month supply at the current sales pace. Higher demand continued to push the median price higher, up 5.7% from the year before to \$384,500 — the eighth straight month of annual gains. Competition was stiff, with 20% of homes selling above list price.',
        image:
            'https://image.cnbcfm.com/api/v1/image/107374953-1708107062294-gettyimages-1945805254-1006_32_nc230606091.jpeg?v=1711039107&w=740&h=416&ffmt=webp&vtcrop=y',
        date: '03/21/2024'),
    NewsItem(
        title:
            'What a \$418 million settlement on home-sale commissions may mean for you',
        text:
            'A landmark class-action lawsuit may change the way Americans buy and sell homes. The National Association of Realtors agreed to a \$418 million settlement last week in an antitrust lawsuit where a federal jury found the organization and several large real-estate brokerages had conspired to artificially inflate agent commissions on the sale and purchase of real estate.  The NAR’s multiple listing service, or MLS, used at a local level across areas in the U.S., facilitated the compensation rates for both a buyer’s and seller’s agents. At the time of listing a property, the home seller negotiated with the listing agent what the compensation would be for a buyer’s agent, which appeared on the MLS. However, if a seller was unaware they could negotiate, they were typically locked into paying the listed brokerage fee. If a settlement agreement is accepted within a lawsuit between two people, the court generally won’t look at the settlement. Yet, in a federal class-action lawsuit, one that affects a large number of people, there will be a period for the court and interested parties to review the settlement and offer commentary and feedback on the agreement, Cobreiro said. “That’s the process that we’re about to enter, and that process can take some time,” she said. As proposed, the settlement would have the NAR completely remove commissions from its MLS system by July. That may be optimistic, Cobriero said. “It would be more realistic to see this being implemented later this year,” she said.',
        image:
            'https://image.cnbcfm.com/api/v1/image/107389394-1710855838084-gettyimages-1156387944-dsc_3765.jpeg?v=1710855851&w=600&h=300&ffmt=webp&vtcrop=y',
        date: '03/21/2024'),
    NewsItem(
        title: 'Spring kicks off with rising mortgage rates',
        text:
            'Inventory might be blooming this spring, but homebuyers who want to close a deal may need to reset expectations around interest rates. Last week\'s sizable dip may have left buyers hoping for further declines, but the seesaw trend in rates appears to be continuing. The 30-year fixed-rate mortgage averaged 6.87% this week, according to the latest Freddie Mac survey. That\'s up from 6.74% a week ago and 6.42% at the start of spring last year. The 15-year rate was also up, averaging 6.16%. Mortgage rates are expected to remain around this level as the spring homebuying season ramps up, following the Federal Reserve\'s decision to hold steady on interest rates at its March 20 meeting.  For now, the agency is leaning toward three rate cuts in 2024, a sign that mortgage rates will go down later this year. Even so, economists are adjusting their forecasts. Researchers at Fannie Mae, for example, expect interest rates to be around 6.4% at the end of 2024. They previously predicted the rate would fall below 6% by December. Economists are also rethinking the number of cuts the Fed will make over the next two years. "While the projections for the policy rate at the end of 2024 have not changed, policy makers do expect fewer rate cuts in 2025 and 2026 than they anticipated just 3 months ago — in other words, \'higher for longer,\'" said Danielle Hale, Realtor.com\'s chief economist.',
        image:
            'https://www.realestatenews.com/_next/image?url=https%3A%2F%2Fimages.ctfassets.net%2Fhzfwsdcegxo2%2F54Wo4pb8qldplSBSuXnDdj%2F545289dbef5f2eca735c62392034a324%2FMortgage_rates_Mar_21.jpg%3Fw%3D600%26h%3D600%26fit%3Dfill&w=640&q=75',
        date: '03/21/2024'),
    NewsItem(
        title: 'Agents, get your sellers ready',
        text:
            'It seems like home sellers always find themselves asking the same question around this time of year: When is the best time to list my house for sale? "Spring" is usually the answer, but timing a for-sale listing could make a substantial difference in a home\'s selling price, according to new survey from Realtor.com. The survey was released at a time when agents expect the 2024 spring buying season to outpace the previous couple of years. Data from Realtor.com shows that for-sale inventory increased by nearly 15% year-over-year in February. Homes were also spending four fewer days on market than the year before, which speaks to the growing homebuying demand. So what does that mean for spring sales? Realtor.com\'s latest survey found that the week of April 14-20 will be the best time for homeowners to list their homes this year. Based on last year\'s trends, homes listed that week could sell for an average of \$7,400 more, compared to a typical week, and in 9 fewer days, the research shows. Homes listed in late winter and early spring are also less likely to see price reductions. While sale prices tend to peak later, the number of active listings also increases. If sellers decide to wait until later in the spring or summer to list, they might fetch a slightly higher price, but competition from other sellers could make it harder to close a deal. Danielle Hale, Realtor.com\'s chief economist, said home sellers should start preparing to list their homes now so that they are ready to go when "conditions are likely to be most favorable, giving them the best chance of selling their home quickly and at a competitive price." Mortgage rates, which have played an outsized role in the direction of the market over the past two years, will continue to influence buyer and seller activity, the Realtor.com report noted. If rates decline to the mid-6% range, more buyers may come off the sidelines, which would be good news for sellers no matter what time of year it is.',
        image:
            'https://www.realestatenews.com/_next/image?url=https%3A%2F%2Fimages.ctfassets.net%2Fhzfwsdcegxo2%2F2S34swKNq5yEHqjA3FUCk3%2F4f5f3d99e3212dae2069f1ce2482b51e%2Fshutterstock_348914792__1_.jpeg%3Fw%3D600%26h%3D600%26fit%3Dfill&w=640&q=75',
        date: '03/21/2024'),
    NewsItem(
        title: 'Existing sales make the biggest leap in a year',
        text:
            'Existing home sales continued their upward swing, increasing 9.5% last month to a seasonally adjusted annual rate of 4.38 million sales, NAR reported. While overall sales were down 3.3% compared to last year, it\'s the largest monthly gain since 2023, and comes at a moment when the real estate industry can use some sunshine as it navigates rising interest rates and potential changes to commissions. The boost in sales was attributed to growing inventory and sustained demand. The inventory of unsold homes rose to 1.07 million, a 5.9% month-over-month increase, offering a 2.9-month supply at the current sales pace. The West, South and Midwest experienced sales jumps, while the Northeast held steady. Home sales in the Northeast came in at 480,000 units for the fourth consecutive month, while the median sales price hit \$420,600, up 11.5% compared to last year.  The biggest increase was seen in the West, where existing home sales were up 16.4% compared to the previous month. However, that was still a drop of 1.2% compared to the same time last year. The median home price, meanwhile, was \$593,000, a 9.1% increase vs. last year. In the Midwest, sales rose 8.4% from January but dropped 3.7% compared to last year. The median price — \$277,600 — was a 6.8% increase from February 2023. The South saw sales increase to 9.8% compared to January, down 2.9% vs the previous year. The median home price, meanwhile, increased 4.1% to \$354,200. "Due to inventory constraints, the Northeast was the regional underperformer in February home sales but the best performer in home prices," NAR Chief Economist Lawrence Yun said. "More supply is clearly needed to help stabilize home prices and get more Americans moving to their next residences."',
        image:
            'https://www.realestatenews.com/_next/image?url=https%3A%2F%2Fimages.ctfassets.net%2Fhzfwsdcegxo2%2F6HPSr7P9aHwMrYJeLsEwkm%2F25e7cae7bf0a5547fdd321540e00b55b%2Fhome_sales_up_march.jpg%3Fw%3D600%26h%3D600%26fit%3Dfill&w=640&q=75',
        date: '03/21/2024'),
    NewsItem(
        title:
            'The Fed hasn’t touched interest rates since July, but they’re still moving. What that looks like for credit cards, mortgages and savings accounts',
        text:
            'Inflation in the U.S. has hit a speed bump. While the rate of price increases has come down significantly from its peak in the summer of 2022, the most recent reading from the consumer price index showed overall inflation stuck at just above 3%. Core inflation — which removes volatile food and energy prices from the index — was even higher, at 3.8%. For perspective, the Fed’s inflation target is 2%. Those higher-than-expected readings dashed most hopes that the U.S. Federal Reserve would begin cutting interest rates this spring, as many central bank watchers hoped they might after nearly two years of steady rate increases. Higher rates mean that consumers have to pay more to service their debt, but it also means that banks pay higher rewards to savers. It’s one of the silver linings to the current rate environment, said Ted Rossman, chief credit card analyst at Bankrate. “There’s also been remarkable stability at the top of this market,” Rossman said. “The highest savings rate right now is 5.35%.” That top rate is considerably higher than the national average for savings rates overall, which has been just below 0.6% for the past two months. But even that overall average is more than double its level of 0.23% 12 months ago. Rossman added that plenty of high-yield savings accounts, mostly available online, are still paying close to or even above 5%. These kinds of accounts keep money easily accessible while earning solid returns and are great options for emergency savings.',
        image:
            'https://image.cnbcfm.com/api/v1/image/107389884-1710919367162-gettyimages-1225457934-dsc_4852copy.jpeg?v=1710919446&w=600&h=300&ffmt=webp&vtcrop=y',
        date: '03/20/2024'),
    NewsItem(
        title:
            'The Federal Reserve holds interest rates steady, with no immediate relief for consumers from sky-high borrowing costs',
        text:
            'The Federal Reserve announced Wednesday it will leave interest rates unchanged, delaying the possibility of rate cuts as well as any relief from sky-high borrowing costs. Overall, expectations that the Fed is pulling off a soft landing have increased, but that offers little consolation for Americans with high-interest debt. And now there may be fewer interest rate cuts on the horizon after hotter-than-expected inflation reports sent the message that “we are moving in the right direction, but we’re not there yet,” said Greg McBride, chief financial analyst at Bankrate.com. For consumers, that means “a very slow downward drift in savings rates but no material change in borrowing costs for credit cards, auto loans or home equity lines of credit,” McBride said. Since most credit cards have a variable rate, there’s a direct connection to the Fed’s benchmark. In the wake of the rate hike cycle, the average credit card rate rose from 16.34% in March 2022 to nearly 21% today — an all-time high. With most people feeling strained by higher prices, balances are higher and more cardholders are carrying debt from month to month compared with last year. Annual percentage rates will start to come down when the Fed cuts rates, but even then they will only ease off extremely high levels. With only a few potential quarter-point cuts on deck, APRs would still be around 20% by the end of 2024, according to Ted Rossman, Bankrate’s senior industry analyst. “If the average credit card rate falls a percentage point from its current record high of 20.75%, most cardholders would barely notice,” he said.',
        image:
            'https://image.cnbcfm.com/api/v1/image/101593401-480924115.jpg?v=1399577060&w=600&h=300&ffmt=webp&vtcrop=y',
        date: '03/20/2024'),
    NewsItem(
        title: 'A New Building Aims to Be a Good Neighbor in Low-Rise Brooklyn',
        text:
            'To fit into Boerum Hill, Brooklyn, known for its brownstones and low-key style, new buildings must follow a pattern: be stately but not flashy, and above all honor the integrity of the neighborhood. Buildings in Boerum Hill are much lower-profile than the skyscrapers in nearby Downtown Brooklyn and parts of Prospect Heights. One of the newest arrivals, still under construction, is named Bergen. And while the project doesn’t stand out too much in the neighborhood, it doesn’t blend in entirely, either. The seven-story Bergen is a bit taller than most of its neighbors and occupies much of the block of Bergen Street between Third and Fourth Avenues. In renderings, the exterior, made of precast concrete brick, appears fairly muted — except for its gently pleated, zigzag pattern. The building doesn’t look too ostentatious on a block of brick townhouses, brownstones and some newer apartment complexes. Bergen’s interiors, however, will be much grander in scale. Residences at Bergen range from studios to five-bedrooms and start at \$700,000. (Prices haven’t been set for the larger apartments.) The building will include 12,000 square feet of exterior amenities, in addition to a cold plunge pool, a podcast studio and a steam room, across four floors in the center of the building, with two conjoined rooftops. Bergen will also have a garden area, with terraces for residents and public outdoor space for the community, that will double as the building’s storm water management system.',
        image:
            'https://static01.nyt.com/images/2024/03/24/multimedia/20build-bergen-bhtw/20build-bergen-bhtw-superJumbo.jpg?quality=75&auto=webp',
        date: '03/20/2024'),
    NewsItem(
        title: '\$1.5 Million Homes in California, Florida and Rhode Island',
        text:
            'This floor-through apartment is in a building near Mission Dolores Park, one of the city’s most beloved outdoor spaces, with picnic areas, a playground and tennis courts. It is also just a few blocks from Mission San Francisco de Asis, a late 18th-century Spanish-style church; Roxie Theater, one of the city’s oldest continuously operating movie theaters; and the popular Tartine bakery. Public elementary, middle and high schools are within a 15-minute walk. Crossing San Francisco Bay into Oakland takes half an hour on public transit. San Francisco International Airport is about 20 minutes away by car. Driving to San Jose takes about an hour. The apartment’s front door opens into a foyer with an original stained-glass window. To the left is a living room with a decorative fireplace that has its original brick surround and a bay of windows overlooking the neighborhood. Straight ahead from the foyer is a kitchen with navy blue cabinets, stainless steel appliances and a graphic tile backsplash behind the range. The adjoining pantry holds a refrigerator, a washer and dryer, and additional storage space.',
        image:
            'https://static01.nyt.com/images/2024/03/24/realestate/20WYG-SANFRANCISCO-01/20WYG-SANFRANCISCO-threeByTwoMediumAt2X.jpg?quality=75&auto=webp',
        date: '03/20/2024'),
    NewsItem(
        title:
            'It Started With a Pink Kitchen. Then the Colors Got Even Bolder.',
        text:
            'As Giovanni Botta and Amanda Pinegar began planning their renovation of the house they bought in Prospect-Lefferts Gardens, Brooklyn, they knew one thing for sure: The kitchen would have to be pink. “We had already decided on the refrigerator, which is pink,” said Ms. Pinegar, 44, a ceramic artist. “And we wanted a kitchen that would enhance that.” To complement the pink kitchen, they considered lots of other bright colors, too. “Amanda wanted it really bold,” said Mr. Botta, 42, a software engineer at Waymo, the driverless car company owned by Alphabet. This was nothing new: In their previous home, they had painted their bedroom yellow and pink. The couple had bought the townhouse for \$1.6 million in November 2021, in the throes of the pandemic, as they struggled to live comfortably with their twin daughters, now 7. “Honestly, we thought we were going to leave New York,” Ms. Pinegar said. “But we rented a house for a year and realized that it wasn’t New York we were tired of — it was living in a 900-square-foot apartment with twins.” Their new townhouse, which had nearly 2,100 square feet spread over two floors, as well as a finished basement, offered significantly more space. But it had been broken up into three units with dated finishes, so it needed work.',
        image:
            'https://static01.nyt.com/images/2024/03/19/realestate/19location-lefferts-slide-80IP/19location-lefferts-slide-80IP-superJumbo.jpg?quality=75&auto=webp',
        date: '03/19/2024'),
    NewsItem(
        title: '\$4 Million Homes in California',
        text:
            'This house was built to replace a Victorian house that burned down 100 years after it was built on this lot, and the designers attempted to recreate as many Victorian-era details as possible. It is about a mile from the center of the city, putting it within a five-minute drive or a 20-minute walk of shopping, dining and the Smith Rafael Film Center, an Art Deco theater showing independent films. Boyd Memorial Park, which has a playground and walking trails surrounded by redwoods, is less than two miles away. Driving to San Francisco or Point Reyes National Seashore takes about half an hour. To the right is a living room with elaborate crown molding and a marble fireplace flanked by built-in shelving. Behind the living room is a dining room with another marble-clad fireplace and access to a kitchen with stainless steel appliances, a large center island, a pantry and a windowed breakfast room with glass doors that open to a brick patio. Through a wide doorway is a sunny family room with more glass doors that open to the patio. A wide staircase off the foyer leads to the four bedrooms on the second floor, passing a colorful stained-glass window along the way. The primary suite, at the top of the stairs, has a large bedroom, a walk-in closet and a bathroom with two console-style sinks, a walk-in shower with glass walls and a soaking tub. Another bedroom suite is across the hall. The other two bedrooms on this level share a full bathroom.',
        image:
            'https://static01.nyt.com/images/2024/03/18/realestate/18WYG-CA-sanrafael-01/18WYG-CA-sanrafael-threeByTwoMediumAt2X.jpg?quality=75&auto=webp',
        date: '03/18/2024'),
    NewsItem(
        title: 'A Couple Came for the Jazz and Stayed for a Better Apartment',
        text:
            'Altin Sencalar’s timing could hardly have been worse. “New York is the destination for jazz,” said Mr. Sencalar, a jazz trombonist. So a year and a half ago, he and his wife, Marina Sencalar, signed on — sight unseen — to an apartment in Washington Heights. Mr. Sencalar planned to perform and teach, as he had done in his native Texas. “The day I moved here was the day I got called to go on tour with Michael Bublé,” he said. For months the couple’s \$2,350 three-bedroom apartment sat mostly unused, an expensive storage unit. Ms. Sencalar remained in Texas with her parents. Six months later, the gig ended, so the couple finally moved into the apartment in Washington Heights with their two dogs. “The big cash cow was unfortunately gone,” Mr. Sencalar said. “In classic New York fashion, the highs are high and the lows are low.” Thanks to his jazz friends, however, Mr. Sencalar easily picked up work. “There is a big community here from my grad school, Michigan State, that looks out for one another,” he said. But the couple, who had met as college students in Texas, were increasingly frustrated with their home. In the kitchen, only one outlet worked. Several evictions were proceeding in the building. They watched a neighbor upstairs get arrested. “Here is the classic ‘first apartment in New York’ story,” Mr. Sencalar said. “We had a leak every single day from October to May.” One leak was in the wall between the kitchen and the bathroom. Another came from the toilet upstairs. Mold grew. “We were coming from Texas with newer apartments and newer everything,” Ms. Sencalar said. “I am used to having maintenance staff on the premises.” They complained to the landlord, but didn’t like the response. “They wanted to paint over the mold. I am a person with some allergies, and you cannot just paint over mold.” It didn’t help that their neighborhood was congested and rowdy. Music played in the streets into the wee hours. Visiting friends were horrified. “I didn’t want friends coming over,” Mr. Sencalar said. “I was very embarrassed of the place.”',
        image:
            'https://static01.nyt.com/images/2024/03/18/multimedia/18Renters-Sencalar-02-tmlp/18Renters-Sencalar-02-tmlp-superJumbo.jpg?quality=75&auto=webp',
        date: '03/18/2024'),
    NewsItem(
        title:
            'How Does Paris Stay Paris? By Pouring Billions Into Public Housing',
        text:
            'The two-bedroom penthouse comes with sweeping views of the Eiffel Tower and just about every other monument across the Paris skyline. The rent, at 600 euros a month, is a steal. Marine Vallery-Radot, 51, the apartment’s tenant, said she cried when she got the call last summer that hers was among 253 lower-income families chosen for a spot in the l’Îlot Saint-Germain, a new public-housing complex a short walk from the Musée d’Orsay, the National Assembly and Napoleon’s tomb. “We were very lucky to get this place,” said Ms. Vallery-Radot, a single mother who lives here with her 12-year-old son, as she gazed out of bedroom windows overlooking the Latin Quarter. “This is what I see when I wake up.” Public housing can conjure images of bleak, boxy towers on the outskirts of a city, but this logement social was built in the former offices of the French Defense Ministry, in the Seventh arrondissement, one of Paris’s most chic neighborhoods. It’s part of an ambitious and aggressive effort to keep middle- and lower-income residents and small-business owners in the heart of a city that would otherwise be unaffordable to them — and by extension, to preserve the ineffable character of a city adored by people around the globe. This summer, when the French capital welcomes upward of 15 million visitors for the Olympic Games, it will showcase a city engineered by government policies to achieve mixité sociale — residents from a broad cross-section of society. One quarter of all Paris residents now live in public housing, up from 13 percent in the late 1990s. The mixité sociale policy, promoted most forcefully by left-wing political parties, notably the French Communist Party, targets the economic segregation seen in many world cities.',
        image:
            'https://static01.nyt.com/images/2024/03/24/multimedia/17PARISHOUSING-tlgq/17PARISHOUSING-tlgq-superJumbo.jpg?quality=75&auto=webp',
        date: '03/17/2024'),
    NewsItem(
        title:
            'Do I Have to Allow the Landlord to Do Building Repairs in My Apartment?',
        text:
            '“The disruption caused by the work should be managed by the workers so as to cause as little annoyance as possible,” Mr. Kaminsky said. The work should be done during normal weekday working hours, with permits and a tenant safety plan to protect against lead, dust, asbestos and other hazards. As for the rent: Landlords of rent-stabilized tenants can apply to the state’s Division of Housing and Community Renewal for increases to account for building-wide upgrades, known as major capital improvements. But, these increases are prohibited in buildings where fewer than 35 percent of the units are rent regulated — which sounds like the situation you’re in. Without that state approval, the landlord cannot increase your rent unless you give written consent. “The tenant does not have to sign off on an increase for improvements done to their apartment,” said Jennifer Rozen, a tenant lawyer in Manhattan. What about tenants who live in buildings that don’t fall under the 35 percent rule? If the landlord applies for a rent increase based on capital improvements to a heating system, tenants can object by arguing that the existing system has not exceeded its useful life as outlined by the state. The allowable rent increase would be capped at 2 percent a year and must be removed from the rent 30 years after the increase became effective. In the unlikely event that the replacement of your heating system results in a rent increase, New York City residents age 62 and older with household incomes of less than \$50,000 may be eligible for the Senior Citizen Rent Increase Exemption program, whereby the city will cover the increased cost.',
        image:
            'https://static01.nyt.com/images/2024/03/17/realestate/16Ask-illo/17Ask-illo-superJumbo.jpg?quality=75&auto=webp',
        date: '03/16/2024'),
    NewsItem(
        title:
            'Powerful Realtor Group Agrees to Slash Commissions to Settle Lawsuits',
        text:
            'American homeowners could see a significant drop in the cost of selling their homes after a real estate trade group agreed to a landmark deal that will eliminate a bedrock of the industry, the standard 6 percent sales commission. The National Association of Realtors, a powerful organization that has set the guidelines for home sales for decades, has agreed to settle a series of lawsuits by paying \$418 million in damages and by eliminating its rules on commissions. Legal counsel for N.A.R. approved the agreement early Friday morning, and The New York Times obtained a copy of the signed document. The deal, which lawyers anticipate will be filed within weeks and still needs a federal court’s approval, would end a multitude of legal claims from home sellers who argued that the rules forced them to pay excessive fees. In a statement released on Friday morning, Nykia Wright, the interim chief executive of N.A.R., said “It has always been our goal to preserve consumer choice and protect our members to the greatest extent possible. This settlement achieves both of those goals.” Housing experts said the deal, and the expected savings for homeowners, could trigger one of the most significant jolts in the U.S. housing market in 100 years. “This will blow up the market and would force a new business model,” said Norm Miller, a professor emeritus of real estate at the University of San Diego. Americans pay roughly \$100 billion in real estate commissions annually, and real estate agents in the United States have some of the highest standard commissions in the world. In many other countries, commission rates hover between 1 and 3 percent. In the United States, most agents specify a commission of 5 or 6 percent, paid by the seller. If the buyer has an agent, the seller’s agent agrees to share a portion of the commission with that agent when listing the home on the market.',
        image:
            'https://static01.nyt.com/images/2024/03/13/multimedia/13NARsettlement-HFO-gpqb/13NARsettlement-HFO-gpqb-superJumbo.jpg?quality=75&auto=webp',
        date: '03/15/2024'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2321),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 18),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.chevron_left,
                    color: Color(0xFF5EC286),
                  ),
                  Text(
                    'Back',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Color(0xFF5EC286),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [getNews()],
              ),
            )),
          ),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => DescriptionNewsPage(
                        news: news,
                      )),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: const Color(0xFF2E3C37),
                borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  news.title!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              news.date!,
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 98,
                    width: 98,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              news.image!,
                            ))),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
