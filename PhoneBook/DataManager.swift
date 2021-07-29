//
//  DataManager.swift
//  PhoneBook
//
//  Created by Vahtee Boo on 29.07.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Kendall", "Kinsley", "Madison", "Marley", "Peyton", "Presley", "Sutton", "Willow", "Ronald", "Charles", "Karen", "Georgina"]
    let surnames = ["Barron", "Quick", "Porter", "Morris", "Hulse", "Jones", "McKenna", "Waterson", "White", "May", "Cutler", "Bell"]
    let phones = ["(215)866-7008", "(406)573-4155", "(478)397-3982", "(308)213-3198", "(650)261-7459", "(484)631-8745", "(606)625-4747", "(540)627-1762", "(580)751-4333", "(325)573-8358", "(617)574-8316", "(217)547-3013"]
    let emails = ["celia.hatfield@tiger.net", "mary.workman@octopus.space", "loren.summers@fox.host", "sherry.black@tiger.co", "esperanza.solomon@cat.org", "nell.fields@owl.site", "laurie.durham@lion.net", "joaquin.vinson@spider.website", "maricela.peters@goldfish.site", "thelma.oneil@sheep.site", "eduardo.dennis@rabbit.club", "lenore.sears@deer.co"]
    
    private init() {}
}
