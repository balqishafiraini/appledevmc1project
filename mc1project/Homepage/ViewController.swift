//
//  ViewController.swift
//  mc1project
//
//  Created by Balqis on 31/03/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, TripCellDelegate {
    
    
    //HOMEPAGE
    @IBOutlet weak var tableView: UITableView!
    
    var counterExplore = 0
    
    //HOMEPAGE
    // datasourcePopular
    
    // datasourceExplore
   
    var category: [CategoryModel] = [
            CategoryModel(
                image: "lampung",
                cityName: "Lampung",
                isPopular: false,
                cityDesc: "",
                cityAttribute: CityModel(
                    slider: ["lampung"],
                    food: [
                        FoodModel(
                            foodName: "Bakso Son Haji Sony",
                            foodImage: "baksoSony",
                            detail: [DetailModel(
                                detailName: "Bakso Son Haji Sony",
                                detailImage: "baksoSony",
                                desc: "In Bandar Lampung, meatballs which are better known as the Bakso Sony brand include the legendary meatballs. The reason is that almost the majority of Bandar Lampung residents have clearly tasted the delicacy of Sony's Meatballs.",
                                image: ["baksoSony"],
                                price: "20-40k",
                                location: "Jln. Wolter Monginsidi no. 42A, Bandar Lampung",
                                open_hour: "10.00 - 20.00"
                            )]),
                        FoodModel(
                            foodName: "Rumah Makan Jumbo Kakap",
                            foodImage: "jumbokakap",
                            detail: [DetailModel(
                                detailName: "Rumah Makan Jumbo Kakap",
                                detailImage: "jumbokakap",
                                desc: "Unpretentious restaurant offering seafood specialties, a convivial atmosphere & outdoor seating. We serve fresh and high quality seafood since 2010 Lampung best steamed fish",
                                image: ["jumbokakap"],
                                price: "75-200k",
                                location: "Jln. Ikan Kakap No. 45, Bandar Lampung",
                                open_hour: "11.00 - 21.00"
                            )]),
                        FoodModel(
                            foodName: "Taman Santap Rumah Kayu",
                            foodImage: "rumahKayu",
                            detail: [DetailModel(
                                detailName: "Taman Santap Rumah Kayu",
                                detailImage: "rumahKayu",
                                desc: "The place is very beautiful and shady, the chairs are very many ranging from tables to lesehan. Very suitable for gathering with family, co-workers, friends. The fish pond is large and there is a children's play area.",
                                image: ["rumahKayu"],
                                price: "100-200k",
                                location: "Jl. Arief Rahman Hakim No. 45, Way Halim, Bandar Lampung",
                                open_hour: "10.00-20.00"
                            )]),
                        FoodModel(
                            foodName: "Rumah Makan New LG",
                            foodImage: "newlg",
                            detail: [DetailModel(
                                detailName: "Rumah Makan New LG",
                                detailImage: "newlg",
                                desc: "The restaurant is most famous for its special dish, namely the menu of grilled rice at a friendly price. This restaurant is already quite famous and has become a favorite culinary place for local residents.",
                                image: ["newlg"],
                                price: "20-100k",
                                location: "Jl. Way Sekampung blok A no.1 Rw. Laut, Enggal, Bandar Lampung",
                                open_hour: "09.00-20.30"
                            )]),
                        FoodModel(
                            foodName: "Pempek 123",
                            foodImage: "pempek123",
                            detail: [DetailModel(
                                detailName: "Pempek 123",
                                detailImage: "pempek123",
                                desc: "Pempek 123 Lampung sells delicious fish pempek typical of Lampung with fresh fish ingredients and natural spices. The aroma and taste of real fish instead of flavoring make Pempek 123 Lampung very delicious.",
                                image: ["pempek123"],
                                price: "25-100k",
                                location: "Jl. Jend. Sudirman No. 15, Bandar Lampung",
                                open_hour: "09.00 - 17.00"
                            )]),
                        FoodModel(
                            foodName: "Pindang Meranjat Riu",
                            foodImage: "pindang",
                            detail: [DetailModel(
                                detailName: "Pindang Meranjat Riu",
                                detailImage: "pindang",
                                desc: "THE SQUARE Offering great sea views and modern design, The Square Restaurant serves Asian and international cuisine in both a buffet and a la carte style.",
                                image: ["pindang"],
                                price: "175-500k",
                                location: "Jl. Gatot Subroto no.136 Hotel Novotel Lampung, Bandar Lampung",
                                open_hour: "06.00-22.00"
                            )])],
                    tourism: [
                        TourismModel(
                            tourismName: "Pantai Marina",
                            tourismImage: "pantaimarina",
                            detail: [DetailModel(
                                detailName: "Pantai Marina",
                                detailImage: "pantaimarina",
                                desc: "Small bay backed by a cliffside cave, with a paved observation deck, rock formations & strong waves.",
                                image: ["pantaimarina1"],
                                price: "10k",
                                location: "Pantai Marina, Kalianda, Lampung Selatan, Lampung",
                                open_hour: ""
                            )]),
                        TourismModel(
                            tourismName: "Pantai Arang",
                            tourismImage: "pantaiarang",
                            detail: [DetailModel(
                                detailName: "Pantai Arang",
                                detailImage: "pantaiarang",
                                desc: "At Charcoal Beach, the place is really suitable for those of you who want to take a vacation and not far from the center of Bandar Lampung City. Here you can relax with friends or family. One of the attractions at Arang Beach is that you can relax on the cliffs of the hills with sea views.",
                                image: ["pantaiarang"],
                                price: "150k",
                                location: "Pantai Arang, Kalianda, Lampung Selatan, Lampung",
                                open_hour: "15.00-21.00 (weekdays), 09.00-21.00 (weekend)"
                            )]),
                        TourismModel(
                            tourismName: "Pantai Gigi Hiu",
                            tourismImage: "gigihiu",
                            detail: [DetailModel(
                                detailName: "Pantai Gigi Hiu",
                                detailImage: "gigihiu",
                                desc: "This secluded beach is famous for its jagged rock formations resembling shark teeth and the waves crashing against the rocks make your beach atmosphere very exotic. Because of its charm, this beach is a popular spot among hikers & photographers.",
                                image: ["tourismLampung", "tourismLampung1", "tourismLampung2", "tourismLampung3", "tourismLampung4", "tourismLampung5", "tourismLampung6"],
                                price: "10k",
                                location: "Gigi Hiu, Pekon Susuk, Kelumbayan, Tanggamus, Lampung",
                                open_hour: "24h"
                            )]),
                        TourismModel(
                            tourismName: "Pulau Pahawang",
                            tourismImage: "pahawang",
                            detail: [DetailModel(
                                detailName: "Pulau Pahawang",
                                detailImage: "pahawang",
                                desc: "If you love underwater treasures, traveling to Pahawang Island would be the right move for you. This island is often said to be a paradise for snorkelers because of the beauty of its underwater biota.",
                                image: ["pahawang"],
                                price: "150-250k",
                                location: "Pulau Pahawang, Punduh Pidada, Pesawaran, Lampung",
                                open_hour: ""
                            )]),
                        TourismModel(
                            tourismName: "Air Terjun Way Lalaan",
                            tourismImage: "waylalaan",
                            detail: [DetailModel(
                                detailName: "Air Terjun Way Lalaan",
                                detailImage: "waylalaan",
                                desc: "Way Lalaan is a constitution gradually waterfall that have 200 m distance of one to others, from the flow of Way Lalaan river which mouth of a river to Semangka Bay.",
                                image: ["waylalaan"],
                                price: "5k",
                                location: "Air Terjun Way Lalaan, Kampung Baru, Kota Agung Timur, Tanggamus, Lampung",
                                open_hour: ""
                            )]),
                        TourismModel(
                            tourismName: "Mata Air Way Bekhak",
                            tourismImage: "waybekhak",
                            detail: [DetailModel(
                                detailName: "Mata Air Way Bekhak",
                                detailImage: "waybekhak",
                                desc: "Lampung also has many destinations from land to mountains, Way Bekhak water spring is located in Pekon Sukaraja, Gunung Alip District, Tanggamus Regency. This one tour is interesting to visit, especially for those of you who like to play water.",
                                image: ["waybekhak"],
                                price: "2k",
                                location: "Mata Air Way Bekhak, Sukaraja, Gn. Alip, Tanggamus, Lampung",
                                open_hour: ""
                            )]),
                            ],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "BATIQA Hotel Lampung",
                            accommodationImage: "accomodationLampung",
                            detail: [DetailModel(
                                detailName: "BATIQA Hotel Lampung",
                                detailImage: "baksoSony",
                                desc: "Lorem ipsum dolor sit",
                                image: ["accomodationLampung", "accomodationLampung1", "accomodationLampung2", "accomodationLampung3", "accomodationLampung4", "accomodationLampung5", "accomodationLampung6", ],
                                price: "500-700k",
                                location: "Jl. Jend. Sudirman 140 Pahoman, Tanjung Karang, Bandar Lampung",
                                open_hour: ""
                            )]),
                        AccommodationModel(
                            accommodationName: "Chandra Inn",
                            accommodationImage: "chandraInn1",
                            detail: [DetailModel(
                                detailName: "Bakso Son Haji Sony",
                                detailImage: "chandraInn1",
                                desc: "Wisma Chandra is the right choice when visiting Bandar Lampung. The ideal combination of price, convenience and practicality, this place offers a friendly atmosphere with facilities designed for travelers like you.",
                                image: ["chandraInn1"],
                                price: "400k",
                                location: "Jl. Hayam Wuruk-Pemuda No. 1, Bandar Lampung",
                                open_hour: ""
                            )]),
                    ])),
            CategoryModel(
                image: "medan",
                cityName: "Medan",
                isPopular: false,
                cityDesc: "",
                cityAttribute:
                    CityModel(
                        slider: ["medan"],
                        food: [
                            FoodModel(
                                foodName: "Bihun Bebek Asie",
                                foodImage: "bihunAsie1",
                                detail: [DetailModel(
                                    detailName: "Bihun Bebek Asie",
                                    detailImage: "bihunAsie1",
                                    desc: " Bihun Bebek is vermicelli (bihun) topped with duck meat with pure duck broth. Asie, the shop owner, has been selling for decades and finally has loyal customers, apart from tourists. The Asie duck vermicelli sauce looks thick and cloudy, the original duck vermicelli with pure duck broth is thick with abundant vermicelli and chunks of duck meat. One serving of this duck vermicelli bowl can even be enjoyed for two.",
                                    image: ["bihunAsie1", "bihunAsie2", "bihunAsie3", "bihunAsie4", "bihunAsie5", "bihunAsie6", "bihunAsie7"],
                                    price: "60k-100k",
                                    location: "Jl. Kumango No.15, Kesawan, Medan",
                                    open_hour: "Mon-Sat: 07.00-11.00, Sun: OFF"
                                )]),
                            FoodModel(
                                foodName: "Bakmie Khas Hokkian Hock Seng",
                                foodImage: "bakmieSeng1",
                                detail: [DetailModel(
                                    detailName: "Bakmie Khas Hokkian Hock Seng",
                                    detailImage: "bakmieSeng1",
                                    desc: "Bakmie Hokkian Hock Seng noodles are served dry with soy sauce seasoning and abundant toppings. The most famous Medan-style Hokkien noodle and a must try is Hock Seng. This hokkian bakmi shop serves a bowl of full-flavored dishes. Starting from the oil, stew seafood such as shrimp, oysters, crab claws, plus shrimp balls and fish balls. In closing, there are pieces of pork and soy sauce eggs that add to the complete savory taste. As a garnish as well as a flavor enhancer, there is a sprinkling of scallions and coriander leaves.",
                                    image: ["bakmieSeng1"],
                                    price: "",
                                    location: "Jl. Gwangju No.17, Kota Medan",
                                    open_hour: "06.30-13.00"
                                )]),
                            FoodModel(
                                foodName: "Lontong Sayur Medan Ayin",
                                foodImage: "lontongSayur1",
                                detail: [DetailModel(
                                    detailName: "Lontong Sayur Medan Ayin",
                                    detailImage: "lontongSayur1",
                                    desc: "The characteristic of Lontong Sayur Medan is the vegetable jackfruit concoction without coconut milk, tauco, with potato chips, potato sauce, chickpeas, and red chilies. If you want to try Lontong Sayur Medan with a special taste, come to the Lontong Sayur Ayin shop. The jackfruit vegetable gravy is without coconut milk, so it feels light on the tongue and doesn't feel overwhelming even though it's served in a fairly solid portion of rice cake (lontong). According to the owner, the delicious taste of this vegetable rice cake is obtained from his secret recipe of spices.",
                                    image: ["lontongSayur1"],
                                    price: "20-75k",
                                    location: "Jl. Teuku Umar, Petisah Tengah, Medan Petisah, Kota Medan, Sumatera Utara",
                                    open_hour: "Mon-Sat: 06.30-15.30, Sun: OFF"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "Bukit Lawang",
                                tourismImage: "tourismMedan",
                                detail: [DetailModel(
                                    detailName: "Bukit Lawang",
                                    detailImage: "tourismMedan",
                                    desc: "Bukit Lawang is included in the Gunung Leuser National Park which is a conservation area for orangutan. The Bukit Lawang orangutan rehabilitation center was established in 1973. Its main objective is to preserve the orangutan population which is decreasing due to hunting, trade and deforestation. The center was closed in 2002 because it was suitable for use as a tourist site and not suitable for animal rehabilitation.",
                                    image: ["tourismMedan", "tourismMedan1", "tourismMedan2", "tourismMedan3", "tourismMedan4", "tourismMedan5", "tourismMedan6"],
                                    price: "50k",
                                    location: "Location: Bukit Lawang, Kec. Bohorok, Kabupaten Langkat, Sumatera Utara",
                                    open_hour: ""
                                )]),
                            TourismModel(
                                tourismName: "Maimun Palace",
                                tourismImage: "maimunPalace1",
                                detail: [DetailModel(
                                    detailName: "Maimun Palace",
                                    detailImage: "maimunPalace1",
                                    desc: "Istana Maimun is he palace of the Deli Sultanate and an icon of the city of Medan, this palace was designed by architects from the Dutch Royal Army for the Sultan of Deli. The architecture is what makes this palace unique and so popular, the interior design combines Malay, Islamic, Spanish, Indian, Dutch and even Italian elements. Now, Maimun Palace has been turned into a museum and one of the popular tourist attractions in Medan.",
                                    image: ["maimunPalace1"],
                                    price: "Adult: 10k, Kids: 5k",
                                    location: "Jl. Brigjend Katamso No.66, A U R, Kec. Medan Maimun, Kota Medan, Sumatera Utara 20151",
                                    open_hour: "08.00-17.00"
                                )]),
                            TourismModel(
                                tourismName: "Tjong A Fie Mansion Museum",
                                tourismImage: "tjongMansion1",
                                detail: [DetailModel(
                                    detailName: "Tjong A Fie Mansion Museum",
                                    detailImage: "tjongMansion1",
                                    desc: "Istana Maimun is he palace of the Deli Sultanate and an icon of the city of Medan, this palace was designed by architects from the Dutch Royal Army for the Sultan of Deli. The architecture is what makes this palace unique and so popular, the interior design combines Malay, Islamic, Spanish, Indian, Dutch and even Italian elements. Now, Maimun Palace has been turned into a museum and one of the popular tourist attractions in Medan.",
                                    image: ["tjongMansion1"],
                                    price: "Adult: 30k. Kids: 20k",
                                    location: "Jl. Jend. Ahmad Yani No.105, Kesawan, Kec. Medan Bar., Kota Medan, Sumatera Utara 20111",
                                    open_hour: "09.00-17.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "Jungle Inn",
                                accommodationImage: "jungleInn",
                                detail: [DetailModel(
                                    detailName: "Jungle Inn",
                                    detailImage: "jungleInn",
                                    desc: "Jungle Inn has been established since 1987. A unique inn with Balinese ornaments and a mixture of tropical forest style, makes this place very popular with local and foreign tourists visiting Bukit Lawang. In addition, tourists can also enjoy the melodious sound of birds chirping and see protected wild animals passing through the forest.",
                                    image: ["jungleInn"],
                                    price: "500k-1000k",
                                    location: "Bukit Lawang, Kecamatan Bahorok, Kabupaten Langkat, Sampe Raya, Sampe Raya, Indonesia, 20774",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "Villa Moringa",
                                accommodationImage: "MoringaVilla",
                                detail: [DetailModel(
                                    detailName: "Villa Moringa",
                                    detailImage: "MoringaVilla",
                                    desc: "Villa Moringa offers a spacious building with many beautiful corners in it. You can spoil your eyes by sitting in the beautiful garden overlooking the swimming pool. Especially if the weather is sunny and the wind blows lightly. Some areas in this villa have windows that directly face the garden and swimming pool. This villa is suitable if you want to go with family.",
                                    image: ["MoringaVilla"],
                                    price: "1500k-2000k",
                                    location: "Jl Jamin Ginting Kel Mangga, Kec Medan tuntungan, Medan, 20143, North Sumatra, Indonesia",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "Rindu Alam Hotel",
                                accommodationImage: "rinduHotel1",
                                detail: [DetailModel(
                                    detailName: "Rindu Alam Hotel",
                                    detailImage: "rinduHotel1",
                                    desc: "Rindu Alam Hotel Bukit Lawang has been operating since 1994 which consists of 66 rooms and 1 floor. Conveniently situated in Bukit Lawang, this hotel puts you close to attractions and interesting dining options. As an added bonus, restaurant is provided on-site to conveniently serve your needs.",
                                    image: ["rinduHotel1", "rinduHotel2", "rinduHotel3", "rinduHotel4", "rinduHotel5", "rinduHotel6", "rinduHotel7"],
                                    price: "500k-1500k",
                                    location: "Orangutan Street, Bukit Lawang 20774 Indonesia",
                                    open_hour: ""
                                )]),
                        ])),
            CategoryModel(
                image: "mentawai",
                cityName: "Mentawai",
                isPopular: false,
                cityDesc: "",
                cityAttribute:
                    CityModel(
                        slider: ["Mentawai (1)", "Mentawai (2)", "Mentawai (3)", ],
                        food: [
                            FoodModel(
                                foodName: "Pondok Sarapan Endang",
                                foodImage: "pondokEndang1",
                                detail: [DetailModel(
                                    detailName: "Pondok Sarapan Endang",
                                    detailImage: "pondokEndang1",
                                    desc: "Are you in Muara Siberut and looking for breakfast? Don't worry, Endang Breakfast Cottage can be your destination to find breakfast on Siberut Island. The location of this restaurant is not so far from the Muara Siberut Post Office.",
                                    image: ["pondokEndang1"],
                                    price: "",
                                    location: "Muara Siberut, South Siberut, Kepulauan Mentawai, West Sumatra 25393, Indonesia",
                                    open_hour: "06AM-8PM"
                                )]),
                            FoodModel(
                                foodName: "WavePark Bar and Restaurant",
                                foodImage: "foodMentawai",
                                detail: [DetailModel(
                                    detailName: "WavePark Bar and Restaurant",
                                    detailImage: "foodMentawai",
                                    desc: "WavePark's all-inclusive packages include accommodation in beachfront private villas and chef-prepared fusion cuisine. We offer a set resort menu which varies according to local supplies of fish, crab, shrimp and other delicacies. The WavePark Bar will always be the first and best-stocked bar in the Mentawais. With a dedicated bartender ready to serve your cold beverages, you're ready to watch the sunset over our beautiful bay",
                                    image: ["foodMentawai", "foodMentawai1", "foodMentawai2", "foodMentawai3", "foodMentawai4", "foodMentawai5", "foodMentawai6", ],
                                    price: "",
                                    location: "WavePark Resort, West Sumatra 25112 Indonesia), cuisine: Asia,Iindonesia",
                                    open_hour: ""
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "Awera Island",
                                tourismImage: "aweraIsland1",
                                detail: [DetailModel(
                                    detailName: "Awera Island",
                                    detailImage: "aweraIsland1",
                                    desc: "This island looks exotic surrounded by coconut trees and other plants. The waves are beautiful with clear sea water. In fact, the coral reefs at the bottom are clearly visible. There are many things that tourists can do while here, from swimming, snorkeling, walking on the beach, sunbathing, relaxing, and much more. There are also several resorts that you can stay in if you want to stay here for a long time.",
                                    image: ["aweraIsland1"],
                                    price: "Free",
                                    location: "Tuapejat, Sipora Utara, Kabupaten Kepulauan Mentawai, Sumatera Barat 25932",
                                    open_hour: "24 hours"
                                )]),
                            TourismModel(
                                tourismName: "Siruso Island",
                                tourismImage: "tourismMentawai",
                                detail: [DetailModel(
                                    detailName: "Siruso Island",
                                    detailImage: "tourismMentawai",
                                    desc: "Stretching white sand and clear sea water are the main attractions of Siruso Island. The distance to Siruso island is about 45 minutes from Sikakap sub-district by riding a speed boat. Siruso Island has three colors of sea water, on the inside it has a blue sea color with a predominantly green color while on the edge of the sea water is white and clear.One of the unique features of Siruso Island is there is a large rock that looks like a picture of a turtle swimming.",
                                    image: ["tourismMentawai", "tourismMentawai1", "tourismMentawai2", "tourismMentawai3", "tourismMentawai4", "tourismMentawai5", "tourismMentawai6"],
                                    price: "300k",
                                    location: "Kecamatan Sikakap, Kabupaten Kepulauan Mentawai)",
                                    open_hour: ""
                                )]),
                            TourismModel(
                                tourismName: "Bat Soumang Waterfall",
                                tourismImage: "soumangWaterfall1",
                                detail: [DetailModel(
                                    detailName: "Siruso Island",
                                    detailImage: "soumangWaterfall1",
                                    desc: "Bat Soumang Waterfall is a waterfall tourist attraction that is very interesting to visit even though it is still very natural and has not been equipped with facilities because it is located in the rural area. By motor boat, it takes 10-12 hours from Padang City, West Sumatra to get to Siberut Island, the largest island in the Mentawai Islands. Where the flow of water in Bat Soumang Waterfall is quite heavy and dangerous. But for those of you who like true adventure, there is no harm in trying and coming to a location surrounded by large rattan and wood forests.",
                                    image: ["soumangWaterfall1"],
                                    price: "",
                                    location: "",
                                    open_hour: ""
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "Arthur Homestay Mentawai",
                                accommodationImage: "arthurHomestay1",
                                detail: [DetailModel(
                                    detailName: "Arthur Homestay Mentawai",
                                    detailImage: "arthurHomestay1",
                                    desc: "The first cheap hotel in the Mentawai Islands is Arthur Homestay. This hotel is located in the Mapadegat Tuapejat Beach area, North Sipora, Mentawai. Besides offering a beach view, Arthur Homestay Mentawai is also equipped with facilities such as a bar, garden area, and barbecue. There are also WiFi facilities and vehicle rentals, which will certainly meet your vacation needs while in the Mentawai Islands.",
                                    image: ["arthurHomestay1", "Accomodation (1)", "Accomodation (2)", "Accomodation (3)"],
                                    price: "200k-500k",
                                    location: "Pantai Mapadegat, Sipora Utara, Kabupaten Kepulauan Mentawai, Sumatera Barat",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "Awera Resort",
                                accommodationImage: "aweraResort1",
                                detail: [DetailModel(
                                    detailName: "Awera Resort",
                                    detailImage: "aweraResort1",
                                    desc: "Awera Resort sits on the shores of a pristine tropical island in the Mentawais. With white sand running up to the edge of the property, get to experience the unreal waves of the Mentawais whilst enjoying the luxury and comfort of a resort! Located at the Northern end of the Central Mentawai Islands Awera has easy boat access to 13 waves in the local area with others being reachable with longer boat trips. The Mentawais are a year-round surf destination and offer amazing waves for all levels.",
                                    image: ["aweraResort1"],
                                    price: "",
                                    location: "Tuapejat, Sipora Utara, Kabupaten Kepulauan Mentawai, Sumatera Barat",
                                    open_hour: ""
                                )]),
                        ])),
            CategoryModel(
                image: "solo",
                cityName: "Solo",
                isPopular: false,
                cityDesc: "",
                cityAttribute:
                    CityModel(
                        slider: ["solo", "solo2", "solo3", "solo4", "solo5", ],
                        food: [
                            FoodModel(
                                foodName: "Hippusuta Coffee",
                                foodImage: "foodSolo",
                                detail: [DetailModel(
                                    detailName: "Hippusuta Coffee",
                                    detailImage: "foodSolo",
                                    desc: "Hippusuta is a cafe that presents the concept of Japanese bohemian style.  This cafe is suitable for millennials who have a hipster style with a Japanese style.  Hippusuta used many wooden instruments as accessories and decorations.This place is highly recommended for those of you who like Japanese-style bohemian themes.  There are various drinks available such as coffee, matcha, tea to milk drinks.",
                                    image: ["foodSolo", "foodSolo1", "foodSolo2", "foodSolo3", "foodSolo4", "foodSolo5", "foodSolo6"],
                                    price: "10k-50k",
                                    location: "Jalan S. Parman No. 2, Madegondo, Solo Baru",
                                    open_hour: "07.00-20.15"
                                )]),
                            FoodModel(
                                foodName: "Serabi Notosuman Ny. Lidia",
                                foodImage: "serabiNotosuman1",
                                detail: [DetailModel(
                                    detailName: "Serabi Notosuman Ny. Lidia",
                                    detailImage: "serabiNotosuman1",
                                    desc: "Serabi is prepared from ingredients consisting of rice flour, pandan, vanilla, sugar, coconut milk, and salt. Usually cooked in a small skillet made of clay and grilled over charcoal. Each region has its own peculiarities. There are dry pancakes and wet pancakes using gravy. There are also those who add toppings with various flavors and aromas.",
                                    image: ["serabiNotosuman1", "serabiNotosuman2", "serabiNotosuman3", "serabiNotosuman4", "serabiNotosuman5"],
                                    price: "3k",
                                    location: "Jl. Moh. Yamin No.28, Jayengan, Kec. Serengan, Kota Surakarta, Jawa Tengah 57152",
                                    open_hour: "05 - 20"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "Grojogan Jumog",
                                tourismImage: "jumogWaterfall1",
                                detail: [DetailModel(
                                    detailName: "Grojogan Jumog",
                                    detailImage: "jumogWaterfall1",
                                    desc: "Jumog Waterfall, at Ngargoyoso, Karanganyar Regency, is one of the sites included in the Indonesian tourism program, 'INTANPARI' (Industri Pertanian Pariwisata). The waterfall is named after the hill it is on, and stands approximately 12 meters tall.",
                                    image: ["jumogWaterfall1"],
                                    price: "5k-20k",
                                    location: "Jln.dk, Jl. Berjo, Gandu, Berjo, Kec. Ngargoyoso, Kabupaten Karanganyar, Jawa Tengah 57793",
                                    open_hour: "08.00-21.00"
                                )]),
                            TourismModel(
                                tourismName: "The Heritage Palace",
                                tourismImage: "tourismSolo",
                                detail: [DetailModel(
                                    detailName: "The Heritage Palace",
                                    detailImage: "tourismSolo",
                                    desc: "Tourist attractions with a classic European feel with historical buildings, antique cars, 3D museums and Omah Walik.  This building has a luxurious and majestic Roman style so that this tourist area is suitable for a place to take interesting self and family portraits.",
                                    image: ["tourismSolo", "tourismSolo1", "tourismSolo2", "tourismSolo3", "tourismSolo4", "tourismSolo5", "tourismSolo6"],
                                    price: "55.000",
                                    location: "Honggobayan, Pabelan, Kec. Kartasura, Kabupaten Sukoharjo, Jawa Tengah 57169)",
                                    open_hour: "Every day (Mon - Thurs from 10:00 - 18:00 WIB, Fri - Sun from 09:00 - 21:00"
                                )]),],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "Alila Hotel",
                                accommodationImage: "alilaHotel1",
                                detail: [DetailModel(
                                    detailName: "Alila Hotel",
                                    detailImage: "alilaHotel1",
                                    desc: "Alila Solo is a modern urban retreat that is set to become an icon in this heritage-rich city. A city steeped in ancient traditions and heir to the Mataram kingdom, offering access to the many cultural and natural wonders of Central Java, from royal palaces and magnificet, mysterious temples to exquisite batik textiles. This landmark luxury hotel in Solo, Indonesia rises above the city’s main commercial avenue, setting new benchmarks not only in service and style but also offering the largest ballroom and events space in Central Java.",
                                    image: ["alilaHotel1"],
                                    price: "1000k",
                                    location: "Jl. Slamet Riyadi No.562, Jajar, Kec. Laweyan, Kota Surakarta, Jawa Tengah 57144",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "Solia Zigna Kampung Batik Laweyan",
                                accommodationImage: "soliaZigna1",
                                detail: [DetailModel(
                                    detailName: "Solia Zigna Kampung Batik Laweyan",
                                    detailImage: "soliaZigna1",
                                    desc: "This accommodation carries a modern concept with a luxurious appearance. You can get great photos in a number of places, including the bedroom. The rooms at this hotel are quite spacious and dominated by beautiful monochrome colors. Supported by friendly service.",
                                    image: ["soliaZigna1", "soliaZigna2", "soliaZigna3", "soliaZigna4", "soliaZigna5", "soliaZigna6", "soliaZigna7", ],
                                    price: "500k",
                                    location: "Jl. Dr. Rajiman, No. 525, Laweyan, Solo, Jawa Tengah",
                                    open_hour: ""
                                )]),
                        ])),
            CategoryModel(
                image: "yogyakarta",
                cityName: "Yogyakarta",
                isPopular: true,
                cityDesc: "Kota Pelajar",
                cityAttribute:
                    CityModel(
                        slider: ["yogyakarta", "Yogyakarta (2)"],
                        food: [
                            FoodModel(
                                foodName: "Gudeg permata",
                                foodImage: "gudeg1",
                                detail: [DetailModel(
                                    detailName: "Gudeg permata",
                                    detailImage: "gudeg1",
                                    desc: "Gudeg Permata is one of Jogja's special foods that can only be purchased at night in front of the Permata cinema. This gudeg is one of the best I've ever eaten in Jogja.",
                                    image: ["gudeg1", "gudeg2", "gudeg3", "gudeg4", "gudeg5", "gudeg6", "gudeg7", ],
                                    price: "10k-20k",
                                    location: "Jl. Gajah Mada No.2, Gunungketur, Pakualaman, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55111",
                                    open_hour: "20.00-01.00"
                                )]),
                            FoodModel(
                                foodName: "Lesehan Terang Bulan",
                                foodImage: "lesehanBulan1",
                                detail: [DetailModel(
                                    detailName: "Lesehan Terang Bulan",
                                    detailImage: "lesehanBulan1",
                                    desc: "Lesehan Terang Bulan Malioboro is a place to eat that does not provide chairs and tables. Whoever comes here will sit on the floor. One of the menus that is quite famous here is the fried pigeon. In addition there are also fried chicken breasts, fried chicken thighs, fried duck, fried chicken heads, and many others.",
                                    image: ["lesehanBulan1"],
                                    price: "15k-50k",
                                    location: "Jl. Margo Mulyo No. 108, Yogyakarta , Indonesia",
                                    open_hour: "21.00-02.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "Luweng Sampang Waterfall",
                                tourismImage: "luwengSampang",
                                detail: [DetailModel(
                                    detailName: "Luweng Sampang Waterfall",
                                    detailImage: "A waterfall with a height of 5 meters is ready to welcome visitors, equipped with limestone reliefs on the right and left of the waterfall. No wonder Luweng Sampang Waterfall is dubbed as Jogja's Grand Canyon. This waterfall also has a historical side, it is said to be a place for the hermitage of Sunan Kalijaga.",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["luwengSampang", "luwengSampang1", "luwengSampang2", "luwengSampang3", "luwengSampang4", "luwengSampang5", "luwengSampang6"],
                                    price: "2k",
                                    location: "Jl. Juminahan, Kayen, Sampang, Kec. Gedang Sari, Kabupaten Gunung Kidul, Daerah Istimewa Yogyakarta 55863",
                                    open_hour: "Sun, Mon, Wed, Thurs, Sat: 06.00 - 18.00, Fri: 09.00-17.00"
                                )]),
                            TourismModel(
                                tourismName: "Tamansari",
                                tourismImage: "tamansari1",
                                detail: [DetailModel(
                                    detailName: "Tamansari",
                                    detailImage: "tamansari1",
                                    desc: "Taman Sari Yogyakarta or Taman Sari Keraton Yogyakarta is the site of the former palace gardens or gardens of the Ngayogyakarta Hadiningrat Palace.",
                                    image: ["tamansari1", "tamansari2", "tamansari3", "tamansari4", "tamansari5", ],
                                    price: "5k",
                                    location: "Patehan, Kecamatan Kraton, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55133",
                                    open_hour: "09.00 - 14.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "Puri Asri",
                                accommodationImage: "puriAsri1",
                                detail: [DetailModel(
                                    detailName: "Puri Asri",
                                    detailImage: "puriAsri1",
                                    desc: "Offering an outdoor swimming pool, barbecue and children's playground, Hotel Puri Asri is located in Magelang in the Central Java Region, 39 km from Yogyakarta. Relaxing rooms featuring soft décor are equipped with free Wi-Fi, flat-screen TVs and terraces, minibars, mini-fridges and tea and coffee making facilities. The suite includes a private pool.",
                                    image: ["puriAsri1", "puriAsri2", "puriAsri3", "puriAsri4", "puriAsri5"],
                                    price: "450k",
                                    location: "Jl. Cemp. No.9, Kemirirejo, Kec. Magelang Tengah, Kota Magelang, Jawa Tengah 56127",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "Nira Camper Village",
                                accommodationImage: "niraVillage1",
                                detail: [DetailModel(
                                    detailName: "JK Private Villa",
                                    detailImage: "Nira Camper Village",
                                    desc: "This villa is located right next to the rice fields. Located in Sleman, JK Private Villa is perfect for those of you who are looking for tranquility. With a Scandinavian interior, this villa looks neat and homey. In addition to a comfortable bed, you can also get a fully equipped kitchen and also a terrace to relax. Equipped with an outdoor swimming pool, of course, your stay experience will be more complete. Moreover, the location is close to the rice fields which are soothing to the eyes!",
                                    image: ["niraVillage1", "niraVillage2", "niraVillage3"],
                                    price: "850k",
                                    location: "Kregen, Wukirsari, Kec. Cangkringan, Kab. Sleman, Daerah Istimewa Yogyakarta 55583",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "JK Private Villa",
                                accommodationImage: "jkPrivateVilla1",
                                detail: [DetailModel(
                                    detailName: "JK Private Villa",
                                    detailImage: "jkPrivateVilla1",
                                    desc: "This villa is located right next to the rice fields. Located in Sleman, JK Private Villa is perfect for those of you who are looking for tranquility. With a Scandinavian interior, this villa looks neat and homey. In addition to a comfortable bed, you can also get a fully equipped kitchen and also a terrace to relax. Equipped with an outdoor swimming pool, of course, your stay experience will be more complete. Moreover, the location is close to the rice fields which are soothing to the eyes!",
                                    image: ["jkPrivateVilla1", "jkPrivateVilla2", "jkPrivateVilla3", "jkPrivateVilla4", "jkPrivateVilla5", "jkPrivateVilla6", "jkPrivateVilla7"],
                                    price: "2,3k",
                                    location: "Jl. Arjuna No.19, Pedak, Sinduharjo, Kec. Ngaglik, Kab. Sleman, Daerah Istimewa Yogyakarta 55581",
                                    open_hour: ""
                                )]),
                        ])),
            CategoryModel(
                image: "bali",
                cityName: "Bali",
                isPopular: true,
                cityDesc: "Pulau Seribu Pura",
                cityAttribute:
                    CityModel(
                        slider: ["bali", "bali2", "bali3", "bali4", ],
                        food: [
                            FoodModel(
                                foodName: "Massimo gelato Bali",
                                foodImage: "massimoGelato1",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "massimoGelato1",
                                    desc: "Rustic, chef-owned restaurant dishing up homemade pastas & pizzas, renowned for its gelato",
                                    image: ["massimoGelato1", "massimoGelato2", "massimoGelato3", "massimoGelato4", "massimoGelato5", "massimoGelato6", "massimoGelato7", ],
                                    price: "50-100k",
                                    location: "Jl. Danau Tamblingan No.228, Sanur, Denpasar Selatan, Kota Denpasar, Bali",
                                    open_hour: "08.00-23.00"
                                )]),
                            FoodModel(
                                foodName: "Mujair Nyat-Nyat Paka Bagong",
                                foodImage: "mujairNyat1",
                                detail: [DetailModel(
                                    detailName: "Mujair Nyat-Nyat Paka Bagong",
                                    detailImage: "mujairNyat1",
                                    desc: "Mujair nyat nyat Pak Bagong; a traditional Balinese dish of copious amounts of spices slathered on fish, famous among local and domestic tourist. Specializing in Mujaer caught from Lake Batur, nyatnyat would be the most popular dish. ",
                                    image: ["mujairNyat1", "mujairNyat2", "mujairNyat3", "mujairNyat4", "mujairNyat5", "mujairNyat6", "mujairNyat7", ],
                                    price: "150k",
                                    location: "Jl. Tirta Geduh, Bebalang, Bangli, Bali",
                                    open_hour: "08.00-17.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "Amed beach",
                                tourismImage: "amedBeach1",
                                detail: [DetailModel(
                                    detailName: "Amed beach",
                                    detailImage: "amedBeach1",
                                    desc: "Amed Beach in Bali is most likely already on your travel itinerary if you're a keen diver. The island’s eastern shoreline is an underwater playground, with Amed Beach attracting the larger crowd of divers.",
                                    image: ["amedBeach1", "amedBeach2", "amedBeach3", "amedBeach4", "amedBeach5", "amedBeach6", "amedBeach7", ],
                                    price: "5k",
                                    location: "Jalan Raya Amed, Bunutan, Karangasem, Bali",
                                    open_hour: "24h"
                                )]),
                            TourismModel(
                                tourismName: "Banyu Wana Amertha Waterfall",
                                tourismImage: "banyuWaterfall1",
                                detail: [DetailModel(
                                    detailName: "Banyu Wana Amertha Waterfall",
                                    detailImage: "banyuWaterfall1",
                                    desc: "Banyu Wana Amertha Waterfalls in Bedugul is one of the most untouched and underrated waterfalls in Bali. There are several sets of falls to explore at Banyu Wana Amertha which makes this location so unique!",
                                    image: ["banyuWaterfall1", "banyuWaterfall2", "banyuWaterfall3", "banyuWaterfall4", "banyuWaterfall5", "banyuWaterfall6", "banyuWaterfall7", ],
                                    price: "30k",
                                    location: "Wanagiri, Sukasada, Buleleng, Bali",
                                    open_hour: "08.00-17.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "Villa Above The Clouds",
                                accommodationImage: "aboveVilla1",
                                detail: [DetailModel(
                                    detailName: "Villa Above The Clouds",
                                    detailImage: "aboveVilla1",
                                    desc: "This villa is the right place for those of you who want to 'hide' in the middle of beautiful and peaceful nature. Don't forget to visit the famous Sacred Monkey Forest Sanctuary. This villa has a restaurant to make your stay more indulgent and memorable",
                                    image: ["aboveVilla1", "aboveVilla2", "aboveVilla3", "aboveVilla4", "aboveVilla5", "aboveVilla6", "aboveVilla7", ],
                                    price: "455k",
                                    location: "Jl. Baturiti Bedugul, Batunya, Baturiti, Tabanan, Bali",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "Bali Beach Glamping",
                                accommodationImage: "baliGlamping1",
                                detail: [DetailModel(
                                    detailName: "Bali Beach Glamping",
                                    detailImage: "baliGlamping1",
                                    desc: "Bali Beach Glamping is a stunning resort on Bali’s West Coast with a spectacular outlook over the Indian Ocean, offering breathtaking views, where the ocean and ricefield become one, private luxury tented accommodation, and specialising in weddings and retreats.",
                                    image: ["baliGlamping1", "baliGlamping2", "baliGlamping3", "baliGlamping4", "baliGlamping5", "baliGlamping6", "baliGlamping7", ],
                                    price: "600-900k",
                                    location: "Jl. Kebo Iwa, Br. Batu Tampih Kangin, Tabanan, Bali",
                                    open_hour: ""
                                )]),
                        ])),
            CategoryModel(
                image: "semarang",
                cityName: "Semarang",
                isPopular: true,
                cityDesc: "Kota Lumpia",
                cityAttribute:
                    CityModel(
                        slider: ["semarang"],
                        food: [
                            FoodModel(
                                foodName: "Ayam Goreng Pakne Heksa",
                                foodImage: "ayamGoreng1",
                                detail: [DetailModel(
                                    detailName: "Ayam Goreng Pakne Heksa",
                                    detailImage: "ayamGoreng1",
                                    desc: "This stall has been around for 22 years from around 1997. There are three main dishes that are most sought after at this shop, namely chicken, duck, and shrimp. In addition, this shop allows customers to add rice to their heart's content. Likewise with sambal, served as an accompaniment to the main side dish, so we also don't have to pay for it separately.",
                                    image: ["ayamGoreng1"],
                                    price: "20-75k",
                                    location: "Taman Kuliner Ventura, Jl. Ki Mangunsarkoro No. 15, Semarang, Indonesia",
                                    open_hour: "Mon-Sun: 09.00-17.00 WIB"
                                )]),
                            FoodModel(
                                foodName: "Depot Kowloon",
                                foodImage: "depotKowloon1",
                                detail: [DetailModel(
                                    detailName: "Depot Kowloon",
                                    detailImage: "depotKowloon1",
                                    desc: "Depot Kowloon is a non-halal Chinese restaurant in Semarang that sells Chinese foods such as kwetiaw, capcay, fried dumplings, and others more.",
                                    image: ["depotKowloon1"],
                                    price: "50k-150k",
                                    location: "Jl. Anjasmoro Raya 38, Semarang, 50142, Indonesia",
                                    open_hour: "Mon-Sat: 10.00-19.00, Sun: 09.00-15.00"
                                )]),
                            FoodModel(
                                foodName: "Soto Bokoran 1949",
                                foodImage: "foodSemarang",
                                detail: [DetailModel(
                                    detailName: "Soto Bokoran 1949",
                                    detailImage: "foodSemarang",
                                    desc: "One of the soto ayam stalls that became a pioneer in the city of Semarang was Soto Bokoran 1949. As the name implies, this soto stall has been established since 1949. Therefore, this soto ayam stall has become a regular for Soto lovers from generation to generation.",
                                    image: ["foodSemarang", "foodSemarang1", "foodSemarang2", "foodSemarang3", "foodSemarang4", "foodSemarang5", "foodSemarang6"],
                                    price: "15k-50k",
                                    location: "Jl. Plampitan no. 55, Semarang, Indonesia",
                                    open_hour: "Mon-Sun: 06.00-14.00 WIB"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "Brown Canyon",
                                tourismImage: "brownCanyon1",
                                detail: [DetailModel(
                                    detailName: "Brown Canyon",
                                    detailImage: "brownCanyon1",
                                    desc: "Brown Canyon offers a unique panorama that is suitable for capturing in photos or videos. Many high cliffs and hills have been eroded due to mining activities, giving the impression of a barren but very beautiful desert.",
                                    image: ["brownCanyon1"],
                                    price: "",
                                    location: "Rowosari, Tembalang, Semarang, Jawa Tengah",
                                    open_hour: ""
                                )]),
                            TourismModel(
                                tourismName: "Kampung Pelangi",
                                tourismImage: "tourismSemarang",
                                detail: [DetailModel(
                                    detailName: "Kampung Pelangi",
                                    detailImage: "tourismSemarang",
                                    desc: "Before being colored, this riverside village used to be a slum area. But the village called Kampung Wonosari has now changed. With very eye-catching colors, Kampung Wonosari has a new nickname, Kampung Pelangi. Not only the walls, the roof and every corner of the village streets also rainbow colored.",
                                    image: ["tourismSemarang", "tourismSemarang1", "tourismSemarang2", "tourismSemarang3", "tourismSemarang4", "tourismSemarang5", "tourismSemarang6"],
                                    price: "5k",
                                    location: "Jl. DR. Sutomo No.89, Randusari, Semarang Selatan, Kota Semarang, Jawa Tengah",
                                    open_hour: "24 hours"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "Awann Sewu Boutique Hotel and Suite Semarang",
                                accommodationImage: "awannSewu1",
                                detail: [DetailModel(
                                    detailName: "Awann Sewu Boutique Hotel and Suite Semarang",
                                    detailImage: "awannSewu1",
                                    desc: "Awann Sewu Boutique Hotel & Suite is unique personified, which continuously offers new and returning guests services that is the opposite of subpar. By understanding the needs of each customer, their comfort and enjoyment is guaranteed.",
                                    image: ["awannSewu1"],
                                    price: "600-800k",
                                    location: "Jl. Simpang 11 Sekayu, Semarang",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "Hotel Tentrem Semarang",
                                accommodationImage: "tentremHotel1",
                                detail: [DetailModel(
                                    detailName: "Hotel Tentrem Semarang",
                                    detailImage: "tentremHotel1",
                                    desc: "Throughout its history, Semarang is renowned as one of the main cities of commerce in Nusantara islands, since the days of old Mataram Kingdom. Its strategic location has made Semarang a cultural melting pot between East and West.",
                                    image: ["tentremHotel1", "tentremHotel2", "tentremHotel3", "tentremHotel4", "tentremHotel5", "tentremHotel6", "tentremHotel7", ],
                                    price: "1300-1400k",
                                    location: "Jl Gajahmada No 123, Semarang",
                                    open_hour: ""
                                )]),
                        ])),
            CategoryModel(
                image: "belitung",
                cityName: "Belitung",
                isPopular: true,
                cityDesc: "Negeri Laskar Pelangi",
                cityAttribute:
                    CityModel(
                        slider: ["belitung1", "belitung2", "belitung3", ],
                        food: [
                            FoodModel(
                                foodName: "Batu Garuda Restaurant",
                                foodImage: "foodBelitung",
                                detail: [DetailModel(
                                    detailName: "Batu Garuda Restaurant",
                                    detailImage: "foodBelitung",
                                    desc: "We serve fresh local seafood, by the white sand beach we also have fresh coconut and ice cold beer can help arrange for boat trip to ocean and island hopping.",
                                    image: ["foodBelitung", "foodBelitung1", "foodBelitung2", "foodBelitung3", "foodBelitung4", "foodBelitung5", "foodBelitung6"],
                                    price: "30-150k",
                                    location: "Jl. Tanjung Kelayang, Belitung, ",
                                    open_hour: "10.00-19.00"
                                )]),
                            FoodModel(
                                foodName: "Kedai Mak Jannah",
                                foodImage: "kedaiMak1",
                                detail: [DetailModel(
                                    detailName: "Kedai Mak Jannah",
                                    detailImage: "kedaiMak1",
                                    desc: "Kedai Mak Jannah was founded in 1970. In the typical local culinary menu, you will find lots of fillings such as shredded beef, vermicelli, rice cake and potato chips. ",
                                    image: ["kedaiMak1", "kedaiMak2", "kedaiMak3", "kedaiMak4", "kedaiMak5", "kedaiMak6", "kedaiMak7"],
                                    price: "20k",
                                    location: "Jl. Merdeka, Tanjung Pandan, Belitung",
                                    open_hour: "07.00-13.00; 16.00-23.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "Kaolin Lake Belitung",
                                tourismImage: "kaolinLake1",
                                detail: [DetailModel(
                                    detailName: "Kaolin Lake Belitung",
                                    detailImage: "kaolinLake1",
                                    desc: "Once a mining area, this scenic lake is known for its bright blue waters & white mineral deposits.",
                                    image: ["kaolinLake1", "kaolinLake2", "kaolinLake3", "kaolinLake4", "kaolinLake5", "kaolinLake6", "kaolinLake7"],
                                    price: "",
                                    location: "Perawas, Tanjung Pandan, Belitung, Bangka Belitung",
                                    open_hour: ""
                                )]),
                            TourismModel(
                                tourismName: "Leebong Island",
                                tourismImage: "leebongIsland1",
                                detail: [DetailModel(
                                    detailName: "Leebong Island",
                                    detailImage: "leebongIsland1",
                                    desc: "Leebong Island is located in the southwest of the island of Belitung. The island is surrounded by a vast expanse of white sand bank. The unique natural tropical forest richness with unique simpor leaves, combined with mangrove make this island so wonderful.",
                                    image: ["leebongIsland1", "leebongIsland2", "leebongIsland3", "leebongIsland4", "leebongIsland5", "leebongIsland6", "leebongIsland7"],
                                    price: "",
                                    location: "Pegantungan, Badau, Belitung, Bangka Belitung",
                                    open_hour: ""
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "Fairfield by Marriott Belitung",
                                accommodationImage: "fairfieldMarriott1",
                                detail: [DetailModel(
                                    detailName: "Fairfield by Marriott Belitung",
                                    detailImage: "fairfieldMarriott1",
                                    desc: "Enjoy a relaxing stay at Fairfield by Marriott Belitung, a modern hotel resort located in the heart of Belitung, Indonesia. We offer a unique hotel experience with resort spaces designed to resemble a “Rumah Panggung” traditional stage house.",
                                    image: ["fairfieldMarriott1", "fairfieldMarriott2", "fairfieldMarriott3", "fairfieldMarriott4", "fairfieldMarriott5", "fairfieldMarriott6", "fairfieldMarriott7"],
                                    price: "900-2000k",
                                    location: "Jl. Patimura No. 1, Tanjung Pandan, Belitung",
                                    open_hour: ""
                                )]),
                            AccommodationModel(
                                accommodationName: "Rock And Wreck Dive Resort",
                                accommodationImage: "rockResort1",
                                detail: [DetailModel(
                                    detailName: "Rock And Wreck Dive Resort",
                                    detailImage: "rockResort1",
                                    desc: "Situated on one of the most beautiful beaches in Southeast Asia. The Rock and Wreck Dive Resort is truly one of a kind. Belitung is a laid back island with azure seas, fine white sand and fantastic coral reefs. Locals are genuinely friendly, always smiling and happy with their life.",
                                    image: ["rockResort1", "rockResort2", "rockResort3", "rockResort4", "rockResort5", "rockResort6", "rockResort7"],
                                    price: "500-750k",
                                    location: "Jl. Tanjung Kelayang No 28, Keciput, Belitung",
                                    open_hour: ""
                                )]),
                        ]))
        ]
    
    var exploreCategory: [CategoryModel] = []
    var tripCategory: [CategoryModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        countExplore()
    }
    
    func registerCell() {
        tableView.register(UINib(nibName: "TripCell", bundle: nil), forCellReuseIdentifier: "tripCellID")
        tableView.register(UINib(nibName: "ExploreCell", bundle: nil), forCellReuseIdentifier: "exploreCellID")
    }
    
    func countExplore() {
        
        for item in category {
            if item.isPopular == false {
                counterExplore += 1
                exploreCategory.append(item)
            } else {
                tripCategory.append(item)
            }
        }
    
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return counterExplore
        }
    }
    
    //HEADER TITLE
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "Popular City" : "Explore More"
    }
    

    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let headerView = view as? UITableViewHeaderFooterView
        else {
            return }
        headerView.textLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        headerView.textLabel?.textColor = UIColor(red: 0.00, green: 0.42, blue: 0.34, alpha: 1.00)
        headerView.textLabel?.frame = CGRect(x: 20, y: 8, width: 320, height: 20)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 200 : 125
    }
    
    // TRIP CELL
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "tripCellID", for: indexPath) as? TripCell)!
            cell.objectModel = tripCategory
            cell.delegate = self
            return cell
        } else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "exploreCellID", for: indexPath) as? ExploreCell)!
            cell.exploreImage.image = UIImage(named: exploreCategory[indexPath.row].image ?? "")
            cell.exploreCity.text = exploreCategory[indexPath.row].cityName
            
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "CategorizeCityID") as? CategorizeCityViewController {
            vc.category = exploreCategory[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    func navigateToDetail(dataSelected: CategoryModel?) {
        if let vc = storyboard?.instantiateViewController(identifier: "CategorizeCityID") as? CategorizeCityViewController {
            vc.category = dataSelected
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
}
