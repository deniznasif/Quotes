//
//  ViewController.swift
//  Quotes
//
//  Created by Deniz Nasif on 30/09/2016.
//  Copyright © 2016 Deniz Nasif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var quoteAuthorLabel: UILabel!
    @IBOutlet weak var quoteAuthorImage: UIImageView!
    @IBOutlet weak var inspireMeButton: UIButton!
    
    var quote = Quotes()

    override func viewDidLoad() {
        super.viewDidLoad()
        randomize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func inspireButtonTapped(_ sender: AnyObject) {
        randomize()
    }
    
    func randomize() {
        let randomQuote = quote.getRandomQuote()
        let authorName = quote.getQuoteAuthorLowercase(author: randomQuote.1)
        let randomColor = quote.getRandomColor()
        
        quoteLabel.text = "\(randomQuote.0)"
        quoteAuthorLabel.text = "\(randomQuote.1)"
        quoteAuthorImage.image = UIImage(named: "thumb_\(authorName)")
        
        quoteAuthorLabel.textColor = randomColor
        inspireMeButton.backgroundColor = randomColor
    }

}

