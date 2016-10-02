//
//  Quotes.swift
//  Quotes
//
//  Created by Deniz Nasif on 30/09/2016.
//  Copyright © 2016 Deniz Nasif. All rights reserved.
//

import UIKit

class Quotes {
    
    let quotesDict = [
        "Steve Jobs" : "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
        "Brendon Burchard" : "No matter how small you start, start something that matters.",
        "Theodore Roosevelt" : "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat.",
        "Barrack Obama" : "Change will not come if we wait for some other person or some other time. We are the ones we've been waiting for. We are the change that we seek.",
        "Tony Stark" : "You know, it's times like these when I realize what a superhero I am."
    ]
    
    func getRandomQuote() -> (String, String) {
        let randomIndex = Int(arc4random()) % quotesDict.count
        let randomQuote = Array(quotesDict.values)[randomIndex]
        let randomQuoteAuthor = Array(quotesDict.keys)[randomIndex]
        return (randomQuote, randomQuoteAuthor)
    }
    
    func getQuoteAuthorLowercase(author: String) -> String {
        let authorSplit = author.characters.split{$0 == " "}.map(String.init)
        let authorName = authorSplit[0].lowercased()
        return authorName
    }
    
    func getRandomColor() -> UIColor {
        
        let randomColor = Int(arc4random()) % 5
        
        switch randomColor {
        case 0:
            return UIColor(red: 255.0/255.0, green: 37.0/255.0, blue: 22.0/255.0, alpha: 1.0)
        case 1:
            return UIColor(red: 35.0/255.0, green: 53.0/255.0, blue: 202.0/255.0, alpha: 1.0)
        case 2:
            return UIColor(red: 0/255.0, green: 160.0/255.0, blue: 110.0/255.0, alpha: 1.0)
        case 3:
            return UIColor(red: 94.0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0)
        case 4:
            return UIColor(red: 59.0/255.0, green: 51.0/255.0, blue: 67.0/255.0, alpha: 1.0)
        default:
            return UIColor(red: 255.0/255.0, green: 37.0/255.0, blue: 22.0/255.0, alpha: 1.0)
        }
        
    }
    
}
