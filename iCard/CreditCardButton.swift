//
//  CreditCardButton.swift
//  iCard
//
//  Created by xcodewarrior on 14.08.2017.
//  Copyright © 2017 EmrahKorkmaz. All rights reserved.
//

import UIKit
import SnapKit

class CreditCardButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    fileprivate var bankNameTitle: String!
    fileprivate var cardHolderTitle: String!
    
    lazy var simpleLabel: UILabel = {
        let label:UILabel = UILabel()
        label.text = "Simple"
        label.textAlignment = .center
        label.textColor = UIColor.white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(bankName bankNameTitle:String , cardHolderName cardHolderTitle:String,frame: CGRect) {
        self.bankNameTitle = bankNameTitle
        self.cardHolderTitle = cardHolderTitle
        
        
        
        
        super.init(frame: frame)
    }
    
    fileprivate func setLayout(){
        self.simpleLabel.snp.makeConstraints({ (make) in
            
        })
    }
    
}

/*
 lazy var bankNameLabel: UILabel = {
 let label:UILabel = UILabel()
 label.font = UIFont.init(name: "Avenir-Black", size: 20)
 label.text = "BANK NAME"
 label.textAlignment = .left
 label.textColor = UIColor.white
 return label
 }()
 
 lazy var creditCardButton: UIButton = {
 let button:UIButton = UIButton()
 button.setImage(UIImage.init(named: "creditCardBackground"), for: .normal)
 //button.backgroundColor = UIColor.init(red: 28/255, green: 91/255, blue: 140/255, alpha: 1)
 //button.backgroundColor = UIColor.init(red: 182/255, green: 152/255, blue: 65/255, alpha: 1)
 button.showsTouchWhenHighlighted = false
 button.layer.cornerRadius = 8
 button.isUserInteractionEnabled = false
 return button
 }()
 
 lazy var chipIconImageView: UIImageView = {
 let imageView:UIImageView = UIImageView()
 imageView.contentMode = .scaleAspectFit
 imageView.layer.masksToBounds = true
 imageView.layer.cornerRadius = 5
 imageView.image = UIImage.init(named: "chip3")
 return imageView
 }()
 
 lazy var creditCardNumberTitleLabel: UILabel = {
 let label:UILabel = UILabel()
 label.text = "CARD NUMBER"
 label.font = UIFont.init(name: "Avenir-Light", size: 8)
 label.textColor = UIColor.white
 label.textAlignment = .left
 return label
 }()
 
 lazy var creditCardNumbers: UILabel = {
 let label:UILabel = UILabel()
 label.textAlignment = .left
 label.textColor = UIColor.white
 label.text = "4111  1111  1111  1111"
 label.font = UIFont.init(name: "Halter", size: 16)
 return label
 }()
 
 lazy var validThruLabel: UILabel = {
 let label:UILabel = UILabel()
 label.numberOfLines = 0
 label.textAlignment = .right
 label.text = "VALID THRU"
 label.font = UIFont.init(name: "Avenir-Light", size: 8)
 label.textColor = UIColor.white
 return label
 }()
 
 lazy var creditCardLastUsageLabel: UILabel = {
 let label:UILabel = UILabel()
 label.textAlignment = .center
 label.textColor = UIColor.white
 label.text = " 11/20 "
 label.font = UIFont.init(name: "Halter", size: 14)
 return label
 }()
 
 lazy var monthYearLabel: UILabel = {
 let label:UILabel = UILabel()
 label.font = UIFont.init(name: "Avenir-Light", size: 8)
 label.text = "MONTH/YEAR"
 label.textColor = UIColor.white
 return label
 }()
 
 lazy var cardholderLabel: UILabel = {
 let label:UILabel = UILabel()
 label.text = "JOHN DOE"
 label.textColor = UIColor.white
 label.font = UIFont.init(name: "Avenir-Black", size: 20)
 return label
 }()
 
 
 lazy var anotherButton: UIButton = {
 let button:UIButton = UIButton()
 
 return button
 }()

 */
