//
//  Factoid.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 9/23/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit

class Factoid: UIViewController {
    
    let facts = [
        ["Alabama", """
            Capital: Montgomery
            Major Cities: Birmingham, Montgomery, Mobile, Huntsville, Tuscaloosa, Dothan, Auburn
            Population: 4,870,000
            Area: 52,419 sq mi
            Bordering States: Florida, Georgia, Mississippi, Tennessee
            Nicknames: Yellowhammer State, Cotton State, Heart of Dixie
            
            Mountain Ranges: Appalachian Mountains, Florida Ridge Hills
            Rivers: Tennessee River, Chattahoochee River, Alabama River, Coosa River, Tallapoosa River, Tombigbee River, Conecuh River, Elk River, Cahaba River, Black Warrior River
            Lakes and Reservoirs: Bankhead Lake, Lake Martin, Weiss Lake, Wheeler Lake
            Bays and Gulfs: Mobile Bay, Gulf of Mexico, Perdido Bay
            Straits: Perdido Pass
            Plateaus: Cumberland Plateau, Piedmont Plateau, Sand Mountain Plateau Region
            Peninsulas, Capes, and Points: Mobile Point
            Islands: Dauphin Island, Gaillard Island, Ono Island
            Caves: DeSoto Caverns
            Canyons and Gorges: Dismals Canyon, Tennessee River Gorge
            Swamps, Marshes, and Wetlands: Beaver Creek Swamp, Mobile-Tensaw River Delta
            Valleys: Tennessee Valley, Sequatchie Valley
            Other Landforms: Lookout Mountain, Red Mountain
            Other Bodies of Water: Mississippi Sound, Tennessee-Tombigbee Waterway, Intracoastal Waterway
            Mountains: Cheaha Mountain, Monte Sano Mountain, Red Mountain
            
            National Forests: Conecuh National Forest, Talladega National Forest, Tuskegee National Forest, William B. Bankhead National Forest
            National Monuments: Birmingham Civil Rights National Monument, Freedom Rights National Monument, Russell Cave National Monument
            Other Sites: USS Alabama, U.S. Space and Rocket Center, Birmingham Civil Rights Institute, Vulcan Statue, Point Mallard Park, Sloss Furnaces, Huntsville Botanical Garden, Gulf State Park, Fort Gaines, Cheaha State Park, Noccalula Falls Park, Ruffner Mountain Nature Preserve
            
            International/Major Airports: Birmingham-Shuttlesworth International Airport, Huntsville International Airport
            """],
        ["Alaska", """
            Capital: Juneau
            Major Cities: Anchorage, Juneau, Fairbanks, Sitka, Ketchikan
            Population: 740,000
            Area: 665,384 sq mi
            Nicknames: The Last Frontier
            
            Mountain Ranges: Alaska Range, Brooks Range, Aleutian Range, Coast Mountains, St. Elias Mountains, Chugach Mountains, Wrangell Mountains, Kenai Mountains, Kuskokwim Mountains, Chilkat Range
            Rivers: Yukon River, Kuskokwim River, Porcupine River, Tanana River, Innoko River, Koyukuk River
            Lakes and Reservoirs: Kenai Lake, Iliamna Lake, Skilak Lake, Twin Lakes, Tangle Lakes, Lake Clark, Becharof Lake
            Bays and Gulfs: Gulf of Alaska, Glacier Bay, Yakutat Bay, Disenchantment Bay, Bristol Bay, Nushagak Bay, Kachemak Bay
            Seas: Bering Sea, Beaufort Sea
            Straits: Dixon Entrance, Peril Strait, Shelikof Strait, Chatham Strait, Ice Strait, Stephens Passage, Sumner Strait
            Plateaus: York Plateau
            Peninsulas, Capes, and Points: Alaska Peninsula, Seward Peninsula, Kenai Peninsula, Cleveland Peninsula, Lindenberg Peninsula, Glass Peninsula, Cape Wrangell, Cape Krusenstern
            Isthmuses and Spits: Homer Spit
            Islands: Kodiak Island, Prince of Wales Island, Revillagigedo Island, Chichagof Island, Baranof Island, Admiralty Island, Annette Island, Kuiu Island, Kupreanof Island, Mitkof Island, Woewodski Island, Etolin Island
            Archipelagoes: Aleutian Islands, Alexander Archipelago
            Canyons and Gorges: Keystone Canyon
            Valleys: Tanana Valley, Mendenhall Valley
            Other Landforms: Malaspina Glacier, Bering Glacier, Hubbard Glacier, Nabesna Glacier, Bagley Icefield, Russell Fjord
            Other Bodies of Water: Cook Inlet, Kotzebue Sound, Prince William Sound, Frederick Sound, Moira Sound, Lynn Canal, Duncan Canal, Seymour Canal, Turnagain Arm, Knik Arm, Turnagain Arm
            Mountains: Denali, Mount St. Elias, Mount Foraker, Mount Bona, Mount Blackburn, Mount Sanford, Mount Vancouver, Mount Fairweather, Mount Hubbard, Mount Bear, Mount Shishaldin
            
            National Parks: Denali National Park, Gates of the Arctic National Park, Glacier Bay National Park, Katmai National Park, Kenai Fjords National Park, Kobuk Valley National Park, Lake Clark National Park, Wrangell-St. Elias National Park
            National Forests: Chugach National Forest, Tongass National Forest
            National Monuments: Admiralty Island National Monument, Aniakchak National Monument, Cape Krusenstern National Monument, Misty Fjords National Monument, Word War II Valor in the Pacific National Monument
            Other Sites: Prudhoe Bay Oil Field, Alaska Native Heritage Center, Point Woronzof Park, Chugach State Park
            
            International/Major Airports: Ted Stevens Anchorage International Airport, Fairbanks International Airport, Juneau International Airport
            """],
        ["Arizona", """
            Capital: Phoenix
            Major Cities: Phoenix, Tucson, Mesa, Chandler, Gilbert, Glendale, Scottsdale, Tempe, Peoria, Surprise
            Population: 6,940,000
            Area: 113,990 sq mi
            Bordering States: California, Utah, Nevada, New Mexico, Colorado
            Nicknames: Grand Canyon State, Apache State, Aztec State
            
            Mountain Ranges: Santa Catalina Mountains, Santa Rita Mountains, Mazatzal Mountains, McDowell Mountains, Rucson Mountains, Rincon Mountains, Chiricahua Mountains, Superstition Mountains, San Francisco Peaks, White Mountains, Hualapai Mountains, Dome Rock Mountains
            Rivers: Colorado River, Gila River, Little Colorado River, Salt River, Santa Cruz River, Verde River
            Lakes and Reservoirs: Lake Powell, Lake Mead, Lake Havasu, Lake Mohave, Theodore Roosevelt Lake, San Carlos Lake
            Deserts: Sonoran Desert, Painted Desert, Yuma Desert, Tonopah Desert, Lechuguilla Desert, Mojave Desert, Chihuahuan Desert
            Plateaus: Colorado Plateau, Mogollon Plateau, Kaibab Plateau
            Plains and Basins: Cactus Plain
            Caves: Grand Canyon Caverns, Kartchner Caverns
            Canyons and Gorges: Grand Canyon, Antelope Canyon, Glen Canyon, Oak Creek Canyon, Sabino Canyon, Marble Canyon
            Valleys: Monument Valley, Mohave Valley, Chinle Valley, Cienega Valley, Parker Valley
            Swamps, Marshes, and Wetlands: Tres Rios Wetlands
            Other Landforms: Vermilion Cliffs, The Wave, Chinle Formation, Moenkopi Formation, Hurricane Cliffs, Tonto Natural Bridge
            Other Bodies of Water: Havasu Falls, Havasu Creek, Grand Falls
            Mountains: Humphreys Peak, Agassiz Peak, Fremont Peak, Mount Baldy, Doyle Peak, Camelback Mountain, Mount Lemmon
            
            National Parks: Grand Canyon National Park, Petrified Forest National Park, Saguaro National Park
            National Forests: Apache-Sitgreaves National Forest, Coconino National Forest, Coronado National Forest, Kaibab National Forest, Prescott National Forest, Tonto National Forest
            National Monuments: Agua Fria National Monument, Canyon de Chelly National Monument, Casa Grande Ruins National Monument, Chiricahua National Monument, Grand Canyon-Parashant National Monument, Hohokam Pima National Monument, Ironwood Forest National Monument, Montezuma Castle National Monument, Navajo National Monument, Organ Pipe Cactus National Monument, Pipe Spring National Monument, Sonoran Desert National Monument, Sunset Crater Volcano National Monument, Tonto National Monument, Tuzigoot National Monument, Vermilion Cliffs National Monument, Walnut Canyon National Monument, Wupatki National Monument
            Other Sites: Meteor Crater National Natural Landmark, Biosphere 2, Desert Botanical Garden, Lowell Observatory, Four Corners Monument
            
            Dams: Hoover Dam, Glen Canyon Dam, New Weddell Dam, Theodore Roosevelt Dam, Bartlett Dam, Parker Dam
            International/Major Airports: Phoenix Sky Harbor International Airport, Tucson International Airport, Phoenix-Mesa Gateway Airport
            """],
        ["Arkansas", """
            Capital: Little Rock
            Major Cities: Little Rock, Fort Smith, Fayetteville, Springdale, Jonesboro
            Population: 2,990,000
            Area: 53,178 sq mi
            Bordering States: Texas, Louisiana, Mississippi, Oklahoma, Missouri, Tennessee
            Nicknames: Natural State

            Mountain Ranges: Ozark Mountains, Ouachita Mountains, Boston Mountains, U.S. Interior Highlands
            Rivers: Mississippi River, Arkansas River, Red River of the South, White River, Ouachita River, St. Francis River, Black River, Cache River, Saline River, Little Missouri River
            Lakes and Reservoirs: Bull Shoals Lake, Table Rock Lake, Greers Ferry Lake, Lake Dardanelle, Lake Ouachita, Millwood Lake, Beaver Lake, DeGray Lake, Lake Conway
            Plateaus: Ozark Plateau
            Plains and Basins: Gulf Coastal Plain, Arkansas Delta, Mississippi Alluvial Plain
            Caves: Blanchard Springs Caverns
            Valleys: Arkansas River Valley
            Other Landforms: Crowley’s Ridge, Piney Woods
            Other Bodies of Water: Bayou Bartholomew
            Mountains: Mount Magazine, Mount Nebo, Petit Jean Mountain, Shinall Mountain

            National Parks: Hot Springs National Park
            National Forests: Ouachita National Forest, Ozark National Forest, St. Francis National Forest
            Other Sites: Black Fork Mountain Wilderness, Bathhouse Row, Pea Ridge National Military Park, Arkansas Post National Memorial, Crater of Diamonds State Park, Pinnacle Mountain State Park, Buffalo National River, Toltec Mounds Archaeological State Park, War Memorial Stadium, Missouri and Northern Arkansas Railroad

            Dams: Bull Shoals Dam
            International/Major Airports: Bill and Hillary Clinton National Airport
            """],
        ["California", """
            Capital: Sacramento
            Major Cities: Los Angeles, San Diego, San Jose, San Francisco, Fresno, Sacramento, Long Beach, Oakland, Bakersfield, Anaheim, Santa Ana, Riverside, Stockton, Chula Vista, Irvine, Fremont, San Bernardino, Modesto, Fontana, Oxnard, Moreno Valley, Huntington Beach, Glendale
            Population: 39,300,000
            Area: 163,694 sq mi
            Bordering States: Oregon, Nevada, Arizona
            Nicknames: The Golden State, El Dorado State

            Mountain Ranges: Sierra Nevada, Cascade Range, Klamath Mountains, San Gabriel Mountains, Santa Cruz Mountains, San Bernardino Mountains, Laguna Mountains, San Jacinto Mountains, Santa Rosa Mountains, Santa Ana Mountains, Santa Susana Mountains, Tehachapi Mountains, Santa Monica Mountains, Diablo Mountains, Chocolate Mountains, Orocopia Mountains, Chuckwalla Mountains, White Mountains, Inyo Mountains, Trinity Alps, Santa Ynez Mountains, Topatopa Mountains, Sierra Madre, Sierra Pelona, Chemehuevi Mountains, Whipple Mountains, Providence Mountains
            Rivers: Colorado River, Sacramento River, San Joaquin River, Klamath River, Pit River, Eel River, Amargosa River, Salinas River, American River
            Lakes and Reservoirs: Lake Tahoe, Salton Sea, Owens Lake, Mono Lake, Lexington Reservoir, Clear Lake, Shasta Lake, Trinity Lake
            Bays and Gulfs: Gulf of Santa Catalina, San Francisco Bay, Monterey Bay, Gulf of the Farallones, Suisun Bay, Humboldt Bay, Richardson Bay, San Diego Bay, Santa Monica Bay
            Straits: Carquinez Strait, Oakland Estuary, Santa Barbara Channel
            Deserts: Mojave Desert, Sonoran Desert, Colorado Desert, Yuha Desert, Amargosa Desert
            Plateaus: Modoc Plateau, Santa Rosa Plateau
            Plains and Basins: Oxnard Plain, Great Basin
            Peninsulas, Capes, and Points: Monterey Peninsula, Balboa Peninsula, San Francisco Peninsula, Palo Verdes Peninsula, Tiburon Peninsula, Marin Headlands, Point Reyes, Point Dume, Point Loma
            Isthmuses and Spits: Silver Strand, Isthmus of Santa Catalina
            Islands: Santa Catalina Island, Santa Barbara Island, Santa Cruz Island, Santa Rosa Island, San Miguel Island, San Nicolas Island, San Clemente Island, Balboa Island, Terminal Island, Anacapa Island
            Archipelagoes: Channel Islands, Farallon Islands
            Caves: Lake Shasta Caverns, Mitchell Caverns, Black Chasm Cave
            Canyons and Gorges: Laguna Canyon, San Timoteo Canyon, San Clemente Canyon, Black Star Canyon, Soledad Canyon
            Swamps, Marshes, and Wetlands: Suisun Marsh, Madrona Marsh, Goleta Slough, Los Cerritos Wetlands, Ballona Wetlands
            Valleys: Central Valley, San Joaquin Valley, Yosemite Valley, Death Valley, Owens Valley, Antelope Valley, Santa Clara River Valley, San Fernando Valley, Santa Clarita Valley, Simi Valley, Coachella Valley, Imperial Valley, Saline Valley, Eureka Valley
            Other Landforms: Moenkopi Formation, Redonda Mesa, Goat Rock Beach, Natural Bridges State Beach, North Dome, Half Dome, Glacier Point, Cajon Pass, San Francisquito Pass, Sutter Buttes, Red Cones, Salton Buttes, Mono-Inyo Craters, Pisgah Crater, Algodones Dunes, Kelso Dunes, Whitney Glacier
            Other Bodies of Water: Santa Clara Valley Aquifer, All-American Canal
            Mountains: Mount Whitney, Mount Shasta, North Palisade, White Mountain Peak, Mount Williamson, Mammoth Mountain, San Jacinto Peak, Lassen Peak, Mount Humphreys, Mount San Antonio, Mount Langley, Glass Mountain, Mount Tom, Mount Lyell, Red Slate Mountain

            National Parks: Sequoia National Park, Redwood National Park, Klamath National Park, Death Valley National Park, Joshua Tree National Park, Pinnacles National Park, Channel Islands National Park, Lassen Volcanic National Park
            National Forests: Angeles National Forest, Cleveland National Forest, Eldorado National Forest, Humboldt-Toiyabe National Forest, Inyo National Forest, Klamath National Forest, Lassen National Forest, Los Padres National Forest, Mendocino National Forest, Modoc National Forest, Plumas National Forest, Rogue River-Siskiyou National Forest, San Bernardino National Forest, Sequoia National Forest, Shasta-Trinity National Forest, Sierra National Forest, Six Rivers National Forest, Stanislaus National Forest, Tahoe National Forest
            National Monuments: Berryessa Snow Mountain National Monument, Cabrillo National Monument, California Coastal National Monument, Carrizo Plain National Monument, Castle Mountains National Monument, Cesar E. Chavez National Monument, Devils Postpile National Monument, Fort Ord National Monument, Giant Sequoia National Monument, Lava Beds National Monument, Mojave Trails National Monument, Muir Woods National Monument, San Gabriel Mountains National Monument, Sand to Snow National Monument, Santa Rosa and San Jacinto Mountains National Monument, World War II Valor in the Pacific National Monument
            Other Sites: Golden Gate Bridge, Disneyland, Hollywood, Alcatraz Island, Balboa Park, Legoland California, SeaWorld San Diego, Griffith Observatory, Hollywood Boulevard, San Diego Zoo, Monterey Bay Aquarium, Hearst Castle, La Brea Tar Pits, Santa Monica Pier, USS Midway Museum, Lombard Street, Bay Bridge, Union Square, Squaw Valley Sea Resort

            Dams: Oroville Dam, Shasta Dam, New Melones Dam, Pine Flat Dam, Trinity Dam, New Bullards Bar Dam, New Don Pedro Dam, Seven Oaks Dam, New Exchequer Dam
            International/Major Airports: Los Angeles International Airport, San Francisco International Airport, San Diego International Airport, Oakland International Airport, John Wayne Airport, Norman Y. Mineta San Jose International Airport, Sacramento International Airport, Ontario International Airport, Bob Hope Airport, Long Beach Airport

            """],
        ["Colorado", """
            Capital: Denver
            Major Cities: Denver, Colorado Springs, Aurora, Fort Collins, Lakewood, Thornton, Arvada, Westminster
            Population: 5,550,000
            Area: 104,093 sq mi
            Bordering States: Utah, Arizona, New Mexico, Wyoming, Oklahoma, Kansas, Nebraska
            Nicknames: Centennial State Highest State

            Mountain Ranges: Rocky Mountains, Sawatch Range, Sangre de Cristo Mountains, San Juan Mountains, Mosquito Range, Front Range, Elk Mountains, Park Rage, Medicine Bow Mountains, Culebra Range, Gore Range
            Rivers: Rio Grande, Arkansas River, Colorado River, Canadian River, Green River, North Platte River, Cimarron River, South Platte River
            Lakes and Reservoirs: Blue Mesa Reservoir, John Martin Reservoir, Lake Granby
            Plateaus: Colorado Plateau, Uncompahgre Plateau
            Caves: Cave of the Winds
            Canyons and Gorges: Glenwood Canyon, Rattlesnake Canyon, Royal Gorge
            Swamps, Marshes, and Wetlands: Blanca Wetlands
            Valleys: San Luis Valley
            Other Landforms: Moenkopi Formation, Collegiate Peaks, Colorado Mineral Belt
            Other Bodies of Water: Bridal Veil Falls
            Mountains: Mount Elbert, Mount Evans, Pikes Peak, Longs Peak

            National Parks: Black Canyon of the Gunnison National Park, Great Sand Dunes National Park, Mesa Verde National Park, Rocky Mountain National Park
            National Forests: Arapaho National Forest, Grand Mesa National Forest, Gunnison National Forest, Pike National Forest, Rio Grande National Forest, Roosevelt National Forest, Routt National Forest, San Isabel National Forest, San Juan National Forest, Uncompahgre National Forest, White River National Forest
            National Monuments: Browns Canyon National Monument, Canyons of the Ancients National Monument, Chimney Rock National Monument, Colorado National Monument, Dinosaur National Monument, Florissant Fossil Beds National Monument, Hovenweep National Monument, Yucca House National Monument
            Other Sites: Cliff Palace, Manitou Cliff Dwellings, Chapin Mesa Archaeological Museum, Front Range Urban Corridor, Comanche National Grassland, Cimarron National Grassland, North Cheyenne Canon Park, San Juan Volcanic Field

            Dams: Blue Mesa Dam
            International/Major Airports: Denver International Airport, City of Colorado Springs Municipal Airport

            """],
        ["Connecticut", """
            Capital: Hartford
            Major Cities: Bridgeport, New Haven, Stamford, Hartford, Waterbury
            Population: 3,580,000
            Area: 5,543 sq mi
            Bordering States: New York, Massachusetts, Rhode Island
            Nicknames: The Constitution State, The Nutmeg State, The Provisions State

            Mountain Ranges: Taconic Mountains, Berkshire Hills, Metacomet Ridge, Hanging Hills
            Rivers: Connecticut River, Housatonic River, Quinnebaug River, Farmington River, Quinnipiac River
            Lakes and Reservoirs: Candlewood Lake, Lake Lillinonah, Twin Lakes, Mashapaug Lake, Pinewood Lake
            Bays and Gulfs: Little Narragansett Bay
            Peninsulas, Capes, and Points: Shippan Point, City Point
            Islands: Mason’s Island, Calf Island
            Archipelagoes: Thimble Islands, Norwalk Islands
            Swamps, Marshes, and Wetlands: Beckley Bog
            Valleys: Connecticut River Valley, Housatonic Valley
            Other Landforms: West Rock Ridge, Sleeping Giant, Coney Rock, Peter’s Rock, Totoket Mountain
            Other Bodies of Water: Long Island Sound, Intracoastal Waterway, Wethersfield Cove, New Haven Harbor, Farmington Canal, Enfield Falls Canal
            Mountains: Mount Frissell, Bear Mountain, Saltonstall Mountain, Chauncey Peak, Lamentation Mountain

            Other Sites: Mystic Seaport, Stewart B. McKinney National Wildlife Refuge, Dinosaur State Park, Gillette Castle, Mark Twain House, Hammonasset Beach State Park, Elizabeth Park, USS Nautilus, Amistad Memorial

            Dams: Saville Dam
            International/Major Airports: Bradley International Airport, Tweed New Haven Airport
            """],
        ["Delaware", """
            Capital: Dover
            Major Cities: Wilmington, Dover, Newark, Middletown, Smyrna
            Population: 950,000
            Area: 2,488 sq mi
            Bordering States: Maryland, Pennsylvania, New Jersey
            Nicknames: The First State, Blue Hen State

            Rivers: Delaware River, Choptank River, Pocomoke River, Nanticoke River
            Lakes and Reservoirs: Newark Reservoir, Hoopes Reservoir
            Bays and Gulfs: Delaware Bay, Rehoboth Bay
            Plateaus: Piedmont Plateau
            Plains and Basins: Atlantic Coastal Plain
            Peninsulas, Capes, and Points: Delmarva Peninsula, Cape Henlopen
            Isthmuses and Spits: Fenwick Island
            Caves: Beaver Valley Rock Shelter Site
            Swamps, Marshes, and Wetlands: Great Cypress Swamp
            Other Bodies of Water: Chesapeake and Delaware Canal

            Other Sites: Ebright Azimuth, Twelve-Mile Circle, Bombay Hook National Wildlife Refuge, Prime Hook National Wildlife Refuge, First State Heritage Park
            """],
        ["Florida", """
            Capital: Tallahassee
            Major Cities: Jacksonville, Miami, Tampa, Orlando, St. Petersburg, Hialeah, Fort Lauderdale, Tallahassee, Port St. Lucie, Cape Coral, Pembroke Pines, Hollywood
            Population: 20,620,000
            Area: 65,757 sq mi
            Bordering States: Alabama, Georgia
            Nicknames: Sunshine State, Peninsula State, Orange State, Gulf State, Alligator State

            Rivers: Chattahoochee (Apalachicola) River, St. Johns River, Suwannee River, Ochlockonee River, Alapaha River
            Lakes and Reservoirs: Lake Okeechobee, Lake Seminole, Lake Kissimmee, Lake Apopka, Lake Tohopekaliga
            Bays and Gulfs: Gulf of Mexico, Tampa Bay, Biscayne Bay, Boca Ciega Bay, Florida Bay, Apalachicola Bay, Pensacola Bay, St. Joseph Bay, Charlotte Harbor, Choctawhatchee Bay, St. Andrews Bay, Escambia Bay, East Bay, Whitewater Bay, Ponce de Leon Bay
            Straits: Straits of Florida
            Plains and Basins: Woodville Karst Plain, Okeechobee Plain, DeSoto Plain
            Peninsulas, Capes, and Points: Florida Peninsula, Cape Canaveral, Fairpoint Peninsula, Pinellas Peninsula, Cape Sable, Cape Romano, St. Joseph Peninsula, Cape San Blas
            Islands: Key West, Merritt Island, Pine Island, Bahia Honda Key, Santa Rosa Island, Key Largo, Sanibel Island, Captiva Island, St. Vincent Island, St. George Island, Dog Island
            Archipelagoes: Florida Keys, Dry Tortugas, Marquesas Keys, Ten Thousand Islands, Sea Islands
            Swamps, Marshes, and Wetlands: Everglades, Okefenokee Swamp, Wakodahatchee Wetlands
            Other Landforms: Britton Hill, Sugarloaf Mountain, Leon Sinks Geological Area
            Other Bodies of Water: Gulf Intracoastal Waterway, Indian River Lagoon, Mosquito Lagoon, Santa Rosa Sound, Pine Island Sound, Matanzas Inlet, Wakulla Springs, Weeki Wachee Springs

            National Parks: Everglades National Park, Dry Tortugas National Park, Biscayne National Park
            National Forests: Apalachicola National Forest, Ocala National Forest, Osceola National Forest
            National Monuments: Castillo de San Marcos National Monument, Fort Matanzas National Monument
            Other Sites: Florida Caverns State Park, Seven Mile Bridge, Kennedy Space Center, Canaveral National Seashore, Universal Studios Florida, Walt Disney World, Daytona International Speedway, Brickell Financial District, Flagler Memorial Island, SS American Victory, Jacksonville Skyway, Villa Vizcaya, Freedom Tower, Memorial Park, Amalie Arena

            Dams: Franklin Lock and Dam
            International/Major Airports: Orlando International Airport, Miami International Airport, Tampa International Airport, Fort Lauderdale-Hollywood International Airport, Southwest Florida International Airport, Palm Beach International Airport, Jacksonville International Airport
            """],
        ["Georgia", """
            Capital: Atlanta
            Major Cities: Atlanta, Columbus, Augusta, Macon, Savannah
            Population: 10,315,000
            Area: 59,425 sq mi
            Bordering States: Alabama, Florida, South Carolina, Tennessee, North Carolina
            Nicknames: Peach State, Empire State of the South, Goober State

            Mountain Ranges: Appalachian Mountains, Blue Ridge Mountains, Cohutta Mountains
            Rivers: Chattahoochee River, Flint River, Savannah River, Ogeechee River, Ocmulgee River, Coosa River
            Lakes and Reservoirs: Lake Strom Thurmond, Lake Burton, Lake Hartwell, Walter F. George Lake, Lake Seminole, Lake Oconee
            Plateaus: Cumberland Plateau
            Islands: Cumberland Island
            Archipelagoes: Golden Isles, Sea Islands
            Caves: Petty John’s Cave
            Canyons and Gorges: Tallulah Gorge
            Swamps, Marshes, and Wetlands: Okefenokee Swamp
            Other Bodies of Water: Intracoastal Waterway
            Mountains: Cold Mountain

            National Forests: Chattahoochee-Oconee National Forest
            National Monuments: Fort Frederica National Monument, Fort Pulaski National Monument, Ocmulgee National Monument
            Other Sites: Coca-Cola Headquarters, Centennial Olympic Park, Millennium Gate Museum, Martin Luther King Jr. National Historic Site, Rock City, Atlanta Botanical Garden, Millennium Gate Museum, The Phoenix Statue and Monument, Georgia Aquarium

            Dams: Carters Dam
            International/Major Airports: Hartsfield-Jackson Atlanta International Airport, Savannah/Hilton Head International Airport
            """],
        ["Hawaii", """
            Capital: Honolulu
            Major Cities: Honolulu, Hilo, Kailua, Kapolei, Kaneohe
            Population: 1,430,000
            Area: 10,931 sq mi
            Nicknames: Aloha State, Paradise of the Pacific

            Mountain Ranges: Koolau Range
            Rivers: Wailuku River, Kaukonahua River, Hanalei River
            Lakes and Reservoirs: Lake Waiau, Ka Loko Reservoir
            Bays and Gulfs: Kane’ohe Bay, Hanauma Bay, Hanalei Bay, Kealakekua Bay
            Straits: ‘Au’au Channel, ‘Alenuihaha Channel, Kealaikahiki Channel
            Peninsulas, Capes, and Points: Kalaupapa Peninsula, Magic Island, Mokapu Peninsula
            Islands: Big Island (Hawaii), Oahu, Maui, Kauai, Lanai, Molokai, Niihau, Kahoolawe, Nihoa, Molokini, Lisianski Island, Lihua, Necker Island, Kure Atoll, Ka’ula, Tern Island, Moku Manu, Coconut Island
            Archipelagoes: Hawaiian Islands
            Caves: Makauwahi Cave
            Canyons and Gorges: Waimea Canyon
            Swamps, Marshes, and Wetlands: Kawainui Marsh
            Valleys: Iao Valley, Waipio Valley, Pololu Valley, Waimea Valley
            Other Landforms: Diamond Head, Gardner Pinnacles, Punalu’u Beach, Nu’uanu Pali
            Mountains: Mauna Kea, Mauna Loa, Haleakala, Kohala Mountain, Hualalai, Pu’u Kukui, Mauna Kahalawai (West Maui Volcano), Kawaikini, Mount Waialeale

            National Parks: Hawaii Volcanoes National Park, Haleakala National Park
            National Monuments: Honouliuli National Monument, Papahanaumokuakea Marine National Monument, World War II Valor in the Pacific National Monument
            Other Sites: Ala Moana Beach Park, Ala Moana Center, Kualoa Regional Park, Na Pali Coast State Park, Hawaii Volcano Observatory, National Memorial Cemetery of the Pacific, Pu’u Loa Petroglyphs, Pu’uhonua o Honaunau National Historical Park, Pu’ukohola Heiau National Historic Site, Keahiakawelo (Garden of the Gods)

            International/Major Airports: Honolulu International Airport, Kahului Airport, Kona International Airport, Lihue Airport
            """],
        ["Idaho", """
            Capital: Boise
            Major Cities: Boise, Nampa, Meridian, Idaho Falls, Pocatello
            Population: 1,680,000
            Area: 83,568 sq mi
            Bordering States: Washington, Oregon, Wyoming, Montana, Nevada, Utah
            Nicknames: Gem State

            Mountain Ranges: Rocky Mountains, Bitterroot Range, Sawtooth Range, Columbia Mountains, Pioneer Mountains, Lemhi Range, Selkirk Mountains, Salmon River Mountains, Smoky Mountains, Boulder Mountains, Lost River Range, Seven Devils Mountains, Soldier Mountains
            Rivers: Snake River, Bear River, Kootenai River, Salmon River, Owyhee River
            Lakes and Reservoirs: Lake Pend Oreille, Bear Lake, Lake Coeur d’Alene
            Deserts: Owyhee Desert
            Plateaus: Columbia Plateau
            Plains and Basins: Snake River Plain, Columbia Basin
            Caves: Minnetonka Cave, Wilson Butte Cave
            Canyons and Gorges: Hells Canyon, Snake River Canyon
            Valleys: Teton Valley, Sawtooth Valley, Wood River Valley, Cache Valley
            Other Landforms: Menan Buttes, Henry’s Fork Caldera, Island Park Caldera, Galena Summit
            Other Bodies of Water: Shoshone Falls
            Mountains: Borah Peak, Leatherman Peak, Diamond Peak, Mount Idaho, Hyndman Peak, Mount Corruption, Castle Peak, Ryan Peak

            National Parks: Yellowstone National Park
            National Forests: Bitterroot National Forest, Boise National Forest, Caribou-Targhee National Forest, Clearwater National Forest, Idaho Panhandle National Forest, Kootenai National Forest, Nez Perce National Forest, Payette National Forest, Salmon-Challis National Forest, Sawtooth National Forest, Uinta-Wasatch-Cache National Forest, Wallowa-Whitman National Forest
            National Monuments: Craters of the Moon National Monument, Hagerman Fossil Beds National Monument
            Other Sites: Perrine Bridge, City of Rocks National Reserve

            Dams: Dworshak Dam, Arrowrock Dam, Hells Canyon Dam, Teton Dam
            International/Major Airports: Boise Airport
            """],
        ["Illinois", """
            Capital: Springfield
            Major Cities: Chicago, Aurora, Rockford, Joliet, Naperville, Springfield
            Population: 12,800,000
            Area: 57,913 sq mi
            Bordering States: Indiana, Missouri, Kentucky, Michigan, Wisconsin, Iowa
            Nicknames: Prairie State, Land of Lincoln

            Mountain Ranges: Shawnee Hills
            Rivers: Ohio River, Wabash River, Kaskaskia River, Mississippi River, Rock River, Illinois River, Sangamon River, Little Wash River
            Lakes and Reservoirs: Lake Michigan, Carlyle Lake
            Caves: Illinois Caverns
            Valleys: Ohio River Valley
            Other Landforms: Niagara Escarpment, Charles Mound

            National Forests: Shawnee National Forest
            National Monuments: Pullman National Monument
            Other Sites: Garden of the Gods Wilderness, Illinois Caverns State Natural Area, Abraham Lincoln Presidential Library and Museum, Lincoln Home National Historic Site, Soldier Field, James R. Thompson Center

            International/Major Airports: Chicago O’Hare International Airport, Chicago Midway International Airport
            """],
        ["Indiana", """
            Capital: Indianapolis
            Major Cities: Indianapolis, Fort Wayne, Evansville, South Bend, Carmel
            Population: 6,635,000
            Area: 36,419 sq mi
            Bordering States: Illinois, Michigan, Kentucky, Ohio
            Nicknames: Hoosier State

            Rivers: Ohio River, Wabash River, St. Joseph River, White River, Tippecanoe River, Great Miami River, Maumee River
            Lakes and Reservoirs: Lake Michigan, Lake Wawasee
            Plains and Basins: Kankakee Outwash Plain
            Caves: Wyandotte Caves, Bluespring Caverns, Marengo Cave
            Swamps, Marshes, and Wetlands: Limberlost Swamp
            Other Landforms: Hoosier Hill, Valparaiso Moraine
            Other Bodies of Water: Cataract Falls, Wabash and Erie Canal, Whitewater Canal

            National Forests: Hoosier National Forest
            Other Sites: Indiana Dunes National Lakeshore, Indianapolis Motor Speedway, Lucas Oil Stadium

            International/Major Airports: Indianapolis International Airport, South Bend International Airport
            """],
        ["Iowa", """
            Capital: Des Moines
            Major Cities: Des Moines, Cedar Rapids, Davenport, Sioux City, Waterloo
            Population: 3,135,000
            Area: 56,272 sq mi
            Bordering States: Minnesota, Wisconsin, South Dakota, Nebraska, Illinois, Missouri
            Nicknames: Hawkeye State

            Rivers: Mississippi River, Missouri, River, Des Moines River, Big Sioux River, Cedar River, Raccoon River
            Lakes and Reservoirs: Lake Red Rock, Rathbun Lake
            Plains and Basins: Great Plains
            Other Landforms: Loess Hills

            National Monuments: Effigy Mounds National Monument
            Other Sites: Hawkeye Point, Maquoketa Caves State Park

            International/Major Airports: Des Moines International Airport
            """],
        ["Kansas", """
            Capital: Topeka
            Major Cities: Wichita, Overland Park, Kansas City, Olathe, Topeka
            Population: 2,910,000
            Area: 82,278 sq mi
            Bordering States: Colorado, Oklahoma, Missouri, Nebraska
            Nicknames: Sunflower State

            Mountain Ranges: Ozark Mountains
            Rivers: Arkansas River, Missouri River, Cimarron River, Smoky Hill River, Republican River, Neosho River, Saline River
            Lakes and Reservoirs: Milford Lake, Tuttle Creek Lake, Waconda Lake, Cedar Bluff Reservoir
            Plains and Basins: Great Plains
            Swamps, Marshes, and Wetlands: Cheyenne Bottoms, Haskell-Baker Wetlands
            Other Landforms: Flint Hills, Monument Rocks (Chalk Pyramids), Castle Rock, Mount Sunflower, Red Hills

            Other Sites: Tallgrass Prairie National Preserve, Mushroom Rock State Park, Big Basin Prairie Reserve, Kanopolis State Park

            Dams: Cedar Bluff Dam
            International/Major Airports: Wichita Dwight D. Eisenhower National Airport
            """],
        ["Kentucky", """
            Capital: Frankfurt
            Major Cities: Louisville, Lexington, Bowling Green, Owensboro, Covington
            Population: 4,440,000
            Area: 40,407 sq mi
            Bordering States: Ohio, Tennessee, Indiana, Illinois, Virginia, Missouri, West Virginia
            Nicknames: Bluegrass State

            Mountain Ranges: Appalachian Mountains, Cumberland Mountains
            Rivers: Ohio River, Mississippi River, Cumberland River, Tennessee River, Green River, Kentucky River, Tradewater River
            Lakes and Reservoirs: Kentucky Lake, Lake Cumberland, Lake Barkley, Barren River Lake, Cave Run Lake
            Plateaus: Cumberland Plateau, Pennyroyal Plateau, Appalachian Plateau
            Canyons and Gorges: Red River Gorge, Kentucky River Palisades
            Other Bodies of Water: Cumberland Falls
            Mountains: Black Mountain, Pine Mountain

            National Parks: Mammoth Cave National Park
            National Forests: Daniel Boone National Forest, George Washington and Jefferson National Forests
            Other Sites: Bad Branch Falls State Nature Preserve, Breaks Interstate Park, Land Between the Lakes National Recreation Area, Kentucky Derby Museum, Louisville Mega Cavern

            International/Major Airports: Cincinnati/Northern Kentucky International Airport, Louisville International Airport
            """],
        ["Lousiana", """
            Capital: Baton Rouge
            Major Cities: New Orleans, Baton Rouge, Shreveport, Lafayette, Lake Charles
            Population: 4,690,000
            Area: 52,378 sq mi
            Bordering States: Texas, Arkansas, Mississippi
            Nicknames: Pelican State, Bayou State, Sportsman’s Paradise

            Rivers: Mississippi River, Red River, Ouachita River, Sabine River, Pearl River
            Lakes and Reservoirs: Lake Pontchartrain, Toledo Bend Reservoir, Lake Claiborne, Lake Maurepas, Caddo Lake, Lake D’Arbonne, Calcasieu Lake, Catahoula Lake, Lake St. Catherine
            Bays and Gulfs: Gulf of Mexico, Atchafalaya Bay
            Straits: Rigolets Strait, Chef Menteur Pass
            Plains and Basins: Gulf Coastal Plain, Mississippi Alluvial Plain
            Islands: Marsh Island
            Archipelagoes: Chandeleur Islands
            Swamps, Marshes, and Wetlands: Atchafalaya Swamp
            Other Bodies of Water: Lake Borgne (lagoon), Breton Sound, Chief Menteur Pass, Rigolets Strait
            Mountains: Driskill Mountain, Bayou Corne Sinkhole

            National Forests: Kisatchie National Forest
            National Monuments: Poverty Point National Monument
            Other Sites: French Quarter, National WWII Museum, Mardi Gras World, D’Arbonne National Wildlife Refuge, Cameron Prairie National Wildlife Refuge, Jean Lafitte National Historical Park, Indian Creek Recreation Area, Bayou Sauvage National Wildlife Refuge, Mercedes-Benz Superdome, Jackson Square, Royal Street, St. Louis Cathedral, Mid-City

            Dams: Sibley Lake Dam
            International/Major Airports: Louis Armstrong New Orleans International Airport
            """],
        ["Maine", """
            Capital: Augusta
            Major Cities: Portland, Lewiston, Bangor, South Portland, Auburn
            Population: 1,331,000
            Area: 35,379 sq mi
            Bordering States: New Hampshire
            Nicknames: Pine Tree State, Vacationland

            Mountain Ranges: Longfellow Mountains, Notre Dame Mountains, Mahoosuc Range, Baldface-Royce Range, Western Maine Mountains, White Mountains
            Rivers: Saint John River, Androscoggin River, Kennebec River, Saco River, Penobscot River
            Lakes and Reservoirs: Moosehead Lake, Sebago Lake, Chesuncook Lake, Pemadumcook Chain of Lakes, Flagstaff Lake, Mooselookmeguntic Lake, Richardson Lakes (Upper Richardson Lake and Lower Richardson Lake)
            Bays and Gulfs: Gulf of Maine, Bay of Fundy, Passamaquoddy Bay, Penobscot Bay, Casco Bay, Merrymeeting Bay
            Islands: Mount Desert Island
            Archipelagoes: Isles of Shoals
            Swamps, Marshes, and Wetlands: Scarborough Marsh
            Other Landforms: Bigelow Mountain Ridge
            Mountains: Mount Katahdin, Cadillac Mountain, Hamlin Peak, Sugarloaf Mountain, Saddleback Mountain, Old Speck Mountain, Baldpate Mountain

            National Parks: Acadia National Park
            National Forests: White Mountain National Forest
            National Monuments: Katahdin Woods and Waters National Monument
            Other Sites: Portland Head Light, Baxter State Park, Quoddy Head State Park, Wells National Estuarine Research Reserve, Seal Island National Wildlife Refuge, Holbrook Island Sanctuary State Park, Portland Observatory, Munjoy’s Hill, Old Port, Exchange Street

            Dams: Frankfort Dam, Union River Dam, Harris Station Dam
            International/Major Airports: Portland International Airport, Bangor International Airport
            """],
        ["Maryland", """
            Capital: Annapolis
            Major Cities: Baltimore, Columbia, Germantown, Silver Spring, Waldorf, Annapolis
            Population: 6,020,000
            Area: 12,405 sq mi
            Bordering States: Delaware, West Virginia, Virginia, Pennsylvania, Washington D.C. (Federal District)
            Nicknames: Old Line State, Free State, Chesapeake State, America in Miniature

            Mountain Ranges: Appalachian Mountains, Bear Pond Mountains, Allegheny Mountains, Blue Ridge Mountains
            Rivers: Susquehanna River, Potomac River, Youghiogheny River, Patuxent River, North Branch Potomac River
            Lakes and Reservoirs: Prettyboy Reservoir, Deep Creek Lake, Loch Raven Reservoir, Jennings Randolph Lake
            Bays and Gulfs: Chesapeake Bay, Chincoteague Bay (lagoon), Isle of Wight Bay, Mallows Bay, Sinepuxent Bay
            Plateaus: Piedmont Plateau, Appalachian Plateau
            Peninsulas, Capes, and Points: Delmarva Peninsula, St. Mary’s Peninsula, Calvert Peninsula
            Islands: Assateague Island
            Caves: Crystal Grottoes
            Canyons and Gorges: Cumberland Narrows
            Swamps, Marshes, and Wetlands: Great Cypress Swamp, Zekiah Swamp, Battle Creek Cypress Swamp
            Valleys: Susquehanna Valley, Cumberland Valley
            Other Bodies of Water: Intracoastal Waterway, Tangier Sound, Pocomoke Sound, Chesapeake and Ohio Canal, Chesapeake and Delaware Canal

            National Monuments: Fort McHenry National Monument, Harriet Tubman Underground Railroad National Monument
            Other Sites: Antietam National Battlefield, Assateague Island National Seashore, B&O Railroad Museum, National Aquarium, Washington Monument (Baltimore), Emerson Bromo-Seltzer Tower

            Dams: Conowingo Dam
            International/Major Airports: Baltimore-Washington International Thurgood Marshall Airport
            """],
        ["Massachusetts", """
            Capital: Boston
            Major Cities: Boston, Worcester, Springfield, Lowell, Cambridge
            Population: 6,815,000
            Area: 10,554 sq mi
            Bordering States: Connecticut, Rhode Island, New York, Vermont, New Hampshire
            Nicknames: Bay State, Spirit of America, Old Colony State, Pilgrim State

            Mountain Ranges: Berkshire Hills, Taconic Mountains, Wapack Range, Metacomet Range, Holyoke Range, Pocumtuck Range
            Rivers: Connecticut River, Charles River, Merrimack River, Housatonic River
            Lakes and Reservoirs: Quabbin Reservoir, Wachusett Reservoir, Lake Cochituate, Lake Buel, Wenham Lake
            Bays and Gulfs: Massachusetts Bay, Buzzards Bay, Cape Cod Bay, Narragansett Bay (small parts of it), Mount Hope Bay, Hingham Bay, Plymouth Bay
            Peninsulas, Capes, and Points: Cape Cod, Shawmut Peninsula, Pemberton Point, Deer Island Peninsula, Cape Ann
            Isthmuses and Spits: Monomoy Island
            Islands: Martha’s Vineyard, Plum Island, Spectacle Island, Cuttyhunk Island, Rainsford Island
            Archipelagoes: Elizabeth Islands
            Caves: Horse Caves
            Swamps, Marshes, and Wetlands: Brewster Flats, Hockomock Swamp
            Valleys: Connecticut River Valley, Pioneer Valley, Housatonic Valley
            Other Landforms: Nantasket Beach
            Other Bodies of Water: Nantucket Sound, Vineyard Sound, Provincetown Harbor
            Mountains: Mount Greylock, Mount Tom, Mount Holyoke

            Other Sites: Cape Cod National Seashore, Stellwagen Bank National Marine Sanctuary, Blue Hills Reservation, Boston Harbor Islands National Recreation Area, Fenway Park, Boston Common, Bunker Hill Monument, Freedom Trail, Boston National Historical Park

            Dams: Wachusett Dam
            International/Major Airports: Logan International Airport
            """],
        ["Michigan", """
            Capital: Lansing
            Major Cities: Detroit, Grand Rapids, Warren, Sterling Heights, Ann Arbor, Lansing
            Population: 9,930,000
            Area: 96,713 sq mi
            Bordering States: Wisconsin, Indiana, Ohio
            Nicknames: Wolverine State, Great Lakes State

            Mountain Ranges: Huron Mountains, Porcupine Mountains
            Rivers: Grand River, Muskegon River, St. Joseph River, Manistee River, River Raisin, Au Sable River, Huron River, Kalamazoo River
            Lakes and Reservoirs: Lake Superior, Lake Michigan, Lake Huron, Lake Erie, Lake St. Clair
            Bays and Gulfs: Green Bay, Grand Traverse Bay, Keweenaw Bay, Saginaw Bay, Little Traverse Bay, Whitefish Bay
            Straits: Straits of Mackinac
            Peninsulas, Capes, and Points: Upper Peninsula, Lower Peninsula, Keweenaw Peninsula, Leelanau Peninsula, Abbaye Peninsula, Garden Peninsula, Waugoshance Point, The Thumb
            Islands: Isle Royale, Mackinac Island, Round Island, Beaver Island, North Manitou Island, South Manitou Island, Bois Blanc Island, Neebish Island
            Archipelagoes: Beaver Islands, Fox Islands
            Swamps, Marshes, and Wetlands: Lakeville Swamp, Tobico Marsh
            Other Landforms: Sleeping Bear Dunes, Grand Sable Dunes, Arch Rock, Nordhouse Dunes, Niagara Escarpment
            Other Bodies of Water: Tahquamenon Falls, Munising Fals
            Mountains: Mount Arvon

            National Parks: Isle Royale National Park
            National Forests: Hiawatha National Forest, Huron-Manistee National Forest, Ottawa National Forest
            Other Sites: Sleeping Bear Dunes National Seashore, Pictured Rocks National Lakeshore

            Dams: Hardy Dam
            International/Major Airports: Detroit Metropolitan Wayne County Airport, Gerald R. Fort International Airport, Bishop International Airport
            """],
        ["Minnesota", """
            Capital: St. Paul
            Major Cities: Minneapolis, St. Paul, Rochester, Bloomington, Duluth
            Population: 5,520,000
            Area: 86,935 sq mi
            Bordering States: North Dakota, South Dakota, Iowa, Wisconsin
            Nicknames: North Star State, Gopher State, Land of 10,000 Lakes

            Mountain Ranges: Sawtooth Mountains, Misquah Hills
            Rivers: Mississippi River, Red River of the North, Minnesota River, Wapsipinicon River, Des Moines River, Cedar River, Little Sioux River, Roseau River
            Lakes and Reservoirs: Lake Superior, Lake of the Woods, Lake Itasca, Rainy Lake, Mille Lacs Lake, Leach Lake, Lake Vermilion, Lake Pepin, Lake Minnetonka, Lake Nokomis, Lake of the Isles, Cedar Lake, Lake Calhoun, Little Rock Lake, Bay Lake, Big Stone Lake, Bear Island Lake, Otter Tail Lake, Saganaga Lake, Ten Mile Lake, Leech Lake, Lake Bemidji, Lake Winnebigoshish
            Isthmuses and Spits: Minnesota Point
            Valleys: Red River Valley
            Other Landforms: Mesabi Range, Palisade Head, Sugar Loaf, Leaf Hills Moraines
            Mountains: Eagle Mountain

            National Parks: Voyageurs National Park
            National Forests: Chippewa National Forest, Superior National Forest
            National Monuments: Grand Portage National Monument, Pipestone National Monument
            Other Sites: Minnehaha Park, Mall of America, Gooseberry Falls State Park, U.S. Bank Stadium, Grand Rounds National Scenic Highway, Minneapolis Chain of Lakes Regional Park,

            Dams: Sartell Dam, Lake Zumbro Hydroelectric Generating Plant, Deer Lake Dam, Leech Lake Dam, Winnibigoshish Lake Dam
            International/Major Airports: Minneapolis-St. Paul International Airport, Duluth International Airport
            """],
        ["Mississippi", """
            Capital: Jackson
            Major Cities: Jackson, Gulfport, Southaven, Hattiesburg, Biloxi
            Population: 2,990,000
            Area: 48,431 sq mi
            Bordering States: Alabama, Louisiana, Tennessee, Arkansas
            Nicknames: Magnolia State, Birthplace of America’s Music

            Rivers: Mississippi River, Tennessee River, Pearl River, Tombigbee River, Yazoo River, Chickasawhay River
            Lakes and Reservoirs: Pickwick Lake, Grenada Lake, Ross Barnett Reservoir
            Bays and Gulfs: Gulf of Mexico
            Plains and Basins: Gulf Coastal Plain
            Islands: Dauphin Island, Horn Island, Cat Island
            Other Bodies of Water: Mississippi Sound
            Mountains: Woodall Mountain

            National Forests: Bienville National Forest, Delta National Forest, De Soto National Forest, Holly Springs National Forest, Homochitto National Forest, Tombigbee National Forest
            Other Sites: Gulf Islands National Seashore, Dauphin Island Bridge

            International/Major Airports: Jackson-Evers International Airport, Gulfport-Biloxi International Airport
            """],
        ["Missouri", """
            Capital: Jefferson City
            Major Cities: Kansas City, St. Louis, Springfield, Independence, Columbia, St. Joseph, Joplin, Jefferson City
            Population: 6,100,000
            Area: 69,706 sq mi
            Bordering States: Arkansas, Kansas, Tennessee, Kentucky, Iowa, Illinois, Nebraska, Oklahoma
            Nicknames: Show Me State, Bullion State

            Mountain Ranges: St. Francois Mountains, Ozark Mountains, Finleys Mountains
            Rivers: Missouri River, Mississippi River, White River, St. Francis River, Black River, Des Moines River, Current River, Nishnabotna River, Chariton River, Little Platte River
            Lakes and Reservoirs: Truman Reservoir, Lake of the Ozarks, Bull Shoals Lake, Table Rock Lake, Mark Twain Lake, Pomme de Terre Lake, Lake Taneycomo, Stockton Lake,
            Plateaus: Ozark Plateau
            Plains and Basins: Brazeau Bottom, Gulf Coastal Plain
            Caves: Meramec Caverns, Marvel Cave, Mark Twain Cave
            Swamps, Marshes, and Wetlands: American Bottom, Bois Brule Bottom, Le Grand Champ Bottom
            Valleys: Missouri River Valley, Arcadia Valley
            Other Landforms: Tower Rock, Weaubleau Structure, Loess Hills, Decaturville Crater, Pilot Knob
            Other Bodies of Water: Big Spring, Greer Spring
            Mountains: Taum Sauk Mountain, Hughes Mountain

            National Forests: Mark Twain National Forest
            National Monuments: George Washington Carver National Monument
            Other Sites: Gateway Arch, National World War I Museum and Memorial, Silver Dollar City, Jefferson National Expansion Memorial, Wilson’s Creek National Battlefield, Golden Prairie, Elephant Rocks State Park, Grand Gulf State Park, Lake of the Ozarks State Park, Loess Bluffs National Wildlife Refuge

            Dams: Table Rock Dam
            International/Major Airports: St. Louis Lambert International Airport, Kansas City International Airport, Springfield-Branson National Airport
            """],
        ["Montana", """
            Capital: Helena
            Major Cities: Billings, Missoula, Great Falls, Bozeman, Butte, Helena
            Population: 1,050,000
            Area: 147,039 sq mi
            Bordering States: Idaho, Wyoming, North Dakota, South Dakota
            Nicknames: Treasure State, Big Sky Country

            Mountain Ranges: Rocky Mountains, Beartooth Mountains, Absaroka Range, Crazy Mountains, Madison Range, Gallatin Range, Mission Mountains, Sapphire Mountains, Anaconda Range, Coeur d’Alene Mountains, Cabinet Mountains, Garnet Range, Mission Mountains, Flint Creek Range, Tobacco Root Mountains, Pryor Mountains, Snowy Mountains
            Rivers: Missouri River, Milk River, Yellowstone River, Kootenai River, Bighorn River, Powder River
            Lakes and Reservoirs: Flathead Lake, Fort Peck Lake
            Plateaus: Beartooth Plateau
            Plains and Basins: Great Plains
            Caves: Lewis and Clark Caverns
            Canyons and Gorges: Bad Rock Canyon
            Valleys: Bitterroot Valley, Gallatin Valley, Paradise Valley
            Other Landforms: LaBarge Rock, Lewis Overthrust, Iceberg Cirque, Blackfoot Glacier, Sperry Glacier, Grinnell Glacier, Adel Mountains Volcanic Field, Sweet Grass Hills
            Other Bodies of Water: Giant Springs
            Mountains: Granite Peak, Mount Wood, Hilgard Peak, Crazy Peak, Electric Peak, Emigrant Peak

            National Parks: Glacier National Park, Yellowstone National Park
            National Forests: Beaverhead-Deerlodge National Forest, Bitterroot National Forest, Custer National Forest, Flathead National Forest, Gallatin National Forest, Helena National Forest, Idaho Panhandle National Forest, Kootenai National Forest, Lewis and Clark National Forest, Lolo National Forest
            National Monuments: Little Bighorn Battlefield National Monument, Pompeys Pillar National Monument, Upper Missouri River Breaks National Monument
            Other Sites: Going-to-the-Sun Road, Museum of the Rockies, Berkeley Pit, Beartooth Highway

            Dams: Yellowtail Dam, Fort Peck Dam, Hungry Horse Dam, Libby Dam, Kerr Dam
            International/Major Airports: Bozeman Yellowstone International Airport, Billings Logan International Airport, Missoula International Airport
            """],
        ["Nebraska", """
            Capital: Lincoln
            Major Cities: Omaha, Lincoln, Bellevue, Grand Island, Kearney
            Population: 1,910,000
            Area: 77,347 sq mi
            Bordering States: Kansas, Iowa, Missouri, South Dakota, Colorado, Wyoming
            Nicknames: Cornhusker State

            Rivers: Missouri River, North Platte River, Niobrara River, Republican River, White River, South Platte River, Elkhorn River, Frenchman Creek, Arikaree River
            Lakes and Reservoirs: Harlan County Reservoir, Lake McConaughy, Lewis and Clark Lake, Salt Valley Lakes
            Plains and Basins: Great Plains, High Plains, Dissected Till Plains, Nine Hill Prairie, Smoky Hills
            Swamps, Marshes, and Wetlands: Rainwater Basin
            Valleys: Missouri River Valley, North Platte River Valley, Niobrara River Valley
            Other Landforms: Panorama Point, Chimney Rock, Sandhills, Wildcat Hills (escarpment), Pine Ridge, Guide Hill, Courthouse and Jail Rocks

            National Forests: Nebraska National Forest, Samuel R. McKelvie National Forest
            National Monuments: Agate Fossil Beds National Monument, Homestead National Monument, Scotts Bluff National Monument
            Other Sites: Carhenge, Robidoux Pass, The Archway (Great Platte River Road Archway Monument), Pawnee Lake State Recreation Area, Heartland of America Park, Old Market Neighborhood, Oglala National Grassland, Pine Ridge National Recreation Area, Crescent Lake National Wildlife Refuge, DeSoto National Wildlife Refuge, Toadstool Geologic Park, Chadron State Park, Strategic Air Command and Aerospace Museum, Lauritzen Gardens, Chimney Rock National Historic Site, Ash Hollow State Historical Park

            Dams: Medicine Creek Dam, Gavins Point Dam, Kingsley Dam
            International/Major Airports: Eppley Airfield, Lincoln Airport, Central Nebraska Regional Airport
            """],
        ["Nevada", """
            Capital: Carson City
            Major Cities: Las Vegas, Henderson, Reno, North Las Vegas, Sparks, Carson City
            Population: 2,950,000
            Area: 110,571 sq mi
            Bordering States: California, Utah, Arizona, Oregon, Idaho
            Nicknames: Silver State

            Mountain Ranges: Ruby Mountains, Snake Range, Sierra Nevada, Toiyabe Range, McCullough Range, East Humboldt Range, Spring Mountains, Diamond Mountains
            Rivers: Colorado River, Owyhee River, Humboldt River, Amargosa River, Reese River
            Lakes and Reservoirs: Lake Tahoe, Lake Mead, Pyramid Lake, Honey Lake, Walker Lake, Lake Mohave
            Deserts: Mojave Desert, Amargosa Desert, Black Rock Desert, Smoke Creek Desert, Great Basin Desert
            Plateaus: Modoc Plateau
            Plains and Basins: Great Basin
            Canyons and Gorges: Seitz Canyon
            Swamps, Marshes, and Wetlands: Las Vegas Wash, Humboldt Salt Marsh
            Valleys: Amargosa Valley, Antelope Valley, Bitter Spring Valley, Pahrump Valley, Eldorado Valley, Piute Valley, Lahontan Valley, Ruby Valley
            Other Landforms: Carson Sink, Humboldt Sink, Moenkopi Formation
            Other Bodies of Water: Calville Bay
            Mountains: Wheeler Peak, Mount Moriah, Mount Jefferson, Charleston Peak, North Schell Peak, Arc Dome

            National Parks: Great Basin National Park
            National Forests: Humboldt-Toiyabe National Forest, Inyo National Forest, Lake Tahoe Basin Management Unit
            National Monuments: Basin and Range National Monument, Gold Butte National Monument, Tule Springs Fossil Beds National Monument
            Other Sites: Red Rock Canyon National Conservation Area, Valley of Fire State Park, Lake Mead National Recreation Area, World Market Center, National Automobile Museum

            Dams: Hoover Dam
            International/Major Airports: McCarran International Airport, Reno/Tahoe International Airport
            """],
        ["New Hampshire", """
            Capital: Concord
            Major Cities: Manchester, Nashua, Concord, Derry, Rochester
            Population: 1,335,000
            Area: 9,349 sq mi
            Bordering States: Vermont, Maine, Massachusetts
            Nicknames: Granite State, White Mountain State

            Mountain Ranges: White Mountains, Presidential Range, Appalachian Mountains, Franconia Range, Sandwich Range, Dartmouth Range, Carter-Moriah Range, Kinsman Range (Cannon-Kinsman Range), Mahoosuc Range
            Rivers: Connecticut River, Merrimack River, Saco River, Androscoggin River, Contoocook River, Pemigewasset River
            Lakes and Reservoirs: Lake Winnipesaukee, Umbagog Lake, Squam Lake, Newfound Lake, Winnisquam Lake, Lake Sunapee, Moore Reservoir, Ossipee Lake, Lake Wentworth, Massabessic Lake, Lake Francis, Merrymeeting Lake, Great East Lake, Conway Lake, Mascoma Lake
            Bays and Gulfs: Paugus Bay, Opechee Bay
            Peninsulas, Capes, and Points: Finisterre Point
            Islands: Star Island, Rattlesnake Island, Three Mile Island
            Archipelagoes: Isles of Shoals
            Other Landforms: Crawford Notch, Flume Gorge, The Cannon Balls Mountain Ridge
            Other Bodies of Water: Arethusa Falls
            Other Landforms: Carter Dome, Pinkham Notch
            Mountains: Mount Washington, Mount Adams, Mount Jefferson, Mount Lafayette, South Twin Mountain, Wildcat Mountain, Mount Moosilauke, Mount Carrigain, North Carter Mountain, Middle Carter Mountain, South Carter Mountain, Mount Hight, Franconia Ridge, Mount Garfield,

            National Forests: White Mountain National Forest

            Dams: Moore Dam
            International/Major Airports: Manchester-Boston Regional Airport, Portsmouth International Airport
            """],
        ["New Jersey", """
            Capital: Trenton
            Major Cities: Newark, Jersey City, Paterson, Elizabeth, Edison
            Population: 8,950,000
            Area: 8,722 sq mi
            Bordering States: Pennsylvania, New York, Delaware
            Nicknames: Garden State

            Mountain Ranges: Kittatinny Mountains, Ramapo Mountains, Watchung Mountains, Preakness Range, Bearfort Mountain Range
            Rivers: Delaware River, Wallkill River, Hudson River, Passaic River, Great Egg Harbor River
            Lakes and Reservoirs: Lake Hopatcong, Merrill Creek Reservoir, Monksville Reservoir, Round Valley Reservoir, Manasquan Reservoir
            Bays and Gulfs: Delaware Bay, Barnegat Bay, Raritan Bay, Great Bay, Manahawkin Bay
            Straits: Kill Van Kull Strait
            Plateaus: Hunterdon Plateau, Piedmont Plateau
            Plains and Basins: Pine Barrens, Newark Basin, Atlantic Coastal Plain
            Peninsulas, Capes, and Points: Cape May, Barnegat Peninsula, Bergen Point, Finns Point
            Isthmuses and Spits: Sandy Hook
            Islands: Long Beach Island, Absecon Island, Seven Mile Island
            Canyons and Gorges: Boonton Gorge
            Swamps, Marshes, and Wetlands: Hatfield Swamp, Hackensack Meadowlands, Troy Meadows, Great Swamp
            Valleys: Amwell Valley, Kittatinny Valley, Wallkill Valley, Wallpack Valley
            Other Landforms: The Palisades
            Other Bodies of Water: Staten Island Sound, Shark River Inlet, Delaware and Raritan Canal, Intracoastal Waterway
            Mountains: High Point

            National Monuments: Statue of Liberty National Monument
            Other Sites: Liberty State Park, George Washington Bridge, Island Beach State Park, Bayonne Bridge, Stokes State Forest, Lucy the Elephant, Union Watersphere, Lake Carnegie, Thomas Edison National Historical Park, Asbury Park, Princeton Battlefield State Park, Great Swamp National Wildlife Refuge, New Jersey Pinelands National Reserve, Hutcheson Memorial Forest, Bear Swamp, The Glades

            International/Major Airports: Newark Liberty International Airport, Atlantic City International Airport
            """],
        ["New Mexico", """
            Capital: Santa Fe
            Major Cities: Albuquerque, Las Cruces, Rio Rancho, Santa Fe, Roswell
            Population: 2,085,000
            Area: 121,590 sq mi
            Bordering States: Arizona, Utah, Colorado, Texas, Oklahoma
            Nicknames: Land of Enchantment

            Mountain Ranges: Rocky Mountains, Sangre de Cristo Mountains, Sandia Mountains, Sacramento Mountains, Jemez Mountains, Sierra Blanca, Brazos Mountains, Guadalupe Mountains, Mogollon Mountains
            Rivers: Rio Grande, Pecos River, Canadian River, Cimarron River, Gila River, San Juan River, Puerco River
            Lakes and Reservoirs: Elephant Butte Reservoir, Navajo Lake
            Deserts: Chihuahuan Desert
            Plateaus: Colorado Plateau, Pajarito Plateau, Caja del Rio Plateau
            Plains and Basins: Tularosa Basin, Jordana del Muerto Desert Basin
            Caves: Lechuguilla Cave
            Canyons and Gorges: Skeleton Canyon
            Valleys: San Luis Valley, Hachita Valley, Mesilla Valley
            Other Landforms: Taos Plateau Volcanic Field, Shiprock, Potrillo Volcanic Field, Tooth of Time, Enchanted Mesa, Fajada Butte
            Mountains: Wheeler Peak, Truchas Peak, Venado Peak, Santa Fe Baldy, Baldy Mountain, Mount Phillips, Redondo Peak

            National Parks: Carlsbad Caverns National Park
            National Forests: Apache-Sitgreaves National Forest, Carson National Forest, Cibola National Forest, Coronado National Forest, Gila National Forest, Lincoln National Forest, Santa Fe National Forest
            National Monuments: Aztec National Monument, Bandelier National Monument, Capulin Volcano National Monument, El Malpais National Monument, El Morro National Monument, Fort Union National Monument, Gila Cliff Dwellings National Monument, Kasha-Katuwe Tent Rocks National Monument, Organ Mountains-Desert Rocks National Monument, Petroglyph National Monument, Prehistoric Trackways National Monument, Rio Grande del Norte National Monument, Salinas Pueblo Missions National Monument, White Sands National Monument
            Other Sites: Chaco Culture National Historical Park, Trails of the Ancients Scenic Byway, Museum of International Folk Art

            Dams: Elephant Butte Dam, Navajo Dam
            International/Major Airports: Albuquerque International Airport
            """],
        ["New York", """
            Capital: Albany
            Major Cities: New York City, Buffalo, Rochester, Yonkers, Syracuse, Albany
            Population: 19,775,000
            Area: 54,554 sq mi
            Bordering States: Connecticut, Pennsylvania, Massachusetts, Vermont, New Jersey
            Nicknames: The Empire State

            Mountain Ranges: Adirondack Mountains, Catskill Mountains, Hudson Highlands, MacIntyre Mountains, Shawangunk Ridge, Marlboro Mountains
            Rivers: Hudson River, St. Lawrence River, Allegheny River, Susquehanna River, Mohawk River, Genesee River, Delaware River
            Lakes and Reservoirs: Lake Erie, Lake Ontario, Lake George, Oneida Lake, Finger Lakes (Lake Seneca, Lake Cayuga, Canandaigua Lake, Keuka Lake, Owasco Lake, Skaneateles Lake), Kensico Reservoir, Great Sacandaga Lake, Lake Tear of the Clouds, Roundout Reservoir
            Bays and Gulfs: Upper New York Bay, Lower New York Bay, Jamaica Bay
            Straits: Buttermilk Channel
            Plateaus: Allegheny Plateau
            Peninsulas, Capes, and Points: Rockaway Peninsula
            Islands: Long Island, Manhattan Island, Staten Island, Ellis Island, Governors Island, Liberty Island, Randalls and Wards Islands
            Caves: Howe Caverns
            Canyons and Gorges: Niagara Gorge, Ausable Chasm
            Swamps, Marshes, and Wetlands: Constitution Marsh
            Valleys: Hudson Valley, Wallkill Valley
            Other Landforms: Niagara Escarpment, Palisades, Onondaga Formation
            Other Bodies of Water: Long Island Sound, Niagara Falls, Taughannock Falls
            Mountains: Mount Marcy, Algonquin Peak, Mount Haystack

            National Forests: Finger Lakes National Forest
            National Monuments: African Burial Grounds National Monument, Castle Clinton National Monument, Fort Stanwix National Monument, Governors Island National Monument, Statue of Liberty National Monument, Stonewall National Monument
            Other Sites: Cornell Botanical Gardens, Empire State Building, Niagara Falls, Rockefeller Center, Times Square, International United Nations Headquarters, Adirondack Park, Finger Lakes, Broadway Theater, Central Park, Metropolitan Museum of Art, One World Trade Center, Brooklyn Bridge, Unisphere, Chrysler Building, Theodore Roosevelt Birthplace National Historic Site, Federal Hall National Memorial, Belvedere Castle, Washington Square Arch, Butler Library, Carnegie Hall, Big Duck, Chittenango Falls State Park, Saratoga National Historical Park, Federal Hall National Memorial, General Grant National Memorial, Hamilton Grange National Memorial

            Dams: Mount Morris Dam, New Croton Dam
            International/Major Airports: John F. Kennedy International Airport, LaGuardia Airport, Buffalo Niagara International Airport, Albany International Airport, Greater Rochester International Airport
            """],
        ["North Carolina", """
            Capital: Raleigh
            Major Cities: Charlotte, Raleigh, Greensboro, Durham, Winston-Salem
            Population: 10,150,000
            Area: 53,819 sq mi
            Bordering States: South Carolina, Virginia, Tennessee, Georgia
            Nicknames: Tar Heel State, First in Flight State

            Mountain Ranges: Great Smoky Mountains, Black Mountains, Unicoi Mountains, Appalachian Mountains, Saluda Mountains, Great Balsam Mountains, Cane Creek Mountains
            Rivers: Roanoke River, New River, Neuse River, Catawba River
            Lakes and Reservoirs: Lake Norman, Mountain Island Lake, Badin Lake
            Plateaus: Piedmont Plateau
            Peninsulas, Capes, and Points: Cape Hatteras, Albemarle-Pamlico Peninsula, Cape Lookout, Cape Fear, Bodie Island Barrier Peninsula
            Islands: Hatteras Island, Ocracoke Island, Roanoke Island, Masonboro Island
            Archipelagoes: Outer Banks, Core Banks
            Swamps, Marshes, and Wetlands: Great Dismal Swamp
            Valleys: Tennessee Valley
            Other Landforms: Crystal Coast
            Other Bodies of Water: Albemarle Sound, Pamlico Sound, Currituck Sound, Oregon Inlet, Masonboro Inlet
            Mountains: Mount Mitchell, Mount Craig, Clingmans Dome, Pilot Mountain, Waterrock Knob, Mount Pisgah, Craggy Dome

            National Parks: Great Smoky Mountains National Park
            National Forests: Cherokee National Forest, Croatan National Forest, Nantahala National Forest, Pisgah National Forest, Uwharrie National Forest
            Other Sites: Cape Hatteras National Seashore, Cape Lookout National Seashore, Wright Brothers National Memorial, Chimney Rock State Park, Fort Raleigh National Historic Site, Moores Creek National Battlefield

            Dams: Fontana Dam
            International/Major Airports: Charles/Douglas International Airport, Raleigh-Durham International Airport
            """],
        ["North Dakota", """
            Capital: Bismarck
            Major Cities: Fargo, Bismarck, Grand Forks, Minot, West Fargo
            Population: 757,000
            Area: 70,698 sq mi
            Bordering States: South Dakota, Montana, Minnesota
            Nicknames: Peace Garden State

            Rivers: Missouri River, James River, Yellowstone River, Red River of the North, Sheyenne River, Little Missouri River
            Lakes and Reservoirs: Lake Sakakawea, Devils Lake
            Plateaus: Missouri Plateau, Turtle Mountain Plateau
            Valleys: Red River Valley
            Other Landforms: White Butte, Pembina Escarpment

            National Parks: Theodore Roosevelt National Park
            Other Sites: International Peace Garden, World’s Largest Buffalo Monument

            International/Major Airports: Hector International Airport
            """],
        ["Ohio", """
            Capital: Columbus
            Major Cities: Columbus, Cleveland, Cincinnati, Toledo, Akron
            Population: 11,615,000
            Area: 44,825 sq mi
            Bordering States: Indiana, Kentucky, Pennsylvania, West Virginia, Michigan
            Nicknames: Buckeye State

            Mountain Ranges: Appalachian Mountains
            Rivers: Ohio River, Wabash River, Scioto River, Olentangy River, Great Miami River, Maumee River, Cuyahoga River, Sandusky River, Muskingum River, Mahoning River
            Lakes and Reservoirs: Lake Erie, Pymatuning Reservoir, Grand Lake St. Marys, Portage Lakes, Tappan Lake
            Bays and Gulfs: Maumee Bay, Sandusky Bay
            Plateaus: Allegheny Plateau
            Peninsulas, Capes, and Points: Whiskey Island
            Islands: Kelleys Island, South Bass Island, Gulf Island Shoal
            Archipelagoes: Lake Erie Islands, Bass Islands
            Caves: Ohio Caverns, Seneca Caverns
            Canyons and Gorges: Blackhand Gorge
            Swamps, Marshes, and Wetlands: Great Black Swamp
            Valleys: Cuyahoga Valley, Miami Valley
            Other Landforms: Campbell Hill, Hocking Hills, Mississinawa Moraine

            National Parks: Cuyahoga Valley National Park
            National Forests: Wayne National Forest
            National Monuments: Charles Young Buffalo Soldiers National Monument
            Other Sites: Grand Lake St. Marys State Park, Perry’s Victory and International Peace Memorial, Hopewell Culture National Historical Park, Cedar Point, Hocking Hills State Park, Blackhand Gorge State Nature Preserve, Rock and Roll Hall of Fame, Key Tower, Fountain of Eternal Life (War Memorial Fountain), James A. Garfield Memoial

            Dams: Mohawk Dam
            International/Major Airports: Cleveland-Hopkins International Airport, Port Columbus International Airport
            """],
        ["Oklahoma", """
            Capital: Oklahoma City
            Major Cities: Oklahoma City, Tulsa, Norman, Broken Arrow, Lawton, Edmond, Moore
            Population: 3,925,000
            Area: 69,898 sq mi
            Bordering States: Texas, Kansas, Arkansas, Colorado, Missouri, New Mexico
            Nicknames: Sooner State, Native America

            Mountain Ranges: Ouachita Mountains, Ozark Mountains, Wichita Mountains, Arbuckle Mountains, Boston Mountains, Kiamichi Mountains, Quartz Mountains
            Rivers: Arkansas River, Red River of the South, Canadian River, Cimarron River, Neosho River, North Canadian River, Verdigris River, Washita River, Kiamichi River
            Lakes and Reservoirs: Eufaula Lake, Lake Texoma, Grand Lake of the Cherokee, Robert S. Kerr Reservoir, Oologah Lake, Keystone Lake, Sardis Lake, Tenkiller Ferry Lake, Broken Bow Lake, Skiatook Lake, Great Salt Plains Lake, Lake of the Arbuckles
            Plateaus: Ozark Plateau
            Plains and Basins: Gulf Coastal Plain, Great Plains, Johns Valley
            Caves: Alabaster Caverns
            Other Landforms: Black Mesa, Cavanal Hill, Glass Mountains, Antelope Hills, Mesa de Maya, Flint Hills, Ames Crater
            Other Bodies of Water: Turner Falls
            Mountains: Mount Scott, Mount Pinchot, Rich Mountain, Lookout Mountain, Quartz Mountain

            National Forests: Ouachita National Forest
            Other Sites: Tallgrass Prairie Preserve, Black Kettle National Grassland, Fort Smith National Historic Site, Oklahoma City National Memorial, Chickasaw National Recreation Area, Golden Driller, Myriad Botanical Gardens, National Cowboy and Western Heritage Museum, Ed Galloway’s Totem Pole Park, Blue Whale of Catoosa, Great Salt Plains State Park, Talimena Scenic Drive, Wichita Mountains Wildlife Refuge, Washita Battlefield National Historic Site, BOK Tower, Philbrook Museum of Art

            Dams: Pensacola Dam
            International/Major Airports: Will Rogers World Airport, Tulsa International Airport
            """],
        ["Oregon", """
            Capital: Salem
            Major Cities: Portland, Salem, Eugene, Gresham, Hillsboro
            Population: 4,095,000
            Area: 98,378 sq mi
            Bordering States: California, Washington, Idaho, Nevada
            Nicknames: Beaver State

            Mountain Ranges: Cascade Range, Coast Range, Klamath Mountains, Siskiyou Mountains, Blue Mountains, Pueblo Mountains, Wallowa Mountains, Calapooya Mountains
            Rivers: Columbia River, Snake River, Owyhee River, John Day River, Klamath River, Deschutes River, Rogue River, Malheur River, Willamette River, Grande Ronde River
            Lakes and Reservoirs: Crater Lake
            Bays and Gulfs: Netarts Bay, Tillamook Bay, Yaquina Bay
            Deserts: Alvord Desert, High Desert, Owyhee Desert
            Plateaus: Columbia Plateau, Modoc Plateau
            Plains and Basins: Klamath Basin
            Peninsulas, Capes, and Points: Cape Lookout, Cascade Head, Cape Meares
            Islands: Zwagg Island
            Archipelagoes: Oregon Islands
            Caves: Lava River Cave, Redmond Caves, Paisley Caves, Derrick Cave, Sea Lion Caves
            Canyons and Gorges: Columbia River Gorge, Hells Canyon
            Valleys: Willamette Valley, Catlow Valley, Goose Lake Valley
            Other Landforms: Three Arch Rocks, Cascade Volcanoes, Pilot Butte, Three Sisters, Broken Top, Newberry Volcano, Horse Lava Tube System
            Other Bodies of Water: Willamette Falls, Columbia River Estuary
            Mountains: Mount Hood, Mount Jefferson, Neahkahnie Mountain, Mount Bachelor

            National Parks: Crater Lake National Park
            National Forests: Deschutes National Forest, Fremont-Winema National Forest, Klamath National Forest, Malheur National Forest, Mount Hood National Forest, Ochoco National Forest, Siuslaw National Forest, Wallowa-Whitman National Forest, Willamette National Forest
            National Monuments: John Day Fossil Beds National Monument, Newberry National Volcanic Monument, Oregon Caves National Monument
            Other Sites: Nez Perce National Historical Park, Fort Vancouver National Historic Site

            Dams: Bonneville Dam
            International/Major Airports: Portland International Airport
            """],
        ["Pennsylvania", """
            Capital: Harrisburg
            Major Cities: Philadelphia, Pittsburgh, Allentown, Erie, Reading, Scranton, Lancaster, Bethlehem
            Population: 12,815,000
            Area: 46,054 sq mi
            Bordering States: New York, Ohio, West Virginia, Maryland, Delaware, New Jersey
            Nicknames: Keystone State, Quaker State

            Mountain Ranges: Appalachian Mountains, Pocono Mountains, Allegheny Mountains, Blue Ridge Mountains, Bear Pond Mountains, Endless Mountains, Conewago Mountains, Moosic Mountains
            Rivers: Susquehanna River, Allegheny River, Ohio River, Monongahela River, Delaware River, Schuylkill River, Genesee River, Youghiogheny River
            Lakes and Reservoirs: Lake Erie, Lake Wallenpaupack, Raystown Lake, Lake Nockamixon, Pymatuning Reservoir
            Bays and Gulfs: Presque Isle Bay
            Plateaus: Allegheny Plateau
            Caves: Indian Echo Caverns, Lincoln Caverns, Crystal Cave
            Canyons and Gorges: Pine Creek Gorge
            Swamps, Marshes, and Wetlands: Green Pond Marsh, Espy Bog
            Valleys: Susquehanna Valley, Cumberland Valley, Kishacoquillas Valley, Bald Eagle Valley, Nittany Valley
            Other Landforms: Indian God Rock, Tuscarora Formation, South Mountain, Mount Nittany, Blue Knob, Camelback Mountain, Pine Knob
            Mountains: Mount Davis, Big Mountain, Schaefer Head, Bald Mountain, Elk Hill (North Knob or Elk Mountain)

            National Forests: Allegheny National Forest
            Other Sites: Tioga State Forest, National Constitution Center, Independence Hall, Benjamin Franklin National Memorial, Valley Forge National Historical Park, Buchanan State Forest, Gettysburg National Military Park, Gettysburg National Cemetery, Antietam National Battlefield, Independence Mall, Liberty Bell, Elk Mountain Ski Area, Tomb of the Unknown Revolutionary War Soldier, Washington Square

            Dams: Kinzua Dam
            International/Major Airports: Philadelphia International Airport, Pittsburgh International Airport, Harrisburg International Airport
            """],
        ["Rhode Island", """
            Capital: Providence
            Major Cities: Providence, Warwick, Cranston, Pawtucket
            Population: 1,060,000
            Area: 1,544 sq mi
            Bordering States: Connecticut, Massachusetts
            Nicknames: Ocean State

            Rivers: Blackstone River, Pawcatuck River, Wood River
            Lakes and Reservoirs: Scituate Reservoir, Ninigret Pond
            Bays and Gulfs: Narragansett Bay, Little Narragansett Bay
            Peninsulas, Capes, and Points: Quonset Point
            Islands: Aquidneck Island, Conanicut Island, Block Island
            Other Landforms: Jerimoth Hill, Mohegan Bluffs
            Other Bodies of Water: Block Island Sound

            Other Sites: Roger Williams National Memorial, Blackstone Valley

            International/Major Airports: Theodore Francis Green State Airport
            """],
        ["South Carolina", """
            Capital: Columbia
            Major Cities: Columbia, Charleston, North Charleston, Mount Pleasant, Rock Hill
            Population: 4,975,000
            Area: 32,020 sq mi
            Bordering States: North Carolina, Georgia
            Nicknames: Palmetto State

            Mountain Ranges: Appalachian Mountains, Blue Ridge Mountains, Saluda Mountains
            Rivers: Savannah River, Catawba River, Edisto River, Saluda River, Black River
            Lakes and Reservoirs: Lake Marion, Lake Strom Thurmond (Clarks Hill Lake), Lake Moultrie, Lake Hartwell, Lake Murray, Richard B. Russell Lake, Lake Keowee, Lake Wylie
            Bays and Gulfs: Winyah Bay
            Plateaus: Piedmont Plateau
            Plains and Basins: Atlantic Coastal Plain, ACE (Ashepoo, Combahee, and Edisto) Basin
            Islands: Hilton Head Island, Johns Island, Saint Helena Island, Sullivan’s Island, Kiawah Island, Fripp Island, Hunting Island, Callawassie Island
            Archipelagoes: Sea Islands
            Swamps, Marshes, and Wetlands: Audobon Swamp Garden
            Other Bodies of Water: Port Royal Sound, Intracoastal Waterway, Charleston Harbor, Saint Helena Sound, Floridan Aquifer
            Mountains: Sassafras Mountain, Pinnacle Mountain, Glassy Mountain

            National Parks: Congaree National Park
            National Forests: Francis Marion National Forest, Sumter National Forest
            National Monuments: Fort Sumter National Monument, Reconstruction Era National Monument
            Other Sites: Francis Beidler Forest, Cypress Gardens, Charles Pinckney National Historic Site, Table Rock State Park, Caesars Head State Park, Fort Moultrie, Cowpens National Battlefield, Kings Mountain National Military Park, Grand Strand, Huntington Beach State Park

            Dams: Richard B. Russell Dam, Hartwell Dam, J. Strom Thurmond Dam
            International/Major Airports: Charleston International Airport, Greenville-Spartanburg International Airport
            """],
        ["South Dakota", """
            Capital: Pierre
            Major Cities: Sioux Falls, Rapid City, Aberdeen, Brookings, Watertown
            Population: 870,000
            Area: 77,115 sq mi
            Bordering States: North Dakota, Montana, Minnesota, Iowa, Nebraska, Wyoming
            Nicknames: Mount Rushmore State, Blizzard State, Coyote State, Artesian State

            Mountain Ranges: Black Hills, Elk Mountains, Bear Lodge Mountains
            Rivers: Missouri River, James River, White River, Little Missouri River, Big Sioux River, Cheyenne River, Belle Fourche River
            Lakes and Reservoirs: Lake Oahe, Lake Francis Case, Lake Sharpe, Lewis and Clark Lake, Big Stone Lake, Lake Kampeska, Lake Thompson, Pactola Lake, Sylvan Lake, Sheridan Lake
            Plateaus: Missouri Plateau, Coteau des Prairies
            Plains and Basins: Great Plains, Missouri River Basin
            Caves: Wind Cave, Jewel Cave, Rushmore Cave, Sitting Bull Crystal Caverns
            Canyons and Gorges: Spearfish Canyon
            Other Landforms: Bear Butte, Thunder Butte, Needles (Black Hills)
            Mountains: Black Elk Peak, Mount Rushmore, Terry Peak, Cicero Peak, Red Shirt Table Mountain

            National Parks: Badlands National Park, Wind Cave National Park
            National Forests: Black Hills National Forest, Custer National Forest
            National Monuments: Jewel Cave National Monument
            Other Sites: Mount Rushmore National Memorial, Missouri National Recreational River, Custer State Park, Crazy Horse Memorial, Mammoth Site, Homestake Gold Mine, Minuteman Missile National Historic Site, Dinosaur Park, Corn Palace, Buffalo Gap National Grassland, Lewis and Clark National Historic Trail, Grand River National Grassland, Washington Pavilion of Arts and Science, Reptile Gardens, Chapel in the Hills

            Dams: Oahe Dam, Big Bend Dam, Pactola Dam, Deerfield Dam
            International/Major Airports: Sioux Falls Regional Airport
            """],
        ["Tennessee", """
            Capital: Nashville
            Major Cities: Memphis, Nashville, Knoxville, Chattanooga, Clarksville
            Population: 6,655,000
            Area: 42,144 sq mi
            Bordering States: Kentucky, Missouri, Alabama, North Carolina, Virginia, Georgia, Arkansas, Mississippi
            Nicknames: Volunteer State, Butternut State, Big Bend State

            Mountain Ranges: Great Smoky Mountains, Unicoi Mountains, Appalachian Mountains, Unaka Mountains, Bald Mountains
            Rivers: Tennessee River, Cumberland River, Mississippi River, Clinch River, Duck River, Hatchie River, French Broad River, Elk River, Holston River, Powell River
            Lakes and Reservoirs: Kentucky Lake, Guntersville Lake, Wheeler Lake, Lake Barkley, Pickwick Lake
            Plateaus: Cumberland Plateau
            Plains and Basins: Gulf Coastal Plain, Nashville Basin
            Caves: Cumberland Caverns, Craighead Caverns
            Canyons and Gorges: Scott’s Gulf
            Valleys: Tennessee Valley, The Sugarlands
            Other Landforms: Walden Ridge
            Mountains: Mount Guyot, Mount Le Conte, Mount Chapman, Mount Kephart, Thunderhead Mountain, Big Frog Mountain

            National Parks: Great Smoky Mountains National Park
            National Forests: Cherokee National Forest, Land Between the Lakes National Forest
            Other Sites: Memphis Pyramid, Sunsphere, Cumberland Gap National Historical Park, Andrew Johnson National Historic Site, Chickamauga and Chattanooga National Military Park, Shiloh National Military Park, Cherohala Skyway, Joyce Kilmer Memorial Forest

            Dams: Watauga Dam, Calderwood Dam
            International/Major Airports: Memphis International Airport, Nashville International Airport
            """],
        ["Texas", """
            Capital: Austin
            Major Cities: Houston, Dallas, San Antonio, Austin, Fort Worth, El Paso, Arlington, Corpus Christi, Plano, Laredo, Lubbock, Garland, Irving, Amarillo, Grand Prairie, Waco, Abilene, Odessa, Brownsville, Pasadena
            Population: 27,875,000
            Area: 268,596 sq mi
            Bordering States: New Mexico, Oklahoma, Arkansas, Louisiana
            Nicknames: Lone Star State, Friendship State

            Mountain Ranges: Guadalupe Mountains, Davis Mountains, Chisos Mountains, Franklin Mountains
            Rivers: Rio Grande, Red River, Pecos River, Brazos River, Colorado River, Canadian River, Trinity River, Sabine River, Neches River, Nueces River
            Lakes and Reservoirs: Toledo Bend Reservoir, Sam Rayburn Reservoir, Falcon International Reservoir, Lake Texoma, Lake Livingston, Amistad Reservoir, Green Lake, Caddo Lake
            Bays and Gulfs: Gulf of Mexico, Galveston Bay, Corpus Christi Bay, Nueces Bay, Oso Bay, Matagorda Bay, San Antonio Bay, Aransas Bay, Copano Bay, Lavaca Bay, Carancahua Bay
            Straits: San Luis Pass
            Deserts: Chihuahuan Desert
            Plateaus: Edwards Plateau
            Plains and Basins: Great Plains, Gulf Coastal Plain
            Peninsulas, Capes, and Points: Bolivar Peninsula
            Islands: Padre Island, Galveston Island, Mustang Island, San José Island
            Caves: Natural Bridge Caverns, Caverns of Sonora
            Canyons and Gorges: Blanco Canyon, Palo Duro Canyon, McKittrick Canyon
            Valleys: Rio Grande Valley, Mesilla Valley
            Other Landforms: Caprock Escarpment, Mescalero Escarpment, Llano Uplift, Balcones Fault
            Other Bodies of Water: Edwards Aquifer, San Marcos Springs
            Mountains: Guadalupe Peak, Bush Mountain, Shumard Peak, Baldy Peak, Hunter Peak, El Capitan, Emory Peak

            National Parks: Big Bend National Park, Guadelupe Mountains National Park
            National Forests: Angelina National Forest, Davy Crockett National Forest, Sabine National Forest, Sam Houston National Forest
            National Monuments: Alibates Flint Quarries National Monument, Military Working Dog Teams National Monument, Waco Mammoth National Monument
            Other Sites: Johnson Space Center, Padre Island National Seashore, Caprock Canyons State Park and Trailway, Big Thicket National Preserve, Fort Davis National Historic Site, Amistad National Recreation Area, The Alamo Mission, Globe Life Park, Texas State Park

            Dams: Mansfield Dam
            International/Major Airports: Dallas/Fort Worth International Airport, George Bush Intercontinental Airport, William P. Hobby International Airport, Austin-Bergstrom International Airport, El Paso International Airport
            """],
        ["Utah", """
            Capital: Salt Lake City
            Major Cities: Salt Lake City, West Valley City, Provo, West Jordan, Orem
            Population: 3,055,000
            Area: 84,896 sq mi
            Bordering States: Nevada, Arizona, Wyoming, Colorado, New Mexico, Idaho
            Nicknames: Beehive State, Mormon State

            Mountain Ranges: Rocky Mountains, Wasatch Range, Uinta Mountains, Oquirrh Mountains, Bear River Mountains, Stansbury Mountains
            Rivers: Colorado River, Green River, Bear River, San Juan River, Sevier River, Dolores River
            Lakes and Reservoirs: Great Salt Lake, Lake Powell, Utah Lake, Sevier Lake
            Deserts: Great Basin Desert, Ferguson Desert, Sevier Desert
            Plateaus: Colorado Plateau, Markagunt Plateau, Kaiparowits Plateau, Aquarius Plateau, Paunsaugunt Plateau
            Plains and Basins: Great Basin, Uintah Basin
            Caves: Timpanogos Cave System
            Canyons and Gorges: Zion Canyon, Cataract Canyon, Nine Mile Canyon, Buckskin Gulch, Bryce Canyon, Horseshoe Canyon
            Valleys: Salt Lake Valley, Utah Valley, Tule Valley, Wah Wah Valley, Snake Valley
            Other Landforms: Bonneville Salt Flats, Rainbow Bridge, Landscape Arch, Kolob Arch, Moenkopi Formation, Grand Staircase, Cedar Mesa
            Mountains: Mount Timpanogos

            National Parks: Arches National Park, Bryce Canyon National Park, Capitol Reef National Park, Canyonlands National Park, Zion National Park
            National Forests: Ashley National Forest, Dixie National Forest, Fishlake National Forest, Manti-La Sal National Forest, Sawtooth National Forest, Uinta-Wasatch-Cache National Forest
            National Monuments: Bears Ears National Monument, Cedar Breaks National Monument, Dinosaur National Monument, Grand Staircase-Escalante National Monument, Hovenweep National Monument, Natural Bridges National Monument, Rainbow Bridge National Monument, Timpanogos Cave National Monument
            Other Sites: Temple Square, Golden Spike National Historic Site

            Dams: Flaming Gorge Dam
            International/Major Airports: Salt Lake City International Airport
            """],
        ["Vermont", """
            Capital: Montpelier
            Major Cities: Burlington, Essex, South Burlington, Colchester, Rutland
            Population: 625,000
            Area: 9,616 sq mi
            Bordering States: New York, New Hampshire, Massachusetts
            Nicknames: Green Mountain State

            Mountain Ranges: Green Mountains, Taconic Mountains, Notre Dame Mountains
            Rivers: Connecticut River, Otter Creek, Winooski River
            Lakes and Reservoirs: Lake Champlain, Lake Memphremagog, Lake Bomoseen, Lake Seymour
            Bays and Gulfs: Missisquoi Bay
            Islands: Isle La Motte
            Canyons and Gorges: Quechee Gorge
            Valleys: Connecticut River Valley, Champlain Valley
            Other Landforms: Green Mountain Giant
            Mountains: Mount Mansfield, Killington Peak, Mount Ellen, Jay Peak

            National Forests: Green Mountains National Forest

            Dams: Moore Dam
            International/Major Airports: Burlington International Airport
            """],
        ["Virginia", """
            Capital: Richmond
            Major Cities: Virginia Beach, Norfolk, Chesapeake, Arlington, Richmond
            Population: 8,415,000
            Area: 42,744 sq mi
            Bordering States: West Virginia, North Carolina, Maryland, Kentucky, Tennessee, Washington D.C. (Federal District)
            Nicknames: The Old Dominion

            Mountain Ranges: Appalachian Mountains, George Washington Mountains, Blue Mountains, Cumberland Mountains
            Rivers: Roanoke River, James River, New River, Potomac River, Clinch River, Dan River, Rappahannock River
            Lakes and Reservoirs: Smith Mountain Lake, Kerr Lake, Lake Gaston, Lake Anna, South Holston Lake, Lake Drummond
            Bays and Gulfs: Chesapeake Bay, Chincoteague Bay, Belmont Bay
            Straits: Assateague Channel, Chincoteague Channel
            Plateaus: Cumberland Plateau, Appalachian Plateau
            Plains and Basins: Atlantic Coastal Plain, Tidewater
            Peninsulas, Capes, and Points: Delmarva Peninsula, Virginia Peninsula, Middle Peninsula, Northern Neck, Sewells Point, Mason Neck
            Isthmuses and Spits: Willoughby Spit
            Islands: Chincoteague Island, Jamestown Island, Wallops Island
            Archipelagoes: Virginia Barrier Islands
            Swamps, Marshes, and Wetlands: Great Dismal Swamp, Dyke Marsh
            Valleys: Roanoke Valley, Tennessee Valley, Shenandoah Valley
            Mountains: Mount Rogers, Whitetop Mountain, Hawksbill Mountain

            National Parks: Shenandoah National Park
            National Forests: George Washington and Jefferson National Forest
            National Monuments: Booker T. Washington National Monument, Fort Monroe National Monument, George Washington Birthplace National Monument
            Other Sites: Assateague Island National Seashore, Arlington National Cemetery, Appomattox Court House, Harpers Ferry National Historical Park, Manassas National Battlefield Park, Fredericksburg Cemetery

            International/Major Airports: Washington Dulles International Airport, Ronald Reagan International Airport, Norfolk International Airport, Richmond International Airport
            """],
        ["Washington", """
            Capital: Olympia
            Major Cities: Seattle, Spokane, Tacoma, Vancouver, Bellevue
            Population: 7,290,000
            Area: 71,297 sq mi
            Bordering States: Oregon, Idaho
            Nicknames: Evergreen State

            Mountain Ranges: Columbia Mountains, Selkirk Mountains, Cariboo Mountains, Monashee Mountains, Purcell Mountains, Chuckanut Mountains
            Rivers: Columbia River, Snake River, Yakima River, Grande Ronde River, Kettle River, Palouse River, Skagit River
            Lakes and Reservoirs: Lake Chelan, Lake Washington, Franklin Delano Roosevelt Lake, Potholes Reservoir
            Bays and Gulfs: Padilla Bay, Skagit Bay, Willapa Bay, Discovery Bay, Bellingham Bay, Oakland Bay
            Straits: Strait of Juan de Fuca, Strait of Georgia, Rosario Strait, Haro Strait, Rich Passage, Deception Pass, Swinomish Channel
            Plateaus: Columbia Plateau, Okanagan Highland
            Peninsulas, Capes, and Points: Olympic Peninsula, Cape Flattery, Cape Alava, Long Beach Peninsula, Kitsap Peninsula, Key Peninsula, Quimper Peninsula, Lummi Peninsula
            Islands: Orcas Island, San Juan Island, Lopez Island, Whidbey Island, Camano Island, Shaw Island, Fidalgo Island, Guemes Island, Lummi Island, Fox Island
            Archipelagoes: San Juan Islands
            Canyons and Gorges: Columbia River Gorge, Ape Canyon
            Swamps, Marshes, and Wetlands: Saltese Flats
            Other Landforms: Carbon Glacier, Emmons Glacier, Cascade Volcanic Arc, The Brothers
            Other Bodies of Water: Puget Sound, Admiralty Inlet, Salish Sea, Saratoga Passage, Hammersley Inlet, Olympic Hot Springs, Hood Canal
            Mountains: Mount Rainier, Crystal Mountain, Mount St. Helens, Mount Baker, Mount Adams, Glacier Peak (Dakobed), Mount Shuksan, Mount Olympus, Mount Constance, Mount Stuart, Mount Deception

            National Parks: Mount Rainier National Park, North Cascades National Park, Olympic National Park
            National Forests: Colville National Forest, Gifford Pinchot National Forest, Idaho Panhandle National Forest, Mount Baker-Snoqualmie National Forest, Okanogan-Wenatchee National Forest, Olympic National Forest, Umatilla National Forest
            National Monuments: Hanford Reach National Monument, Mount St. Helens National Volcanic Monument, San Juan Islands National Monument
            Other Sites: Seattle Space Needle, CenturyLink Field, Lake Union Park, Pike Place Market, Museum of Glass, San Juan Island National Historical Park, Lake Roosevelt National Recreation Area, Deception Pass Bridge, Cape Disappointment State Park

            Dams: Grand Coulee Dam, Mossyrock Dam, Ross Dam
            International/Major Airports: Seattle-Tacoma International Airport, Spokane International Airport
            """],
        ["West Virginia", """
            Capital: Charleston
            Major Cities: Charleston, Huntington, Morgantown, Parkersburg, Wheeling
            Population: 1,835,000
            Area: 24,230 sq mi
            Bordering States: Ohio, Virginia, Pennsylvania, Maryland, Kentucky
            Nicknames: Mountain State, Panhandle State

            Mountain Ranges: Appalachian Mountains, Allegheny Mountains, Cumberland Mountains
            Rivers: Ohio River, New River, Potomac River, Greenbrier River, Elk River, Little Kanawha River, Guyandotte River
            Lakes and Reservoirs: Summersville Lake, Bluestone Lake, Burnsville Lake, Sutton Lake
            Plateaus: Appalachian Plateau, Allegheny Plateau, Cumberland Plateau
            Islands: Blennerhassett Island
            Caves: Lost World Caverns, Organ Cave, Hellhole Pit Cave
            Canyons and Gorges: Smoke Hole Canyon, Cheat Canyon
            Swamps, Marshes, and Wetlands: Cranberry Glades
            Valleys: Canaan Valley, Germany Valley, Ohio River Valley
            Other Landforms: Seneca Rocks, Champe Rocks, Spruce Knob, North Fork Mountain, Wills Mountain
            Other Bodies of Water: Blackwater Falls
            Mountains: Spruce Mountain, Cheat Mountain, Back Allegheny Mountain

            National Forests: George Washington and Jefferson National Forest, Monongahela National Forest
            Other Sites: New River Gorge Bridge, New River Gorge National River, Ohio River Islands National Wildlife Refuge, Dolly Sods Wilderness, Chesapeake and Ohio Canal National Historical Park, Harpers Ferry National Historical Park, Hawks Nest State Park, Veterans Memorial Bridge, Harris Riverfront Park

            Dams: Summersville Dam
            International/Major Airports: Yeager Airport
            """],
        ["Wisconsin", """
            Capital: Madison
            Major Cities: Milwaukee, Madison, Green Bay, Kenosha, Racine
            Population: 5,780,000
            Area: 65,496 sq mi
            Bordering States: Michigan, Minnesota, Iowa, Illinois
            Nicknames: Badger State, America’s Dairyland

            Mountain Ranges: Baraboo Range
            Rivers: Wisconsin River, Mississippi River, Rock River, Wolf River, Oconto River, Pecatonica River, Saint Louis River, Black River, Chippewa River, St. Croix River
            Lakes and Reservoirs: Lake Superior, Lake Michigan, Lake Winnebago, Lake Mendota, Lake Monona, Lake Pepin, Petenwell Lake, Lake Wingra, Castle Rock Lake, Lake Chippewa, Lake Poygan, Lake Koshkonong, Shawano Lake
            Bays and Gulfs: Green Bay, Chequamegon Bay, Sturgeon Bay, Superior Bay, Oronto Bay, Pokegama Bay
            Straits: Porte des Morts Strait
            Plains and Basins: Central Plain
            Peninsulas, Capes, and Points: Door Peninsula, Bayfield Peninsula, Chequamegon Point
            Islands: Washington Island
            Caves: Cave of the Mounds, Crystal Cave
            Swamps, Marshes, and Wetlands: Coffee Swamp, Theresa Marsh, Horicon Marsh
            Valleys: Menomonee Valley
            Other Landforms: Timms Hill, Rib Mountain, Niagara Escarpment, Driftless Area

            National Forests: Chequamegon-Nicolet National Forest
            Other Sites: Apostle Islands National Lakeshore, Ice Age National Scenic Trail, Cherney Maribel Caves County Park, North Point Water Tower, Lakeshore State Park, Miller Park, Gesu Church (Milwaukee), Lake Kegonsa State Park, Monona Terrace Community and Convention Center

            Dams: Mondeaux Dam Recreation Area
            International/Major Airports: General Mitchell International Airport, Green Bay-Austin Straubel International Airport, Appleton International Airport, Dane County Regional Airport, Central Wisconsin Airport
            """],
        ["Wyoming", """
            Capital: Cheyenne
            Major Cities: Cheyenne, Casper, Laramie, Gillette, Rock Springs
            Population: 590,000
            Area: 97,813 sq mi
            Bordering States: Idaho, Montana, Colorado, South Dakota, Nebraska, Utah
            Nicknames: Cowboy State, Equality State

            Mountain Ranges: Rocky Mountains, Teton Range, Wind River Range, Absaroka Range, Bighorn Range, Laramie Mountains, Medicine Bow Mountains, Black Hills
            Rivers: Snake River, Green River, North Platte River, Yellowstone River, Niobrara River, Little Missouri River, Bear River, Bighorn River, Powder River, Cheyenne River
            Lakes and Reservoirs: Yellowstone Lake, Flaming Gorge Reservoir, Jackson Lake, Jenny Lake
            Deserts: Red Desert
            Plateaus: Yellowstone Plateau, Death Canyon Shelf
            Plains and Basins: Great Divide Basin, Great Plains
            Caves: Tongue River Cave
            Canyons and Gorges: Grand Canyon of the Yellowstone, Cascade Canyon, Webb Canyon, Garnet Canyon
            Valleys: Star Valley, Jackson Hole (Valley), Hayden Valley
            Other Landforms: Devils Tower, Teapot Rock
            Other Bodies of Water: Yellowstone Falls, Old Faithful Geyser
            Mountains: Gannett Peak, Grand Teton, Fremont Peak, Downs Mountain, Wind River Peak, Cloud Peak

            National Parks: Grand Teton National Park, Yellowstone National Park
            National Forests: Ashley National Forest, Bighorn National Forest, Black Hills National Forest, Bridger-Teton National Forest, Caribou-Targhee National Forest, Medicine Bow-Routt National Forest, Shoshone National Forest, Uinta-Wasatch-Cache National Forest
            National Monuments: Devils Tower National Monument, Fossil Butte National Monument
            Other Sites: John D. Rockefeller Jr. Memorial Parkway, Bighorn Canyon National Recreation Area

            Dams: Pathfinder Dam, Jackson Lake Dam, Buffalo Bill Dam
            International/Major Airports: Jackson Hole Airport
            """],
        ["American Samoa", """
            Capital: Pago Pago
            Major Cities: Pago Pago, Tafuna, Nu’uuli
            Population: 55,000
            Area: 77 sq mi
            Languages: Samoan, English, Tongan

            Bays and Gulfs: Fagatele Bay, Faga’itua Bay, Pago Pago Harbor
            Peninsulas, Capes, and Points: Cape Taputapu
            Islands: Tutuila, Ta’u, Ofu-Olosega Twin Islands, Aunu’u, Swains Island
            Archipelagoes: Manu’a Islands
            Other Landforms: Vailulu’u
            Mountains: Lata Mountain, Rainmaker Mountain (North Pioa Mountain)

            National Parks: National Park of American Samoa
            National Monuments: Rose Atoll Marine National Monument
            Other Sites: Rose Island Concrete Monument

            International/Major Airports: Pago Pago International Airport
            """],
        ["Guam", """
            Capital: Hagatna
            Population: 165,000
            Area: 210 sq mi
            Languages: Chamorro, English

            Lakes and Reservoirs: Fena Lake
            Bays and Gulfs: Agat Bay, Talofofo Bay
            Peninsulas, Capes, and Points: Orote Peninsula, Point Udall
            Islands: Guam Island, Cocos Island, Cabras Island, Fofos Island
            Other Landforms: Uruno Beach, Fouha Point
            Other Bodies of Water: Cocos Lagoon, Apra Harbor, Talofofo Falls
            Mountains: Mount Lamlam, Mount Jumullong Manglo, Mount Bolanos

            Other Sites: Naval Base Guam, War in the Pacific National Historical Park, Asan Invasion Beach, Fort Nuestra Senora de la Soledad, Dulce Nombre de Maria Cathedral Basilica, Guam National Wildlife Refuge

            International/Major Airports: Antonio B. Won Pat International Airport
            """],
        ["Northern Mariana Islands", """
            Capital: Saipan
            Population: 55,000
            Area: 179 sq mi
            Languages: Chamorro, Carolinian, English

            Bays and Gulfs: Laolao Bay
            Seas: Philippine Sea
            Straits: Saipan Channel, Tinian Channel
            Islands: Saipan Island, Rota Island, Tinian Island, Managaha Island, Anatahan Island, Pagan Island, Agrihan Island, Asuncion Island, Farallon de Parajos, Alamagan Island, Farallon de Medinila, Aguigan Island
            Archipelagoes: Northern Mariana Islands, Mariana Islands, Maug Islands
            Mountains: Mount Agrihan, Mount Tapochau, Anatahan Volcano

            National Monuments: Marianas Trench Marine National Monument
            Other Sites: American Memorial Park, The Grotto

            International/Major Airports: Saipan International Airport, Rota International Airport
            """],
        ["Puerto Rico", """
            Capital: San Juan
            Major Cities: San Juan, Ponce, Bayamon, Carolina, Caguas
            Population: 3,500,000
            Area: 3,515 sq mi
            Nicknames: Isle of Enchantment, Pearl of the Sea
            Languages: Spanish, English

            Mountain Ranges: Cordillera Central, Sierra Bermeja
            Rivers: Rio de la Plata, Rio Grande de Loiza, Rio Portugues
            Lakes and Reservoirs: Tortuguero Lagoon (Laguna Tortuguero), Dos Bocas Lake
            Bays and Gulfs: San Juan Bay, Bioluminescent (Mosquito) Bay
            Seas: Caribbean Sea
            Straits: Mona Passage
            Islands: Puerto Rico Island, Culebra Island, Vieques Island, Cayo Norte, Isla de Mona, Desecheo Island
            Archipelagoes: Culebra Archipelago, Spanish Virgin Islands
            Caves: Camuy River Cave System, Cueva Ventana
            Other Bodies of Water: Ensenada Honda (Deep Cove), Condado Lagoon
            Mountains: Cerro de Punta, El Yunque, Monte Jayuya, Cerro Rosa, Cerro Maravilla

            National Forests: El Yunque National Forest
            Other Sites: Castillo San Felipe del Morro, Porta Coeli (Gateway to Heaven), Arecibo Observatory, Castillo San Cristobal (Fort San Cristobal), San Juan National Historic Site, Flamenco Beach, Culebra National Wildlife Refuge, Old San Juan

            Dams: Carraizo Dam, Portugues Dam
            International/Major Airports: Luis Munoz Marin International Airport, Rafael Hernandez International Airport, Mercedita International Airport
            """],
        ["U.S. Virgin Islands", """
            Capital: Charlotte Amalie
            Major Cities: Charlotte Amalie, Christiansted
            Population: 110,000
            Area: 134 sq mi
            Languages: English, English Creole, Spanish, French, French Creole

            Rivers: Salt River
            Bays and Gulfs: Magens Bay, Trunk Bay, Salt River Bay
            Seas: Caribbean Sea
            Straits: Leeward Passage
            Peninsulas, Capes, and Points: Point Udall
            Islands: Saint Croix, Saint Thomas, Saint John, Water Island, Hassel Island, Hans Lollik Island, Flanagan Island, Buck Island, Capella Island
            Archipelagoes: Virgin Islands
            Other Landforms: Waterlemon Cay
            Mountains: Crown Mountain, Mount Eagle, Bordeaux Mountain

            National Parks: Virgin Islands National Park
            National Monuments: Virgin Islands Coral Reef National Monument, Buck Island Reef National Monument
            Other Sites: Christiansted National Historic Site, Salt River Bay National Historical Park and Ecological Preserve

            International/Major Airports: Cyril E. King Airport, Henry E. Rohlsen Airport
            """],
        ["Washington, D.C.", """
            Population: 695,000
            Area: 68 sq mi

            Rivers: Potomac River, Anacostia River, Rock Creek
            Lakes and Reservoirs: Tidal Basin, Kingman Lake, McMillan Reservoir, Dalecarlia Reservoir, Georgetown Reservoir
            Plains and Basins: Atlantic Coastal Plain
            Peninsulas, Capes, and Points: Buzzard Point (Arsenal Point)
            Islands: Theodore Roosevelt Island, Columbia Island, Three Sisters, Hains Point
            Other Bodies of Water: Washington Channel, Chesapeake and Ohio Canal

            Other Sites: United States Capitol, White House, Supreme Court Building, Washington Monument, Lincoln Memorial, Smithsonian Institution Building, Jefferson Memorial, Martin Luther King Jr. Memorial, Washington National Cathedral, Vietnam Veterans Memorial, Eisenhower Executive Office Building, Lincoln Memorial Reflecting Pool, National Mall, National Air and Space Museum, Jefferson Pier, Franklin Delano Roosevelt Memorial, George Mason Memorial, District of Columbia War Memorial, Library of Congress, National Museum of Natural History, National Museum of American History, National Museum of African Art, National Museum of the American Indian (Native Americans), Smithsonian American Art Museum, National Zoo, National Gallery of Art, National Geographic Society Museum, International Spy Museum, Hirshhorn Museum and Sculpture Garden, , National Portrait Gallery, Renwick Gallery, Union Station, Judiciary Square, National Building Museum, United States Holocaust Memorial Museum, John F. Kennedy Center for the Performing Arts, Lincoln Theater, Howard Theater, Ford’s Theater, William H.G. FitzGerald Tennis Center, Nationals Park, Georgetown University, Howard University, Lafayette Square, The Ellipse (President’s Park South), Theodore Roosevelt Island National Memorial, Japanese American Memorial to Patriotism During World War II

            International/Major Airports: Baltimore-Washington International Airport, Ronald Reagan Washington National Airport, Washington Dulles International Airport
            """]
    ]
    
