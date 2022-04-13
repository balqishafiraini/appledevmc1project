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
                    slider: ["lampung", "yogyakarta"],
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
                                image: ["pantaimarina"],
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
                                detailName: "Bakso Son Haji Sony",
                                detailImage: "baksoSony",
                                desc: "Lorem ipsum dolor sit",
                                image: ["lampung", "rumahKayu", "newlg"],
                                price: "1000",
                                location: "Lampung",
                                open_hour: "12.00"
                            )]),
                        TourismModel(
                            tourismName: "Pulau Pahawang",
                            tourismImage: "pahawang",
                            detail: [DetailModel(
                                detailName: "Bakso Son Haji Sony",
                                detailImage: "baksoSony",
                                desc: "Lorem ipsum dolor sit",
                                image: ["lampung", "rumahKayu", "newlg"],
                                price: "1000",
                                location: "Lampung",
                                open_hour: "12.00"
                            )]),
                        TourismModel(
                            tourismName: "Air Terjun Way Lalaan",
                            tourismImage: "waylalaan",
                            detail: [DetailModel(
                                detailName: "Bakso Son Haji Sony",
                                detailImage: "baksoSony",
                                desc: "Lorem ipsum dolor sit",
                                image: ["lampung", "rumahKayu", "newlg"],
                                price: "1000",
                                location: "Lampung",
                                open_hour: "12.00"
                            )]),
                        TourismModel(
                            tourismName: "Mata Air Way Bekhak",
                            tourismImage: "waybekhak",
                            detail: [DetailModel(
                                detailName: "Bakso Son Haji Sony",
                                detailImage: "baksoSony",
                                desc: "Lorem ipsum dolor sit",
                                image: ["lampung", "rumahKayu", "newlg"],
                                price: "1000",
                                location: "Lampung",
                                open_hour: "12.00"
                            )]),
                            ],
                    accommodation: [
                        AccommodationModel(
                            accommodationName: "balqis transport",
                            accommodationImage: "lampung",
                            detail: [DetailModel(
                                detailName: "Bakso Son Haji Sony",
                                detailImage: "baksoSony",
                                desc: "Lorem ipsum dolor sit",
                                image: ["lampung", "rumahKayu", "newlg"],
                                price: "1000",
                                location: "Lampung",
                                open_hour: "12.00"
                            )]),
                        AccommodationModel(
                            accommodationName: "Wildan transport",
                            accommodationImage: "lampung",
                            detail: [DetailModel(
                                detailName: "Bakso Son Haji Sony",
                                detailImage: "baksoSony",
                                desc: "Lorem ipsum dolor sit",
                                image: ["lampung", "rumahKayu", "newlg"],
                                price: "1000",
                                location: "Lampung",
                                open_hour: "12.00"
                            )]),
                    ])),
            CategoryModel(
                image: "medan",
                cityName: "Medan",
                isPopular: false,
                cityDesc: "",
                cityAttribute:
                    CityModel(
                        slider: ["bali", "yogyakarta"],
                        food: [
                            FoodModel(
                                foodName: "rumah makan riu",
                                foodImage: "medan",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            FoodModel(
                                foodName: "rumah makan balqis",
                                foodImage: "medan",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "lembah hijau",
                                tourismImage: "medan",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            TourismModel(
                                tourismName: "lembah kuning",
                                tourismImage: "medan",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "balqis transport",
                                accommodationImage: "medan",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            AccommodationModel(
                                accommodationName: "Wildan transport",
                                accommodationImage: "medan",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ])),
            CategoryModel(
                image: "mentawai",
                cityName: "Mentawai",
                isPopular: false,
                cityDesc: "",
                cityAttribute:
                    CityModel(
                        slider: ["bali", "yogyakarta"],
                        food: [
                            FoodModel(
                                foodName: "rumah makan riu",
                                foodImage: "mentawai",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            FoodModel(
                                foodName: "rumah makan balqis",
                                foodImage: "mentawai",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "lembah hijau",
                                tourismImage: "mentawai",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            TourismModel(
                                tourismName: "lembah kuning",
                                tourismImage: "mentawai",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "balqis transport",
                                accommodationImage: "mentawai",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            AccommodationModel(
                                accommodationName: "Wildan transport",
                                accommodationImage: "mentawai",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ])),
            CategoryModel(
                image: "solo",
                cityName: "Solo",
                isPopular: false,
                cityDesc: "",
                cityAttribute:
                    CityModel(
                        slider: ["bali", "yogyakarta"],
                        food: [
                            FoodModel(
                                foodName: "rumah makan riu",
                                foodImage: "solo",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            FoodModel(
                                foodName: "rumah makan balqis",
                                foodImage: "solo",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "lembah hijau",
                                tourismImage: "solo",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            TourismModel(
                                tourismName: "lembah kuning",
                                tourismImage: "solo",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "balqis transport",
                                accommodationImage: "solo",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            AccommodationModel(
                                accommodationName: "Wildan transport",
                                accommodationImage: "solo",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ])),
            CategoryModel(
                image: "yogyakarta",
                cityName: "Yogyakarta",
                isPopular: true,
                cityDesc: "Kota Pelajar",
                cityAttribute:
                    CityModel(
                        slider: ["bali", "yogyakarta"],
                        food: [
                            FoodModel(
                                foodName: "rumah makan riu",
                                foodImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            FoodModel(
                                foodName: "rumah makan balqis",
                                foodImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "lembah hijau",
                                tourismImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            TourismModel(
                                tourismName: "lembah kuning",
                                tourismImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "balqis transport",
                                accommodationImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            AccommodationModel(
                                accommodationName: "Wildan transport",
                                accommodationImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ])),
            CategoryModel(
                image: "bali",
                cityName: "Bali",
                isPopular: true,
                cityDesc: "Pulau Seribu Pura",
                cityAttribute:
                    CityModel(
                        slider: ["bali", "yogyakarta"],
                        food: [
                            FoodModel(
                                foodName: "rumah makan riu",
                                foodImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            FoodModel(
                                foodName: "rumah makan balqis",
                                foodImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "lembah hijau",
                                tourismImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            TourismModel(
                                tourismName: "lembah kuning",
                                tourismImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "balqis transport",
                                accommodationImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            AccommodationModel(
                                accommodationName: "Wildan transport",
                                accommodationImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ])),
            CategoryModel(
                image: "semarang",
                cityName: "Semarang",
                isPopular: true,
                cityDesc: "Kota Lumpia",
                cityAttribute:
                    CityModel(
                        slider: ["bali", "yogyakarta"],
                        food: [
                            FoodModel(
                                foodName: "rumah makan riu",
                                foodImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            FoodModel(
                                foodName: "rumah makan balqis",
                                foodImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "lembah hijau",
                                tourismImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            TourismModel(
                                tourismName: "lembah kuning",
                                tourismImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "balqis transport",
                                accommodationImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            AccommodationModel(
                                accommodationName: "Wildan transport",
                                accommodationImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ])),
            CategoryModel(
                image: "belitung",
                cityName: "Belitung",
                isPopular: true,
                cityDesc: "Negeri Laskar Pelangi",
                cityAttribute:
                    CityModel(
                        slider: ["bali", "yogyakarta"],
                        food: [
                            FoodModel(
                                foodName: "rumah makan riu",
                                foodImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            FoodModel(
                                foodName: "rumah makan balqis",
                                foodImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        tourism: [
                            TourismModel(
                                tourismName: "lembah hijau",
                                tourismImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            TourismModel(
                                tourismName: "lembah kuning",
                                tourismImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                        ],
                        accommodation: [
                            AccommodationModel(
                                accommodationName: "balqis transport",
                                accommodationImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
                                )]),
                            AccommodationModel(
                                accommodationName: "Wildan transport",
                                accommodationImage: "yogyakarta",
                                detail: [DetailModel(
                                    detailName: "Bakso Son Haji Sony",
                                    detailImage: "baksoSony",
                                    desc: "Lorem ipsum dolor sit",
                                    image: ["lampung", "rumahKayu", "newlg"],
                                    price: "1000",
                                    location: "Lampung",
                                    open_hour: "12.00"
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
