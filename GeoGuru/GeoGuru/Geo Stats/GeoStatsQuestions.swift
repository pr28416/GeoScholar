//
//  GeoStatsQuestions.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 5/25/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import Foundation

class statCategories {
    let countriesContinents = [
        ["Largest Country in the World","Russia","Russia","Canada","China","United States"],
        ["Smallest Country in the World","Vatican City","Vatican City","Nauru","Tokelau","San Marino"],
        ["Most Populous Country in the World","China","China","India","United States","Indonesia"],
        ["Least Populous Country in the World","Vatican City","Vatican City","Nauru","Liechtenstein","Palau"],
        ["Largest Continent in the World","Asia","Asia","Africa","North America","Antarctica"],
        ["Smallest Continent in the World","Australia and Oceania","Australia and Oceania","South America","Europe","Antarctica"],
        ["Most Populous Continent in the World","Asia","Asia","Africa","Europe","North America"],
        ["Least Populous Continent in the World (excluding Antarctica)","Australia and Oceania","Australia and Oceania","South America","Europe","North America"],
        ["Largest Island by Area","Greenland","Greenland","Baffin Island","Madagascar","New Guinea"],
        ["World Population","7.58 billion","7.58 billion","7.65 billion","7.51 billion","7.45 billion"],
        ["Most Densely Populated Country in the World","Monaco","Monaco","Bangladesh","Taiwan","Singapore"],
        ["Least Densely Populated Country in the World","Mongolia","Mongolia","Russia","Canada","Kazakhstan"],
        ["Countries Sharing the Greatest Number of Borders with other Countries","China and Russia","China and Russia","China and India","Russia and India","India and Saudi Arabia"]
    ]
    let highLowPoints = [
        ["Highest Point in the World","Mount Everest","Mount Everest","K2","Kanchenjunga","Nanda Devi"],
        ["Lowest Point in the World","Mariana Trench (Challenger Deep)","Mariana Trench (Challenger Deep)","Puerto. Rico Trench","Java Trench","Molloy Deep"],
        ["Lowest Surface Point in Asia","Dead Sea","Dead Sea","Lake Baikal","Lake Balkhash","Tonle Sap"],
        ["Lowest Surface Point in Africa","Lake Assal","Lake Assal","Lake Victoria","Lake Tanganyika","Lake Turkana"],
        ["Lowest Surface Point in South America","Laguna del Carbon","Laguna del Carbon","Lake Maracaibo","Gulf of Guayaquil","Lake Titicaca"],
        ["Lowest Surface Point in North America","Death Valley","Death Valley","Lake Pontchartrain","Grand Canyon","Everglades"],
        ["Lowest Surface Point in Europe","Caspian Sea","Caspian Sea","Lake Ladoga","Black Sea","Lake Como"],
        ["Lowest Surface Point in Australia/Oceania","Lake Eyre","Lake Eyre","Milford Sound","Coral Sea","Guadalcanal"],
        ["Lowest Surface Point in Antarctica","Byrd Glacier","Byrd Glacier","McMurdo Station","Bellingshausen Sea","Antarctic Peninsula"],
        ["Highest Point in Asia","Mount Everest","Mount Everest","K2","Kanchenjunga","Hkakabo Razi"],
        ["Highest Point in South America","Cerro Anconcagua","Cerro Anconcagua","Chimborazo","Cotopaxi","Ojos del Salado"],
        ["Highest Point in North America","Denali","Denali","Mount Whitney","Mount Elbert","Mount Rainier"],
        ["Highest Point in Africa","Mount Kilimanjaro","Mount Kilimanjaro","Mount Kenya","Jebel Toubkal","Ras Dejen"],
        ["Highest Point in Europe","Mount El'brus","Mount El'brus","Mount Korab","Coma Pedrosa","Zugspitze"],
        ["Highest Point in Antarctica","Vinson Massif","Vinson Massif","Mount Tyree","Mount Shinn","Mount Kirkpatrick"],
        ["Highest Point in Australia/Oceania","Mount Kosciuszko","Mount Kosciuszko","Mount Wilhelm","Mount Giluwe","Mount Kubor"],
        ["Tallest Mountain Above and Below Sea Level","Mauna Kea","Mauna Kea","Mauna Loa","Mount Everest","K2"],
        ["Highest Mountain Above Sea Level","Mount Everest","Mount Everest","Mauna Kea","Mauna Loa","K2"]
    ]
    let lengthLandforms = [
        ["Longest Mountain Range Above Sea Level","Andes Mountains","Andes Mountains","Himalayas","Rocky Mountains","Kunlun Shan Mountains"],
        ["Longest Mountain Range Above and Below Sea Level","Mid-Ocean Ridge","Mid-Ocean Ridge","Andes Mountains","Himalayas","Rocky Mountains"],
        ["Largest Cave Chamber by Area","Sarawak Chamber, Gunung Mulu National Park, Malaysia","Sarawak Chamber, Gunung Mulu National Park, Malaysia","Miao Room, Guizhou Province, China","Son Doong Cave, Vietnam","Mammoth Cave, Kentucky, United States"],
        ["Largest Cave Chamber by Volume","Miao Room, Guizhou Province, China","Miao Room, Guizhou Province, China","Sarawak Chamber, Gunung Mulu National Park, Malaysia","Son Doong Cave, Vietnam","Mammoth Cave, Kentucky, United States"],
        ["Longest Cave System","Mammoth Cave, Kentucky, United States","Mammoth Cave, Kentucky, United States","Krubera Cave, Abkhazia, Georgia","Sistema Sac Actun Underwater Cave System, Quintana Roo, Mexico","Optymistychna Cave, Ukraine"],
        ["Lowest Point in the Pacific Ocean","Mariana Trench (Challenger Deep)","Mariana Trench (Challenger Deep)","Puerto Rico Trench","Java Trench","Molloy Deep"],
        ["Lowest Point in the Atlantic Ocean","Puerto Rico Trench","Puerto Rico Trench","Mariana Trench (Challenger Deep)","Java Trench","Molloy Deep"],
        ["Lowest Point in the Indian Ocean","Java Trench","Java Trench","Mariana Trench (Challenger Deep)","Puerto Rico Trench","Molloy Deep"],
        ["Lowest Point in the Arctic Ocean","Molloy Deep","Molloy Deep","Mariana Trench (Challenger Deep)","Puerto Rico Trench","Java Trench"],
        ["Largest Ocean","Pacific Ocean","Pacific Ocean","Atlantic Ocean","Indian Ocean","Arctic Ocean"],
        ["Smallest Ocean","Arctic Ocean","Arctic Ocean","Pacific Ocean","Atlantic Ocean","Indian Ocean"],
        ["Largest Sea in the World","Coral Sea","Coral Sea","Sea of Okhotsk","Mediterranean Sea","Caribbean Sea"],
        ["Longest River in the World","Nile River","Nile River","Amazon River","Yangtze River","Mississippi River"],
        ["Longest River in Africa","Nile River","Nile River","Congo River","Niger River","Zambezi River"],
        ["Longest River in South America","Amazon River","Amazon River","Orinoco River","Parana River","Madeira River"],
        ["Longest River in Asia","Yangtze River","Yangtze River","Yellow River","Indus River","Mekong River"],
        ["Longest River in North America","Mississippi-Missouri River","Mississippi-Missouri River","Rio Grande","Colorado River","Ohio River"],
        ["Longest River in Europe","Volga River","Volga River","Danube River","Dnieper River","Rhine River"],
        ["Largest River Drainage Basin in the World","Amazon River","Amazon River","Ganges River","Congo River","Nile River"],
        ["Largest River Drainage Basin in South America","Amazon River","Amazon River","Orinoco River","Parana River","Madeira River"],
        ["Largest River Drainage Basin in Africa","Congo River","Congo River","Nile River","Niger River","Zambezi River"],
        ["Largest River Drainage Basin in North America","Mississippi-Missouri River","Mississippi-Missouri River","Rio Grande","Colorado River","Ohio River"],
        ["Largest River Drainage Basin in Asia","Ob-Irtysh River","Ob-Irtysh River","Ganges River","Mekong River","Yellow River"],
        ["Largest Lake in the World","Caspian Sea","Caspian Sea","Lake Superior","Lake Victoria","Lake Maracaibo"],
        ["Largest Canyon in the World","Grand Canyon, Arizona, United States","Grand Canyon, Arizona, United States","Yarlung Tsangpo Grand Canyon, Tibet, China","Kali Gandaki Gorge, Nepal","Cotahuasi Canyon, Peru"],
        ["Largest Coral Reef Ecosystem in the World","Great Barrier Reef, Queensland, Australia","Great Barrier Reef, Queensland, Australia","Apo Reef, Occidential Mindoro Province, Philippines","Mesoamerican Barrier Reef System, Caribbean Sea","Florida Keys, Florida, United States"],
        ["Greatest Tidal Range in the World","Bay of Fundy, Canada","Bay of Fundy, Canada","Ungava Bay, Quebec, Canada","Cook Inlet, Alaska, United States","Rio Gallegos, Argentina"],
        ["Tallest Waterfall in the World","Angel Falls, Venezuela","Angel Falls, Venezuela","Tugela Falls, South Africa","Tres Hermanas Falls, Peru","Olo'upena Falls, Hawaii, United States"],
        ["Deepest Lake in the World","Lake Baikal, Russia","Lake Baikal, Russia","Lake Balkhash","Caspian Sea","Lake Tanganyika"],
        ["Oldest Lake in the World","Lake Baikal, Russia","Lake Baikal, Russia","Lake Balkhash","Dead Sea","Lake Turkana"]
    ]
    let lengthLandmarks = [
        ["Tallest Building in the World","Burj Khalifa, Dubai, United Arab Emirates","Burj Khalifa, Dubai, United Arab Emirates","Shanghai Tower, Shanghai, China","Abraj Al-Bait Clock Tower, Mecca, Saudi Arabia","Ping An Financial Center, Shenzhen, China"],
        ["Tallest Pyramid in the World","Great Pyramid of Khufu, Egypt","Great Pyramid of Khufu, Egypt","Great Pyramid of Cholula, Puebla, Mexico","Pyramid of Khafre, Egypt","Pyramid of the Sun, State of Mexico, Mexico"],
        ["Longest Wall in the World","Great Wall of China","Great Wall of China","Roman Walls of Lugo, Galicia, Spain","Walls of Ston, Dalmatia, Croatia","Great Wall of Gorgan, Golestan Province, Iran"],
        ["Longest Road in the World","Pan-American Highway","Pan-American Highway","Highway 1, Australia","Trans-Siberian Highway, Russia","Trans-Canada Highway, Canada"],
        ["Longest Railroad in the World","Trans-Siberian Railway, Russia","Trans-Siberian Railway, Russia","Beijing-Guangzhou Railway, China","Mumbai-Ahmedabad High-Speed Rail Corridor, India","California High-Speed Railway, United States"],
        ["Longest Bridge in the World","Danyang-Kunshan Grand Bridge, China","Danyang-Kunshan Grand Bridge, China","Changhua-Kaohsiung Viaduct, Taiwan","Sheikh Jaber Al-Ahmad Al-Sabah Causeway, Kuwait","Penang Bridge, Malaysia"],
        ["Longest Suspension Bridge in the World","Akashi-Kaikyo Bridge, Japan","Akashi-Kaikyo Bridge, Japan","Xihoumen Bridge, Zhejiang Province, China","Osmangazi Bridge, Turkey","Hoga Kusten Bridge, Sweden"],
        ["Tallest Road Bridge in the World","Millau Viaduct, France","Millau Viaduct, France","Yavuz Sultan Selim Bridge, Turkey","Russky Bridge, Russia","Sutong Yangtze River Bridge, Jiangsu Province, China"],
        ["Largest Reservoir by Surface Area","Lake Volta, Volta River, Ghana","Lake Volta, Volta River, Ghana","Kuybyshev Reservoir, Russia","Lake Kariba, Zambia-Zimbabwe","Lake Nasser, Egypt"],
        ["Largest Reservoir by Volume","Lake Kariba, Zambia-Zimbabwe","Lake Kariba, Zambia-Zimbabwe","Bratsk Reservoir, Russia","Lake Volta, Ghana","Manicouagan Reservoir, Canada"],
        ["Tallest Dam in the World","Jinping-I Dam, Yalong River, Sichuan Province, China","Jinping-I Dam, Yalong River, Sichuan Province, China","Nurek Dam, Vakhsh River, Tajikistan","Hoover Dam, Colorado River, Arizona-Nevada, United States","Tehri Dam, Bhagirathi River, Uttarakhand, India"],
        ["Largest Hydroelectric Power Station in the World","Three Gorges Dam, Yangtze River, Hubei Province, China","Three Gorges Dam, Yangtze River, Hubei Province, China","Itaipu Dam, Parana River, Brazil-Paraguay","Simon Bolivar (Guri) Dam, Caroni River, Venezuela","Tarbela Dam, Indus River, Pakistan"],
        ["Longest Submarine Cable in the World","Sea-Me-We 3 Cable","Sea-Me-We 3 Cable","African Coast to Europe Cable","Fiber-Optic Link Around the Globe (FLAG)","South Atlantic 3/West Africa Submarine Cable"],
        ["Largest National Park in the World","Northeastern Greenland National Park, Greenland","Northeastern Greenland National Park, Greenland","Namib-Naukluft National Park, Namibia","Wood Buffalo National Park, Canada","Jim Corbett National Park, India"],
        ["Tallest Statue in the World","Statue of Unity, Gujarat, India","Statue of Unity, Gujarat, India","Spring Temple Buddha Statue, Henan Province, China","Laykyun Sekkya Buddha Statue, Myanmar","Birth of the New World Statue, Puerto Rico"],
        ["Most Visited Country in the World","France","France","Spain","Germany","Italy"]
    ]
    let tempExtremes = [
        ["Tallest Building in the World","Burj Khalifa, Dubai, United Arab Emirates","Burj Khalifa, Dubai, United Arab Emirates","Shanghai Tower, Shanghai, China","Abraj Al-Bait Clock Tower, Mecca, Saudi Arabia","Ping An Financial Center, Shenzhen, China"],
        ["Tallest Pyramid in the World","Great Pyramid of Khufu, Egypt","Great Pyramid of Khufu, Egypt","Great Pyramid of Cholula, Puebla, Mexico","Pyramid of Khafre, Egypt","Pyramid of the Sun, State of Mexico, Mexico"],
        ["Longest Wall in the World","Great Wall of China","Great Wall of China","Roman Walls of Lugo, Galicia, Spain","Walls of Ston, Dalmatia, Croatia","Great Wall of Gorgan, Golestan Province, Iran"],
        ["Longest Road in the World","Pan-American Highway","Pan-American Highway","Highway 1, Australia","Trans-Siberian Highway, Russia","Trans-Canada Highway, Canada"],
        ["Longest Railroad in the World","Trans-Siberian Railway, Russia","Trans-Siberian Railway, Russia","Beijing-Guangzhou Railway, China","Mumbai-Ahmedabad High-Speed Rail Corridor, India","California High-Speed Railway, United States"],
        ["Longest Bridge in the World","Danyang-Kunshan Grand Bridge, China","Danyang-Kunshan Grand Bridge, China","Changhua-Kaohsiung Viaduct, Taiwan","Sheikh Jaber Al-Ahmad Al-Sabah Causeway, Kuwait","Penang Bridge, Malaysia"],
        ["Longest Suspension Bridge in the World","Akashi-Kaikyo Bridge, Japan","Akashi-Kaikyo Bridge, Japan","Xihoumen Bridge, Zhejiang Province, China","Osmangazi Bridge, Turkey","Hoga Kusten Bridge, Sweden"],
        ["Tallest Road Bridge in the World","Millau Viaduct, France","Millau Viaduct, France","Yavuz Sultan Selim Bridge, Turkey","Russky Bridge, Russia","Sutong Yangtze River Bridge, Jiangsu Province, China"],
        ["Largest Reservoir by Surface Area","Lake Volta, Volta River, Ghana","Lake Volta, Volta River, Ghana","Kuybyshev Reservoir, Russia","Lake Kariba, Zambia-Zimbabwe","Lake Nasser, Egypt"],
        ["Largest Reservoir by Volume","Lake Kariba, Zambia-Zimbabwe","Lake Kariba, Zambia-Zimbabwe","Bratsk Reservoir, Russia","Lake Volta, Ghana","Manicouagan Reservoir, Canada"],
        ["Tallest Dam in the World","Jinping-I Dam, Yalong River, Sichuan Province, China","Jinping-I Dam, Yalong River, Sichuan Province, China","Nurek Dam, Vakhsh River, Tajikistan","Hoover Dam, Colorado River, Arizona-Nevada, United States","Tehri Dam, Bhagirathi River, Uttarakhand, India"],
        ["Largest Hydroelectric Power Station in the World","Three Gorges Dam, Yangtze River, Hubei Province, China","Three Gorges Dam, Yangtze River, Hubei Province, China","Itaipu Dam, Parana River, Brazil-Paraguay","Simon Bolivar (Guri) Dam, Caroni River, Venezuela","Tarbela Dam, Indus River, Pakistan"],
        ["Longest Submarine Cable in the World","Sea-Me-We 3 Cable","Sea-Me-We 3 Cable","African Coast to Europe Cable","Fiber-Optic Link Around the Globe (FLAG)","South Atlantic 3/West Africa Submarine Cable"],
        ["Largest National Park in the World","Northeastern Greenland National Park, Greenland","Northeastern Greenland National Park, Greenland","Namib-Naukluft National Park, Namibia","Wood Buffalo National Park, Canada","Jim Corbett National Park, India"],
        ["Tallest Statue in the World","Statue of Unity, Gujarat, India","Statue of Unity, Gujarat, India","Spring Temple Buddha Statue, Henan Province, China","Laykyun Sekkya Buddha Statue, Myanmar","Birth of the New World Statue, Puerto Rico"],
        ["Most Visited Country in the World","France","France","Spain","Germany","Italy"]
    ]
    let northSouth = [
        ["Northernmost Permanently Inhabited City/Settlement in the World","Alert, Canada","Alert, Canada","Resolute, Canada","Reykjavik, Iceland","Longyearbyen, Svalbard, Norway"],
        ["Northernmost Permanently Inhabited City/Settlement with more than 1000 people","Longyearbyen, Svalbard, Norway","Longyearbyen, Svalbard, Norway","Resolute, Canada","Alert, Canada","Reykjavik, Iceland"],
        ["Largest City North of the Arctic Circle","Murmansk, Russia","Murmansk, Russia","Reykjavik, Iceland","Helsinki, Finland","Anchorage, Alaska"],
        ["Southernmost City in the World","Ushuaia, Tierra del Fuego, Argentina","Ushuaia, Tierra del Fuego, Argentina","Wellington, New Zealand","Cape Town, South Africa","Coyhaique, Chile"],
        ["Southernmost Town in the World","Puerto Toro, Chile","Puerto Toro, Chile","Ushuaia, Argentina","Punta Arenas, Chile","Puerto Williams, Chile"],
        ["Northernmost Capital City in the World","Reykjavik, Iceland","Reykjavik, Iceland","Helsinki, Finland","Oslo, Norway","Tallinn, Estonia"],
        ["Northernmost Point of Land on Earth","Kaffeklubben Island, Greenland","Kaffeklubben Island, Greenland","Oodaaq Island, Greenland","Cape Morris Jesup, Iceland","Severny Island, Russia"],
        ["Northernmost Active Volcano on Earth","Beerenberg, Jan Mayen, Norway","Beerenberg, Jan Mayen, Norway","Akademia Nauk, Russia","Mount Redoubt, Alaska, United States","Sakurajima Volcano, Japan"],
        ["Northernmost Lake in the World","Lake North Pole, North Pole","Lake North Pole, North Pole","Lake Malaren, Sweden","Lake Ladoga, Russia","Lake Baikal, Russia"],
        ["Northernmost Crater Lake in the World","Lake Lapparjarvi, Finland","Lake Lapparjarvi, Finland","Crater Lake, Oregon, United States","Mount Kusatsu-Shirane Crater Lakes, Japan","Maly Semyachik Volcano Crater Lake, Russia"],
        ["Southernmost Navigable Body of Water","Bay of Whales, Ross Sea, Antarctica","Bay of Whales, Ross Sea, Antarctica","Weddell Sea, Antarctica","Bellingshausen Sea, Antarctica","Lake Vostok, Antarctica"],
        ["Westernmost Point on Land in the World","Attu Island, United States","Attu Island, United States","Little Diomede Island, United States","Big Diomede Island, Russia","Niihau Island, Hawaii, United States"],
        ["Easternmost Point on Land in the World","Caroline Island, Kiribati","Caroline Island, Kiribati","Vatoa Island, Fiji","Fatutaka Island, Solomon Islands","Nukulaelae Atoll, Tuvalu"],
        ["Point Farthest from the Earth’s Center","Chimborazo, Ecuador","Chimborazo, Ecuador","Cotopaxi, Ecuador","Mount Everest, Nepal-China","Kanchenjunga, Nepal-India"],
        ["Highest Navigable Lake in the World","Lake Titicaca, Bolivia-Peru","Lake Titicaca, Bolivia-Peru","Licancabur Lake, Chile","Yamdrok Lake, Tibet, China","Tso Lhamo Lake, Sikkim, India"],
        ["Most Remote Capital City in the World","Wellington, New Zealand and Canberra, Australia","Wellington, New Zealand and Canberra, Australia","Male, Maldives","Reykjavik, Iceland","Brasilia, Brazil"],
        ["Most Remote City with a Population Greater Than 500,000 People","Honolulu, Hawaii, United States","Honolulu, Hawaii, United States","Wellington, New Zealand","Majuro, Marshall Islands","Anadyr, Russia"],
        ["Most Remote Airport in the World","Mataveri International Airport, Easter Island, Chile","Mataveri International Airport, Easter Island, Chile","Chokurdakh Airport, Yakutia, Russia","Svalbard Airport, Longyearbyen, Svalbard, Norway","Tenzing-Hillary Airport, Nepal"]
    ]
}