    @IBOutlet var stateLabel: UILabel!
    @IBOutlet var stateInfo: UITextView!
    @IBOutlet var factBox: UIView!
    @IBOutlet var flagImage: UIImageView!
    var stateName: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        
        factBox.layer.cornerRadius = 15
        flagImage.layer.masksToBounds = true
        flagImage.layer.cornerRadius = 10
        stateLabel.text = stateName
        
        print(stateName)
        
        switch stateName {
        case "Alabama":
            stateInfo.text = facts[0][1]
            flagImage.image = UIImage(named:"al")
        case "Alaska":
            stateInfo.text = facts[1][1]
            flagImage.image = UIImage(named:"ak")
        case "Arizona":
            stateInfo.text = facts[2][1]
            flagImage.image = UIImage(named:"az")
        case "Arkansas":
            stateInfo.text = facts[3][1]
            flagImage.image = UIImage(named:"ar")
        case "California":
            stateInfo.text = facts[4][1]
            flagImage.image = UIImage(named:"ca")
        case "Colorado":
            stateInfo.text = facts[5][1]
            flagImage.image = UIImage(named:"co")
        case "Connecticut":
            stateInfo.text = facts[6][1]
            flagImage.image = UIImage(named:"ct")
        case "Delaware":
            stateInfo.text = facts[7][1]
            flagImage.image = UIImage(named:"de")
        case "Florida":
            stateInfo.text = facts[8][1]
            flagImage.image = UIImage(named:"fl")
        case "Georgia":
            stateInfo.text = facts[9][1]
            flagImage.image = UIImage(named:"ga")
        case "Hawaii":
            stateInfo.text = facts[10][1]
            flagImage.image = UIImage(named:"hi")
        case "Idaho":
            stateInfo.text = facts[11][1]
            flagImage.image = UIImage(named:"id")
        case "Illinois":
            stateInfo.text = facts[12][1]
            flagImage.image = UIImage(named:"il")
        case "Indiana":
            stateInfo.text = facts[13][1]
            flagImage.image = UIImage(named:"in")
        case "Iowa":
            stateInfo.text = facts[14][1]
            flagImage.image = UIImage(named:"ia")
        case "Kansas":
            stateInfo.text = facts[15][1]
            flagImage.image = UIImage(named:"ks")
        case "Kentucky":
            stateInfo.text = facts[16][1]
            flagImage.image = UIImage(named:"ky")
        case "Louisiana":
            stateInfo.text = facts[17][1]
            flagImage.image = UIImage(named:"la")
        case "Maine":
            stateInfo.text = facts[18][1]
            flagImage.image = UIImage(named:"me")
        case "Maryland":
            stateInfo.text = facts[19][1]
            flagImage.image = UIImage(named:"md")
        case "Massachusetts":
            stateInfo.text = facts[20][1]
            flagImage.image = UIImage(named:"ma")
        case "Michigan":
            stateInfo.text = facts[21][1]
            flagImage.image = UIImage(named:"mi")
        case "Minnesota":
            stateInfo.text = facts[22][1]
            flagImage.image = UIImage(named:"mn")
        case "Mississippi":
            stateInfo.text = facts[23][1]
            flagImage.image = UIImage(named:"ms")
        case "Missouri":
            stateInfo.text = facts[24][1]
            flagImage.image = UIImage(named:"mo")
        case "Montana":
            stateInfo.text = facts[25][1]
            flagImage.image = UIImage(named:"mt")
        case "Nebraska":
            stateInfo.text = facts[26][1]
            flagImage.image = UIImage(named:"ne")
        case "Nevada":
            stateInfo.text = facts[27][1]
            flagImage.image = UIImage(named:"nv")
        case "New Hampshire":
            stateInfo.text = facts[28][1]
            flagImage.image = UIImage(named:"nh")
        case "New Jersey":
            stateInfo.text = facts[29][1]
            flagImage.image = UIImage(named:"nj")
        case "New Mexico":
            stateInfo.text = facts[30][1]
            flagImage.image = UIImage(named:"nm")
        case "New York":
            stateInfo.text = facts[31][1]
            flagImage.image = UIImage(named:"ny")
        case "North Carolina":
            stateInfo.text = facts[32][1]
            flagImage.image = UIImage(named:"nc")
        case "North Dakota":
            stateInfo.text = facts[33][1]
            flagImage.image = UIImage(named:"nd")
        case "Ohio":
            stateInfo.text = facts[34][1]
            flagImage.image = UIImage(named:"oh")
        case "Oklahoma":
            stateInfo.text = facts[35][1]
            flagImage.image = UIImage(named:"ok")
        case "Oregon":
            stateInfo.text = facts[36][1]
            flagImage.image = UIImage(named:"or")
        case "Pennsylvania":
            stateInfo.text = facts[37][1]
            flagImage.image = UIImage(named:"pa")
        case "Rhode Island":
            stateInfo.text = facts[38][1]
            flagImage.image = UIImage(named:"ri")
        case "South Carolina":
            stateInfo.text = facts[39][1]
            flagImage.image = UIImage(named:"sc")
        case "South Dakota":
            stateInfo.text = facts[40][1]
            flagImage.image = UIImage(named:"sd")
        case "Tennessee":
            stateInfo.text = facts[41][1]
            flagImage.image = UIImage(named:"tn")
        case "Texas":
            stateInfo.text = facts[42][1]
            flagImage.image = UIImage(named:"tx")
        case "Utah":
            stateInfo.text = facts[43][1]
            flagImage.image = UIImage(named:"ut")
        case "Vermont":
            stateInfo.text = facts[44][1]
            flagImage.image = UIImage(named:"vt")
        case "Virginia":
            stateInfo.text = facts[45][1]
            flagImage.image = UIImage(named:"va")
        case "Washington":
            stateInfo.text = facts[46][1]
            flagImage.image = UIImage(named:"wa")
        case "West Virginia":
            stateInfo.text = facts[47][1]
            flagImage.image = UIImage(named:"wv")
        case "Wisconsin":
            stateInfo.text = facts[48][1]
            flagImage.image = UIImage(named:"wi")
        case "Wyoming":
            stateInfo.text = facts[49][1]
            flagImage.image = UIImage(named:"wy")
        case "American Samoa":
            stateInfo.text = facts[50][1]
            flagImage.image = UIImage(named:"asf")
        case "Guam":
            stateInfo.text = facts[51][1]
            flagImage.image = UIImage(named:"guam")
        case "Northern Mariana Islands":
            stateInfo.text = facts[52][1]
            flagImage.image = UIImage(named:"nmi")
        case "Puerto Rico":
            stateInfo.text = facts[53][1]
            flagImage.image = UIImage(named:"prf")
        case "U.S. Virgin Islands":
            stateInfo.text = facts[54][1]
            flagImage.image = UIImage(named:"usvi")
        case "Washington, D.C.":
            stateInfo.text = facts[55][1]
            flagImage.image = UIImage(named:"wdcf")
        default:
            stateInfo.text = facts[facts.count-1][1]
            flagImage.image = UIImage(named:"wdcf")
        }
        
    }
}
