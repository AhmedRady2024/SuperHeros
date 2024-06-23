//
//  Helper.swift
//  SuperHeros
//
//  Created by Ahmed Rady on 13/06/2024.
//

import SwiftUI

struct Super :Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var grideant : [Color]
    var message : String
    
}

let SuperHeroData : [Super] = [
    Super(name: "Hulk", image: "hulk", grideant:[Color("ColorHulk01"), Color("ColorHulk02")],message: "Hulk is very powerful monster"),
    
    Super(name: "IronMan",image: "ironman",grideant: [Color("ColorIronman01"),Color("ColorIronman02")],message: "IronMan is The Man Of Steel"),
            
    Super(name: "SpiderMan", image: "spiderman", grideant: [Color("ColorSpiderman01"),Color("ColorSpiderman02")],message: "SpiderMan is the air spider"),
    
    Super(name: "SuperMan", image: "superman",grideant: [Color("ColorSuperman01"),Color("ColoerSuperman02")],message: "SuperMan is very powerful Man "),
    
    Super(name: "Wolverine",image: "wolverine", grideant: [Color("ColorWolverine01"),Color("ColorWolverine02")],message: "Wolverine is Hand Blades Man"),
    
    
    
]

