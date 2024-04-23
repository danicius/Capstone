//
//  ViewController.swift
//  Capstone
//
//  Created by Danielle Alvarez on 4/19/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView:UIImageView!
    @IBOutlet var button:UIButton!
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
        
    
    
    //var quote:Quote?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.backgroundColor = .purple
        button.backgroundColor = .systemPink
        fetchQuote()
    }
    @IBAction func didTapButton(){
        
    }
    
    func setupQuoteUpdateTimer() {
        quoteUpdateTimer = Timer.scheduledTimer(timeInterval: 600.0, target: self, selector: #selector(fetchQuote), userInfo: nil, repeats: true)
    }
    
    var quoteService = QuoteService() // Instantiate your service
    var quoteUpdateTimer: Timer?

    
    @objc func fetchQuote() {
        print("Attempting to fetch quote...")
        
        quoteService.fetchQuoteUsingCodable { [weak self] fetchedQuote in
            DispatchQueue.main.async {
                
                print("Fetched quote: \(String(describing: fetchedQuote))")

                if let quote = fetchedQuote {
                    self?.quoteLabel.text = "\"\(quote.content)\""
                    self?.authorLabel.text = "- \(quote.author)"
                } else {
                    self?.quoteLabel.text = "Failed to fetch quote"
                    self?.authorLabel.text = ""
                }
            }
        }
    }
    
    
    
    
    
}
