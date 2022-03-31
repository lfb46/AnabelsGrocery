//
//  glovars.swift
//  AnabelsGrocery
//
//  Created by Liam Bo on 1/7/22.
//

import Foundation


struct glovars {

   
    
    static var categories: [String] = ["Produce", "Milks/Eggs","Breads/Pastries", "Nuts/Dried Fruit"]
    static var categoryPhotos: [String] = ["produce.jpg", "milk.jpg","bread.jpg", "nuts.jpeg"]
    
    static var catNum = 0
    static var recipeNum = 0
    static var RecipeList = ["Overnight Oats", "Marghartia Pizza", "Chocolate Lava Cake"]
    static var RecipeInfoList =
        [
            ["1", "2", "Description1", ["ingredients", "ingredients", "ingredients"], "Procedure"],
            ["3", "4", "Description2", ["ingredients", "ingredients", "ingredients"], "Procedure"],
            ["5", "6", "Description3", ["ingredients", "ingredients", "ingredients"], "Procedure"]
        ]
    static var RecipeImageList = ["oats.jpg", "pizza.jpg", "cake.jpg"]
    static var Produce = [["Lettuce", "$5.00", "let.jpg"], ["Carrots", "$12.00", "carrot.jpg"], ["Onions", "$50.00", "onion.jpg"], ["Beets", "$2.00", "beets.jpg",]]
    static var MilkEggs: [String] = []
    static var Breads: [String] = []
    static var Nuts: [String] = []

}
