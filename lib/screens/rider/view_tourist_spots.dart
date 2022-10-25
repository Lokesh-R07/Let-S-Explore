//search tourist spots
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:letsgo/screens/rider/rider_home.dart';
import 'package:letsgo/utils/next_screen.dart';

class TouristSpots extends StatefulWidget {
  const TouristSpots({Key? key}) : super(key: key);

  @override
  State<TouristSpots> createState() => _TouristSpotsState();
}

class _TouristSpotsState extends State<TouristSpots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          child: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
            nextScreenReplace(context, const RiderHome());
          },
        ),
        title: const Text('Some Tourist Spots'),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset('asset/rider_background.jpg',
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 60, bottom: 30),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(
                      "North India",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                " Agra (The City Of Taj)",
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/agra.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Nestled on the banks of the Yamuna River in the northern state of Uttar Pradesh, Agra is one of India’s most popular Indian tourist destinations. The city stands testimony to the great architectural activity and treasures its beautiful story down the Mughal period. The most famous of the monuments of Agra is the Taj Mahal which is one of the Seven Wonders of the World. Taj Mahal was fabricated by Shah Jahan in remembrance of his wife Mumtaz Mahal in the year 1631 ( 17th century). It is also the symbol of the devotion and dedication of love.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Amritsar (The Land Of Patriotism & Spirituality)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/amristar.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The beautiful city of Amritsar represents the heroic character of Punjab. The city has witnessed some of the most distinguished events of the colonial past and has been through them. One feels a spontaneous gush of patriotism the moment he comes into the city. Amritsar’s Jallianwalla Bagh speaks out loud about the heinous carnage done in the name of the law. It is a reminder of a great crime done against humanity. Between the bullet marks in Jallianwala Bagh and the beating of drums at the Wagah Border, you are sure to experience a sense of national pride here. Besides its patriotic side, Amritsar gracefully carries its spiritual side with the highly revered Shri Harmandir Sahib, popularly known as the Golden temple. It is one of the most famous spiritual sites in the country.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Chandigarh (The Green City)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/chandigarh.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Covered with dense green forests, beautiful lakes, and refreshing gardens, Chandigarh is sure to flatter you with its vibrant ambiance. Be it nature, art, and culture, or nightlife and entertainment, this popular destination has something for every traveler. It is truly a rare epitome of modernization co-existing with nature’s preservation. Here, the greens are as much a part of the construction plans as the buildings and the roads. Chandigarh is India’s first planned city and is truly considered the ‘The Green City’.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Dalhousie (The Panoramic Beauty Of North)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child:
                                  Image.asset('asset/d.png', fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "When we talk about Dalhousie, the pleasant view of the snow-capped mountains of Dhauladhar ranges, beautiful meadows, dense jungle, and cascading waterfalls is all that comes to mind. Established in 1854, the city was named after Lord Dalhousie. It was one of the favorite summer destinations of the Britishers during the colonial era. The place presents an exhibition of pine-clad valleys, striking natural landscapes, and magnificent misty mountains, that are sure to leave you wonderstruck. Book your flights to India now and indulge in the splendor of nature.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Delhi (City With Vibrant History)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/delhi.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The capital of India, Delhi is full of interesting historical history. The city’s rich past vibrantly reflects on the walls of beautiful heritage buildings sprawling across the whole city and beyond. Exploring Delhi’s iconic monuments and heritage sites is not less than ultimate fun. Delhi also counted in the three most visited cities of India including Agra and Jaipur which are collectively known as the Golden Triangle. The glaze of the old stone walls provides a booming beauty to the city. Besides its glorious past, Delhi is also a shopper’s paradise and ‘the food capital of India’. So, don’t miss visiting Delhi. Book your flight to Delhi now!",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Kullu-Manali (Valleys Of God)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/kullu_manali.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "If you want to sense the tranquility of divine nature, Kullu Manali is one of the best places having breathtaking sights of nature. Spread out leisurely on the banks of river Beas, the place has been generously blessed with pristine streams, verdant greenery, meadows burgeoning with flowers, and an amusing climate.  Nestled between the lower and the greater Himalayan ranges as well as the inner Himalayan ranges of the Pir Panjal, Kullu Manali lures tourists for many reasons. You can capture the glance of the clouds dancing on its hilltops or can even choose to experience the thrill through numerous adventurous sports like rafting, camping, trekking, paragliding, skiing, and others.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Leh-Ladakh (The Land Of Dreams)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/ladakh.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "How about grabbing the unrivaled view of snow-covered mountains and crystal clear lakes with the perfect blue sky? Interesting, Isn’t it? Leh-Ladakh is all about it. It is a beautiful and heavenly destination in the northern part of India that gives a unique feeling of delight to all vacationers, every year. The extensive range of hiking routes will satisfy your soul and augment your senses. Tourists from across the nation and world visit this gorgeous place to take part in several adventurous activities such as camping, hiking, trekking, etc. ",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Lucknow (The City Of Nawabs)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/lucknow.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The Capital city of Uttar Pradesh also termed the ‘City of Nawabs’ has many things rolled into one. From centuries-old Mughal and British structures to fun-filled amusement parks, museums, and temples, Lucknow has some of the best places to visit in Uttar Pradesh. The place is the second biggest city of North India and the eleventh biggest city in the nation. This is the place where any ardent traveler can get to explore the history, indulge in the beautiful culture, enjoy street shopping, seek spirituality, relish famous Lucknow cuisines, and more.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Mussoorie: The Monarch of Hill Stations",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/musorie.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Cocooned in the Garhwal Hills of Uttarakhand, the enchanting hill station is an ideal getaway with pleasant weather for the unbearable summer heat in other parts of India. There’s a lot that Mussoorie offers other than the picturesque view of the endlessly green luscious valleys that are covered with a blanket of snow during winters. Whether you are with your partner, or family, or friends, you are sure to enjoy shopping for souvenirs, sightseeing, trekking, and eating at quaint restaurants.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Nainital: City of Picturesque",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/nainital.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The picture-postcard town is a famous summer holiday destination in Northern India. Otherwise known as the ‘Lake District of India,’ the Naini Lake is the center of the picturesque hill station surrounded by majestic mountains. A paradise for nature lovers, Nainital hosts boating in the pear-shaped lake, shopping for souvenirs, taking a cable car ride to Snow View Point, flying in a hot-air balloon, trekking, and much more. It is an ideal weekend getaway from the regular hustle-bustle of cities like Delhi and Dehradun. Best Time to Visit: Although an all-year destination, it becomes a popular tourist spot in India to celebrate Christmas and New Year for its heavy snowfall during the winter season. The weather between March – June is lovely.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Rishikesh: The City of Pilgrim Centres",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/rishikesh.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The home of Yoga in India and around the world, Rishikesh is like no other place that one would have visited in this country. It is well known for being the perfect blend of nature, spirituality, and adventure. Located in the foothills of the mighty Himalayas in the state of Uttarakhand, Rishikesh has always been a magnet for tourists wanting to go rafting, or visiting pilgrimage sites, or learning the art of Yoga. Being a perfect getaway weekend destination, Rishikesh is lovingly described as a city with fluffy mesmerizing clouds, magnificent mountains, rushing and bubbling rivers & dozens of amazing temples. ",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Spiti Valley: Queen of Natural Beauty & Cultural Heritage",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/spiti.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Popularly called ‘Little Tibet,’ it is one of the ‘cold desert mountains’ in the Himalayan Mountain range and truly is a paradise on Mother Earth. This beautiful hill station of Himachal Pradesh is packed with every type of holiday you plan here. Although removed from the Indian tourist map due to its remoteness, it still is known for its pristine charm. Spiti is not only famous for its brimming natural beauty but its ancient culture, adventurous activities, spiritual sites, traditions and handicrafts.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Srinagar: Heart & Soul of Kashmir Valley",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/srinagar.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "It is one of the most beautiful and mesmerizing hill stations which is the summer capital of Jammu & Kashmir. The reason why Srinagar tourism is popular is due to the simplicity and heartwarming nature of people, the pleasant climate, the major Indian tourist attractions to visit, and the lush green valleys that are blanketed by snow during winters. The literal meaning of Srinagar in Sanskrit is, ‘the city of wealth and abundance.’ Excavation in Srinagar dates back to 3000 BC and has always been home to lakes, royal Mughal gardens, religious places. It is also the ‘IT’ destination for adventure junkies with sports like skiing, trekking, river rafting and paragliding offered.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Varanasi: The Holy Land of Bathing Ghats",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/varanasi.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Being one of the oldest inhabited cities of India, it is a popular tourist destination to attain spiritual bliss and witness historic remnants. The city houses a distinct feature that makes it stand apart from other cities of India. It is a labyrinth of narrow alleys lined with rows of houses, an array of shops – small & big, heritage monuments, renowned temples, crowded streets. Overall the city brings out the essence of simplicity and ritualistic lifestyle that Varanasi has been known to portray. ",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "South India",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Bangalore (The City With Best Nightlife)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/banglore.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Popularly known as the nightlife capital of India, Bangalore grabs the fancy of every individual who visits this city, regardless of the season. There are numerous clubs and pubs which will keep you entertained with its stupendous nightlife scenarios. Besides its amazing nightspots, Bangalore has beautiful gardens, lakes, parks, and pleasant weather. Whether you are on a business trip or a holiday, don’t stay back at your residence or hotel because the city has some of the best enthralling encounters to offer.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Calicut (The Contrasting Colours Of Nature)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/calicut.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Snuggled in the southern Indian state of Kerala, the city of Calicut is truly a pristine haven in nature. Filled with tranquil beaches, historical forts, and verdant greenery, the city flaunts some of the amazing places of the country. Founded in the year 1948 by Vasco Da Gama, this magnificent city has been attracting travelers from antiquity. It is truly an ideal place nestled between the vast expanse of Arabian Sea on the west and the peaks of Wayanad hill on the east. You just cannot miss out on seeing the mesmerizing beauty of this place.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Chennai (The Land Of Temples)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/chennai.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Lying on the Coromandel Coast, Chennai has more than 40,000 temples representing different dynasties, including Hindu, Jain, Buddhist, and others. Most of the temples are about 600 to 800 years old and carry rich spiritual history along with marvelous structures. Some temples have even been awarded the status of UNESCO World Heritage Site. A visit to Chennai is incomplete without the Shore Temple. Besides the beautiful temples, the city is also famous for pristine beaches, historical buildings, and museums.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Kochi (Queen Of Picturesque Sights)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/kochi.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Embraced by the captivating charm of the Arabian Sea, Kochi boasts an amazing scenic beauty that is sure to leave you awed. Starting from the serene backwaters, mesmerizing beaches, jade green fields, inland lakes along with the staggering palm trees, the city gracefully presents some best views to cherish for life. Kochi is a great travel destination indeed with an electrifying influence of the British, Arabs, Portuguese, and Chinese architecture and culture. Book your tickets to Kochi and relish the best experiences.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Coimbatore (City With Stunning Sky-High Architecture)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/coimbatore.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Enclosed by the magnificence of nature, Coimbatore is tucked deep in the environs studded with nature. The view of broad ghats, green hills, and the beautiful waterfalls fills the heart with utter peace. Coimbatore is majorly recognized for the Adiyogi statue that stands tall at 112 ft and weighs around 500 tonnes. This statue has been recognized by the Guinness Book of World Records. The second largest city of Tamil Nadu, located on the banks of the Noyyal River and surrounded by the Western Ghats, has a lot to offer to its visitors.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Hyderabad (The Beautiful City Of Nizams)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/hydrebad.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Hyderabad is popularly known as the city of Nizams after the former seat of the wealthy Nizams of Hyderabad. Starting from its etiquette, world-famous Hyderabadi pearls, heritage monuments, gardens, museums, among others, the city is an amalgamation of historic tradition and modernization at the same time. Hyderabad has been ruled by the Qutab dynasty who came from Persia and by the Nizams who came from Turkey. There are plenty of cities to explore whilst taking in a match.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Kanyakumari (The City With Spiritual Essence)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/kanyakumari.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Kanyakumari! The place is truly made of magic. The beautiful red cliffs and the union of the three major water bodies including the Bay of Bengal, Arabian Sea, and the Indian Ocean, make the place one of the best tourist destinations of India. It has been a great center for art, culture, civilization, and pilgrimage for years. Starting from the scenic beaches to beautiful temples and churches, waterfalls, and monuments, the place has a lot to provide to its travelers. Besides, Kanyakumari is also popular because it is the only place on earth, where you can see the Sun Rise and Sun Set from the ocean",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Kerala (God’s Own Country)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/kerala.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Kerala is one of the most popular travel destinations in India. Kerala is famous especially for the emerald backwaters, pristine hill stations, sprawling, and lush tea estates, and the azure Arabian Sea. Further, Kerala’s unspoiled beaches, unique geography, art forms, and spices are one of a kind. You can relish the joy of riding on charming houseboats, unique eco-tourism and viewing the sprawling tea plantations. Thus, the place is fondly referred to as ‘God’s own country.’",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Madurai: The Historical Destination of South India",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/madurai.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Like Varanasi in the North, Madurai is one of India’s continuously inhabited historic cities (over 3000 years) and is home to numerous temples built in the Dravidian style of architecture. The city is endearingly called Mallgai manager, the City of Jasmine, Koli manager, the Temple City, and Thoonga nagaram, the City that Never Sleeps. Apart from being a heritage and pilgrimage destination, the city is a popular tourist destination widely known for its mouth-watering delicacies, beautiful architecture, vibrant shops, and heart-warming people.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Mangalore: A Treasure Trove of the Ancient and the Modern",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/mangalore.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Officially known as Mangaluru, the modern yet historically vibrant city is rich for its cultural diversity and can become your next tourist destination to visit. Flanked by the Western Ghats and the Arabian Sea, this beautiful port city attracts tourists by its ancient culture, modern trends, beautiful beaches, traditional sports, and spicy seafood dishes. It is the fourth largest city of Karnataka that is known for housing the largest coastal spot of Karnataka. As the city has a tropical climate, traveling here is never exhausting. Best Time to Visit: The best time to visit Mangalore is from October to February when the weather is pleasant. However, if you want to avoid crowds, try visiting the city from June to September.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Ooty: Land of Flavorful Spices",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/ooty.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Nestled in the Nilgiri hills in Tamil Nadu, Ooty is one of the dream places to visit in South India. Ooty is a paradise for all those who wish to visit a place filled with verdant green tea estates, red-roofed bungalows built in the Colonial era, expansive meadows, towering hills, dense pine, sparkling waterfalls and tranquil lakes. Being magical in every single aspect, Ooty has been graciously nicknamed the ‘Queen of the Nilgiris,’ by Pt. Jawaharlal Nehru. It is also known as Udhagamandalam or Ootacamund.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Port Blair: A Dreamy Escapade to the Capital of Andaman & Nicobar",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/port_blair.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The capital city of the Union Territory, Andaman and Nicobar Islands is known for its sandy beaches and tropical forests. The popular tourist destination, situated in the Bay of Bengal, is a scenic delight with an abundance of pleasant weather, clear waters, pearly white beaches, colonial past, delicious food, and an array of stores to shop at. The city is famous for its contrasting settlement. On one end of Port Blair, the city is bustling with activities and the other end is quiet and rarely visited by tourists.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Rameshwaram: The Maldives of South India",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/rameshwaram.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The coastal city of the state of Tamil Nadu is also a holy town famous for being one of the Char Dham, truly a star attraction for all tourists visiting the South. It is well known for being the quietest and cleanest town in Tamil Nadu. Standing alone in the sea, flanked by India and Sri Lanka, this city is known for its historical past and sacredness. What sets apart the spiritual city of Rameshwaram from other cities of India is the exquisite temples with many sacred ponds. Along with being one of the religious Indian tourist sites, Rameshwaram is also known for its many beaches and sightseeing spots.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Tiruchirappalli: Land of Architectural Marvels",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/tiruchirapalli.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Fondly called Trichy, the Southern Indian city of Tamil Nadu is believed to be one of the oldest places to be inhabited in India. Many empires and kings have ruled this city, leaving their legacy behind. This has resulted in the city being blessed with rich ancient cultural heritage and traditions followed for years together. Within the city, one can observe the countless splendid historical sites and monuments that tell the story of the city’s past. ",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Trivandrum: A Natural Retreat to the Coastal Plain of South",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/tirvandram.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Trivandrum, or known as Thiruvananthapuram, is the capital of God’s own country and was named the ‘evergreen city of India,’ by Mahatma Gandhi. Formerly a hub for spices, sandalwood, and ivory, it has now developed into an IT hub contributing to 80% of the software export of the state. It is also known for being one of the best cities of Kerala one could settle in. A visit to this city is sure to leave you astounded by its many wonders from colorful wildlife to art museums, and beautiful sunsets.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Visakhapatnam: Land of Turquoise Waters & Serene Shores",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/visakhpatnam.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Located in the state of Andhra Pradesh, the ancient city of Visakhapatnam or fondly called Vizag is known for being a blend between the traditional and the cosmopolitan. The city is blessed with lush green valleys, ancient Buddhist establishments and gorgeous clear beaches ideal for surfing, and a touch of spiritual charm. It is the ideal place for a weekend getaway and for tourists wanting to explore the coastal city of Andhra Pradesh.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "West India",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Ahmedabad (The City Of Fascinating Clothing)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/ahmedhabad.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Ahmedabad, one of the top-rated tourist places in India, boasts a vibrant culture featuring the influences of the Mughal roots and colonial connections. The city flaunts beautiful sightseeing spots that are a mix of magnificent ancient temples, interesting museums, picturesque lakes, tranquil river-front, and the Gandhi heritage. Ahmedabad makes sure that you spend time absorbing its vibes and getting an insight into its rich culture and heritage. ",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Goa (The Party Capital Of India)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/goa.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "If you are bored of the mundanity of your daily work schedule, revive your mind with the positive buzz of Goa. The elusive magic that the place spreads on its visitors is unmatched. Goa features an extensive crowd coming from all over the world, dazzling nightlife with the best music and lights. You can also visit the beautiful churches, great beaches, temples, and old Portuguese-style buildings that portray the Goa culture with utter grace. Further, every beach has the perfect blend of beauty, and serenity that is rare to find.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Jaipur (Land of Majestic & Grandeur Palaces)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/jaipur.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Jaipur is truly a place of paradise for all the history and architecture lovers around. The city is home to some of the best royal palaces, majestic forts, ancient towering temples, and eclectic museums, that are sure to leave you awed. Jaipur is the right fusion of old and modern culture, chaotic yet pleasant welcoming and hospitable atmosphere. The city is a UNESCO World Heritage Site, as it beautifully paints the picture of Mughal and Rajput architecture. You can also explore the wildlife and adventure activities at this place.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Lonavala (The City Of Caves And Cliffs)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/lonavala.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Lonavala, a popular hill station, is one of the twin hill stations- Lonavala and Khandala. Located at an elevation of 624 m above sea level, the place is surrounded by dense forests, waterfalls, lakes, and dams, making it the most visited hill station in Maharashtra. Starting from vantage points with panoramic views of nature to ancient forts, you can feel the environment at its best here. It is also a popular destination for camping, trekking, and other adventure sports.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Mumbai: The Hollywood of India",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/mumbai.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "‘Aamchi Mumbai,’ fondly known as Bombay, is one of the largest and vibrant cities of the world that hardly ever sleeps. The city is nothing less than Las Vegas and like the city of the USA, it offers an extravagant lifestyle, dynamic nightlife, breathtaking landmarks and a variety of cuisines. Being the city of dreams, it is known for its residents ranging from Bollywood celebrities to famous politicians, and thousands of people hoping to make it big. For your next summer vacation, plan a trip to Mumbai, the media capital of India. Best Time to Visit: The city experiences mild winters, so the best time to explore Mumbai is from December through February. As the weather is pleasant, it becomes perfect to travel and sightsee.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Nagpur: The ‘Orange’ City of India",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/nagpur.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Being the third-largest city and the winter capital of Maharashtra, this historical town is famous for its natural wonders, religious significance, and abundance of juicy oranges produced. Whether you are thinking of traveling with family, or friends; this place won’t disappoint you. Rather, it is bound to enchant you with this beauty. Otherwise known as the ‘Tiger Capital of India,’ Nagpur is located at the geographical center of India. It consists of plateaus and flat tablelands with rivers and streams.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Pune: Perfect Getaway to the Cultural Hub of India",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/pune.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The second-largest city, formerly called ‘Poona’, has a glorious past and this is the main reason why it is known as the cultural capital of Maharashtra. The popular tourist destination proudly boasts of its natural and historical destinations. The city is filled with art, history with eye-catching architectural wonders, lip-smacking delicacies, and contrasting bustling nightlife accompanied by a modern and fashionable lifestyle. With pleasant weather almost 365 days of the year, this city is loved by all and is one of the most visited cities of India.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Surat: City of Sparkling Diamonds and Lustrous Silk",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/surat.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The gleaming gem of Gujarat greets you with a pleasing sight of clean streets. Moving further into the city, the colonial structures lining the alleys will have you hit the path of nostalgia. But a whiff of the markets and bustling streets will bring you back to the present almost instantly. This is the beauty of the second-largest city in Gujarat. Besides being famous for its textiles, ivory handicrafts, embroidery, and jewelry especially diamonds, it also holds a great significance to its historical past separated quite evidently by the modern era. The city is marked with several monuments, busy markets, and few beaches that are a must-visit.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Udaipur: The Symbol of an Oriental Dream",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/udaipur.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The gorgeous city of Rajasthan sits beside the ridges of the Aravalli Hills and is known for being the city of shimmering lakes. Besides its lakes, tourists are also attracted to Udaipur for its magnificent mountains, incredible monuments, and breathtakingly beautiful gardens. Udaipur has also been lovingly known as the ‘Venice of the East.’ It has also been chosen many times as a perfect destination for a film location including the James Bond flick. Udaipur is sprinkled with colours, heartwarming people, lively markets, and every festival here is celebrated with the same jest.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Mahabaleshwar: A Delightful Getaway of the Western Ghats",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/mahabaleshwar.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "During British rule, Mahabaleshwar was the summer capital of the Mumbai Province. Snuggled in the heart of nature, the scenic Western Ghats; is a popular tourist attraction that is sure to captivate one’s imagination with numerous sparkling rivers, splendid waterfalls, luscious green valleys, and glorious mountain peaks. The most visited hill station is situated in the Sahyadri range of Maharashtra and is the place to go to for a peaceful retreat to rejuvenate. It is a place that hosts a breathtaking panoramic view of the magnificent mountains surrounded by the verdant forest.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "East India",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Bhubaneswar (The Land Of Sacred Sites)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/bubaneswar.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Popular as one of the oldest cities of India, Bhubaneswar presents striking architectural splendors of the past and the finest pilgrimage centers. This Indian tourist destination is a captivating city that didn’t fail to preserve its ancient richness and artistic motifs for its tourists coming from across the globe. Bhubaneswar has a huge number of enamoring temples that exhibit the splendid reminiscence of Odia culture. These temples paint the religious life of the city and represent tremendous archaeological and historical significance. Further, the city is most famous for hosting the Rath Jatra and Car Festival, which gathers devotees from all around.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Kolkata (The City Of Joy)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/kolkata.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "When we talk about Kolkata, it’s all about the architectural splendor, rich art galleries, historical significance and vibrant culture. The capital city of West Bengal is undeniably one of the most important cities of the country that carries a significant past, religious importance, along rich art and literary history. The grand architecture belonging to the colonial era and beyond presents a captivating contrast to the modernity of this metropolitan city. Kolkata has plenty of tourist attractions that you must visit on your vacation.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Patna: Dream Destination for History Buffs",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/patna.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Historically identified as Pataliputra, it is one of the oldest cities in the world. Ruled by mighty kings at different times in history, revered as the fertile lands on the banks of iconic River Ganges and renowned for its learning centers like Nalanda, it is one of the fastest developing cities in India. The capital city of Bihar is brimming with architectural marvels, stories of the past, and for being the epicenter of three major religions – Buddhism, Jainism, and Sikhism.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Puri: The Land of Golden Sand",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/puri.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The sacred pilgrimage site is also known as Jagannath Puri, located in the state of Odisha. It is also called the spiritual capital of Odisha. Puri is also believed to be the final resting place of Lord Vishnu. Besides being a top city to travel to amongst religious people, it is also known for its golden beaches that are ideal for surfing and other water sports activities. The city is not only visited by people visiting it for a pilgrimage tour but globetrotters, honeymooners, leisure travelers and nature lovers are also spotted here.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Siliguri: The Land of Endless Lush Green Plains",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/siliguri.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "One of the most fascinating tourists attractions of the district of Darjeeling is nestled between North Eastern Himalayas and West Bengal. It is an ideal place for people looking to explore a destination to its core. If it’s your first time traveling to Shillong, make sure to bask in the glorious nature, the fresh grassy fields, and treat your eyes to the beautiful view of snow-kissed mountain peaks. And it is even better if you are an adventurous spirit, then there are plenty of activities for you to do.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Central India",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Indore (Land Of Historic Attractions)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/indore.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Indore! The city filled with awe-inspiring temples, lush parks, bustling bazaars has never failed to fill hearts with utmost peace. The astounding architecture and historic attractions paint a glorious past and perfectly blends the modern and traditional culture to create its own vibrant and distinct identity. Interestingly, the city is blessed with pleasing weather all year round which is perfect to explore the hugely popular markets in the old city. So, don’t miss the opportunity to visit this amazing place.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Raipur: Dream City for Shopaholics",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/raipur.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "The city known for its rich cultural heritage is situated in Chhattisgarh. It has witnessed the rule of many powerful kings and is now famous for its large steel markets. The city is full of tourists wanting to visit the lakes, temples and shop crazily. The added advantage of visiting Raipur during the festive season is to seek the opportunity to indulge in celebrating each festival with great fervour and pomp that in turn gives the tourist an insight into the culture of Raipur.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "North-East India",
                      style: TextStyle(
                        fontFamily: "Times New Roman",
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Guwahati (Gateway of North East India)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/guwahati.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Blessed with amazing scenic views of the Brahmaputra and the mountain ranges alongside it, Guwahati is one of the most famous tourist spots in India. The city is rich in wildlife and is the gateway to the different heavenly scenic beauty of various places of the Northeast. Guwahati truly has a plethora of tourist attractions which makes holidays here even more enjoyable and fun. The capital city of the northeastern state of Assam is famous for its Kamakhya temple situated atop the Nilachal hill. Besides, there are numerous other temples, Anthropological museums, Forest museums, and Cottage Industries museums.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Imphal (The City Of Tranquil Greens)",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/imphal.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Imphal is one of the ancient cities in India brimmed with stunning landscapes and greenery. The city is blanketed with beautiful hills, valleys, forests, and numerous rivers. The well-planned temples, historical palaces, and ceremonial houses add to the peerless beauty of the city.  While visiting Imphal, you might even come across places that appear to be a painting with clouds hanging, low lush green fields, and small hills of the green-blue Namaijing and Koubou ranges. Besides, Imphal also has amazing places for the wildlife enthusiasts like the Manipur Zoological Gardens and Khonghampat Orchidarium, and others.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                        elevation: 14.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            const ListTile(
                              title: Text(
                                "Shillong: The Ideal Retreat Destination of Meghalaya",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: "Times New Roman",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              height: 150.0,
                              child: Image.asset('asset/shillong.png',
                                  fit: BoxFit.cover),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const ListTile(
                              subtitle: Text(
                                  "Fondly known as the Scotland of the East, this beautiful place is bountifully blessed with natural wonders like lakes, waterfalls, and hills. Shillong is a place to visit if you wish to become one with nature, understand the vast past and the present, learn the traditions as old as the bark of trees there and taste the steaming cuisines. The capital state of Meghalaya awaits every season with adventure spewing out of its heart. Despite the tourism flourishing in Shillong, it has managed to not forget its roots. Its vibrant heritage and fascinating culture will keep you mesmerized throughout your journey.",
                                  textAlign: TextAlign.justify),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
