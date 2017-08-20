//
//  iCreditCard.swift
//  iCard
//
//  Created by xcodewarrior on 14.08.2017.
//  Copyright © 2017 EmrahKorkmaz. All rights reserved.
//

import UIKit

class iCreditCard: UIView {
    
    lazy var contentView: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor.clear
        return view
    }()
    
    lazy var bankNameLabel: UILabel = {
        let label:UILabel = UILabel()
        label.font = UIFont.init(name: "Avenir-Black", size: 20)
        label.text = "BANK NAME"
        label.textAlignment = .left
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var topSeparator: UIView = {
        let view:UIView = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    lazy var creditCardButton: UIButton = {
        let button:UIButton = UIButton()
        button.setImage(UIImage.init(named: "creditCardBackground"), for: .normal)
        button.layer.cornerRadius = 8
        button.isUserInteractionEnabled = false
        button.showsTouchWhenHighlighted = false
        return button
    }()
    
    lazy var backgroundImageView: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    lazy var chipIconImageView: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "chip1")
        return imageView
    }()
    
    lazy var creditCardNumbers: UILabel = {
        let label:UILabel = UILabel()
        label.textAlignment = .left
        label.textColor = UIColor.white
        label.text = "4111  1111  1111  1111"
        label.font = UIFont.init(name: "Halter", size: 16)
        return label
    }()
    
    lazy var creditNumberTitleLabel: UILabel = {
        let label:UILabel = UILabel()
        label.text = "CARD NUMBER"
        label.font = UIFont.init(name: "Avenir-Light", size: 8)
        label.textColor = UIColor.white
        label.textAlignment = .left
        return label
    }()
    
    lazy var creditCardLastUsage: UILabel = {
        let label:UILabel = UILabel()
        label.text = "06/21"
        label.textColor = UIColor.white
        label.font = UIFont.init(name: "Halter", size: 14)
        label.textAlignment = .center
        return label
    }()
    
    lazy var lastUsageTitleLabel: UILabel = {
        let label:UILabel = UILabel()
        label.text = "MONTH/YEAR"
        label.textColor = UIColor.white
        label.font = UIFont.init(name: "Avenir-Light", size: 8)
        return label
    }()
    
    lazy var validThruLabel: UILabel = {
        let label:UILabel = UILabel()
        label.text = "VALID THRU"
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.font = UIFont.init(name: "Avenir-Light", size: 8)
        label.numberOfLines = 0
        return label
    }()
    
    lazy var cardBrandName: UILabel = {
        let label:UILabel = UILabel()
        label.text = "BANK NAME"
        label.font = UIFont.init(name: "Avenir-Black", size: 20)
        label.textAlignment = .left
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var cardBrandImageView: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "maestro2Icon")
        return imageView
    }()
    
    lazy var cardBrandImageViewBottom: UIImageView = {
        let imageView:UIImageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 5
        imageView.image = UIImage.init(named: "visaIcon")
        return imageView
    }()
    
    lazy var cardholderLabel: UILabel = {
        let label:UILabel = UILabel()
        label.text = "CARDHOLDER"
        label.font = UIFont.init(name: "Avenir-Black", size: 20)
        label.textColor = UIColor.white
        return label
    }()
    
    
    convenience init(){
        self.init(cardStyleWithBackgroundColor: .withBothBankIcon, withCardColors: .yelloway, pinIcon: .chip1, creditIcons: .cirrusIcon)
    }
    
    convenience init(cardColors: cardColors){
        self.init(cardStyleWithBackgroundColor: .withBothBankIcon, withCardColors: .yelloway, pinIcon: .chip2, creditIcons: .americanExpressIcon)
    }
    
    init(cardStyleWithBackgroundColor: cardStyle , withCardColors colors: cardColors , pinIcon: chipIcons , creditIcons: creditIcons){
        super.init(frame: CGRect())
        addItemsWithColors(cardStyleWithBackgroundColor, colors: colors, chipIcon: pinIcon, creditIcon: creditIcons)
        settingForLayout(cardStyle: cardStyleWithBackgroundColor, cardVisual: cardVisual.withBackgroundColor, withSeparator: true)
    }
    
    init(cardStyleWithBackgroundImage: cardStyle , withCardImage: UIImage?, pinIcon: chipIcons , creditIcons: creditIcons){
        super.init(frame: CGRect())
        addItemsWithImage(image: withCardImage, cardStyleWithBackgroundImage, chipIcon: pinIcon, creditIcon: creditIcons)
        settingForLayout(cardStyle: cardStyleWithBackgroundImage, cardVisual: cardVisual.withBackgroundImage, withSeparator: true)
    }
    
    
    fileprivate func addItemsWithImage(image backgroundImage: UIImage? , _ cardStyle: cardStyle, chipIcon: chipIcons , creditIcon: creditIcons){
        self.addSubview(contentView)
        self.addSubview(backgroundImageView)
        self.addSubview(bankNameLabel)
        self.addSubview(creditCardButton)
        self.addSubview(chipIconImageView)
        self.addSubview(creditCardNumbers)
        self.addSubview(creditNumberTitleLabel)
        self.addSubview(creditCardLastUsage)
        self.addSubview(lastUsageTitleLabel)
        self.addSubview(validThruLabel)
        self.addSubview(cardBrandName)
        self.addSubview(cardholderLabel)
        
        if let image = backgroundImage{
            self.backgroundImageView.image = image
        }else{
            fillWithColor(color: cardColors.yelloway)
        }
        
        if cardStyle == .withBothBankIcon{
            self.addSubview(cardBrandImageView)
            cardBrandImageView.image = creditIconImage(creditIcon: creditIcon)
            
            self.addSubview(cardBrandImageViewBottom)
            cardBrandImageViewBottom.image = creditIconImage(creditIcon: creditIcon)
            
        }else if cardStyle == .withTopBankIcon{
            self.addSubview(cardBrandImageView)
            cardBrandImageView.image = creditIconImage(creditIcon: creditIcon)
            
        }else if cardStyle == .withBottomBankIcon{
            self.addSubview(cardBrandImageViewBottom)
            cardBrandImageViewBottom.image = creditIconImage(creditIcon: creditIcon)
        }else{
            // nothing will be added
        }
        
        switch chipIcon{
        case .chip1:
            chipIconImageView.image = UIImage(named: "chip1")
        case .chip2:
            chipIconImageView.image = UIImage(named: "chip2")
        case .chip3:
            chipIconImageView.image = UIImage(named: "chip1")
        }
        
        self.addSubview(topSeparator)
        
    }
    
    fileprivate func addItemsWithColors(_ cardStyle: cardStyle , colors: cardColors , chipIcon: chipIcons , creditIcon: creditIcons){
        self.addSubview(contentView)
        self.addSubview(bankNameLabel)
        self.addSubview(creditCardButton)
        self.addSubview(chipIconImageView)
        self.addSubview(creditCardNumbers)
        self.addSubview(creditNumberTitleLabel)
        self.addSubview(creditCardLastUsage)
        self.addSubview(lastUsageTitleLabel)
        self.addSubview(validThruLabel)
        self.addSubview(cardBrandName)
        self.addSubview(cardholderLabel)
        
        if cardStyle == .withBothBankIcon{
            self.addSubview(cardBrandImageView)
            cardBrandImageView.image = creditIconImage(creditIcon: creditIcon)
            
            self.addSubview(cardBrandImageViewBottom)
            cardBrandImageViewBottom.image = creditIconImage(creditIcon: creditIcon)
        }else if cardStyle == .withTopBankIcon{
            self.addSubview(cardBrandImageView)
            cardBrandImageView.image = creditIconImage(creditIcon: creditIcon)
        }else if cardStyle == .withBottomBankIcon{
            self.addSubview(cardBrandImageViewBottom)
            cardBrandImageViewBottom.image = creditIconImage(creditIcon: creditIcon)
        }else{
            // nothing will be added
        }
        
        switch chipIcon{
        case .chip1:
            chipIconImageView.image = UIImage(named: "chip1")
        case .chip2:
            chipIconImageView.image = UIImage(named: "chip2")
        case .chip3:
            chipIconImageView.image = UIImage(named: "chip3")
        }
        
        self.addSubview(topSeparator)
        colors == .blueway ? fillWithColor(color: .blueway) : fillWithColor(color: .yelloway)
    }
    
    fileprivate func fillWithColor(color: cardColors){
        if color == .blueway{
            self.backgroundColor = UIColor(r: 28, g: 91, b: 140, alpha: 1)
        }else{
            self.backgroundColor = UIColor(r: 182, g: 152, b: 65, alpha: 1)
        }
    }
    
    fileprivate func settingForLayout(cardStyle style: cardStyle , cardVisual : cardVisual , withSeparator: Bool){
        self.layer.cornerRadius = 8
        
        if cardVisual == .withBackgroundImage {
            backgroundImageView.snp.makeConstraints({ (make) in
                make.left.equalTo(self.snp.left)
                make.right.equalTo(self.snp.right)
                make.top.equalTo(self.snp.top)
                make.bottom.equalTo(self.snp.bottom)
            })
        }
        
        contentView.snp.makeConstraints({ (make) in
            make.left.equalTo(self.snp.left)
            make.right.equalTo(self.snp.right)
            make.top.equalTo(self.snp.top)
            make.bottom.equalTo(self.snp.bottom)
        })
        
        chipIconImageView.snp.makeConstraints({ (make) in
            make.height.equalTo(40)
            make.width.equalTo(60)
            make.left.equalTo(self.snp.left).offset(15)
            make.bottom.equalTo(self.snp.centerY)
        })
        
        creditCardNumbers.snp.makeConstraints({ (make) in
            make.left.equalTo(chipIconImageView.snp.left).offset(8)
            make.right.equalTo(self.snp.right).offset(-15)
            make.centerX.equalTo(self.snp.centerX)
            make.top.equalTo(chipIconImageView.snp.bottom).offset(5)
        })
        
        creditNumberTitleLabel.snp.makeConstraints({ (make) in
            make.left.equalTo(creditCardNumbers)
            make.top.equalTo(creditCardNumbers.snp.bottom).offset(1)
        })
        
        lastUsageTitleLabel.snp.makeConstraints({ (make) in
            make.centerX.equalTo(self.snp.centerX)
            make.centerY.equalTo(creditNumberTitleLabel.snp.centerY)
        })
        
        creditCardLastUsage.snp.makeConstraints({ (make) in
            make.centerX.equalTo(lastUsageTitleLabel.snp.centerX)
            make.top.equalTo(lastUsageTitleLabel.snp.bottom).offset(1)
        })
        
        validThruLabel.snp.makeConstraints({ (make) in
            make.centerY.equalTo(creditCardLastUsage)
            make.right.equalTo(creditCardLastUsage.snp.left).offset(-1)
            make.width.equalTo(30)
        })
        
        if style == .withDefaultTitles{
            cardBrandName.snp.makeConstraints({ (make) in
                make.top.equalTo(self.snp.top).offset(10)
                make.left.equalTo(self.snp.left).offset(10)
            })
            
            topSeparator.snp.makeConstraints({ (make) in
                make.left.equalTo(self.snp.left)
                make.right.equalTo(self.snp.right)
                make.height.equalTo(2)
                make.top.equalTo(cardBrandName.snp.bottom).offset(1)
            })
        }else if style == .withBottomBankIcon{
            cardBrandImageViewBottom.snp.makeConstraints({ (make) in
                make.right.equalTo(self.snp.right).offset(-10)
                make.bottom.equalTo(self.snp.bottom).offset(-10)
                make.height.equalTo(30)
                make.width.equalTo(40)
            })
            
            topSeparator.snp.makeConstraints({ (make) in
                make.left.equalTo(self.snp.left)
                make.right.equalTo(self.snp.right)
                make.height.equalTo(2)
                make.top.equalTo(self.snp.top).offset(41)
            })
        }else if style == .withTopBankIcon{
            cardBrandImageView.snp.makeConstraints({ (make) in
                make.top.equalTo(self.snp.top).offset(10)
                make.right.equalTo(self.snp.right).offset(-10)
                make.height.equalTo(30)
                make.width.equalTo(40)
            })
            
            topSeparator.snp.makeConstraints({ (make) in
                make.left.equalTo(self.snp.left)
                make.right.equalTo(self.snp.right)
                make.height.equalTo(2)
                make.top.equalTo(cardBrandImageView.snp.bottom).offset(1)
            })
        }else{
            cardBrandImageView.snp.makeConstraints({ (make) in
                make.top.equalTo(self.snp.top).offset(10)
                make.right.equalTo(self.snp.right).offset(-10)
                make.height.equalTo(30)
                make.width.equalTo(40)
            })
            
            cardBrandImageViewBottom.snp.makeConstraints({ (make) in
                make.right.equalTo(self.snp.right).offset(-10)
                make.bottom.equalTo(self.snp.bottom).offset(-10)
                make.height.equalTo(30)
                make.width.equalTo(40)
            })
            
            topSeparator.snp.makeConstraints({ (make) in
                make.left.equalTo(self.snp.left)
                make.right.equalTo(self.snp.right)
                make.height.equalTo(2)
                make.top.equalTo(cardBrandImageView.snp.bottom).offset(1)
            })
        }
        
        cardholderLabel.snp.makeConstraints({ (make) in
            make.left.equalTo(creditCardNumbers)
            make.bottom.equalTo(self.snp.bottom).offset(-10)
        })
    }

    override init(frame: CGRect){
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
}

public enum cardColors{
    case blueway
    case yelloway
}

public enum cardVisual{
    case withBackgroundColor
    case withBackgroundImage
}

public enum cardStyle{
    case withDefaultTitles
    case withTopBankIcon
    case withBottomBankIcon
    case withBothBankIcon
}

public enum creditIcons{
    case americanExpressIcon
    case bitcoinIcon
    case bluePayIcon
    case cirrusIcon
    case citiIcon
    case clickBank
    case cvsIcon
    case googleWalletIcon
    case hsbcIcon
    case maestroIcon
    case maestroIcon2
    case masterCard
    case masterCardMini
    case masterCardDetail
    case moneyGramIcon
    case paypalIcon
    case paypalIconSimple
    case visaIcon
    case visaIconBigger
    case visaIconText
    case wePayIcon
    case westernUnionIcon
}

public enum chipIcons{
    case chip1
    case chip2
    case chip3
}

extension UIColor{
    convenience init(r: Float, g: Float , b: Float , alpha: Int) {
        self.init(red: CGFloat(r/255), green: CGFloat(g/255), blue: CGFloat(b/255), alpha: CGFloat(alpha))
    }
}

extension iCreditCard{
    fileprivate func creditIconImage(creditIcon toImage: creditIcons) -> UIImage{
        switch toImage {
        case .americanExpressIcon:
            return UIImage(named: "americanExpressIcon")!
        case .bitcoinIcon:
            return UIImage(named: "bitcoinIcon")!
        case .bluePayIcon:
            return UIImage(named: "bluePayIcon")!
        case .cirrusIcon:
            return UIImage(named: "cirrusIcon")!
        case .citiIcon:
            return UIImage(named: "citiIcon")!
        case .clickBank:
            return UIImage(named: "clickBank")!
        case .cvsIcon:
            return UIImage(named: "cvsIcon")!
        case .googleWalletIcon:
            return UIImage(named: "googleWalletIcon")!
        case .hsbcIcon:
            return UIImage(named: "hsbcIcon")!
        case .maestroIcon:
            return UIImage(named: "maestroIcon")!
        case .maestroIcon2:
            return UIImage(named: "maestro2Icon")!
        case .masterCard:
            return UIImage(named: "masterCard")!
        case .masterCardMini:
            return UIImage(named: "masterCardMini")!
        case .masterCardDetail:
            return UIImage(named: "masterCardDetail")!
        case .moneyGramIcon:
            return UIImage(named: "moneygramIcon")!
        case .paypalIcon:
            return UIImage(named: "paypal2Icon")!
        case .paypalIconSimple:
            return UIImage(named: "paypalIcon")!
        case .visaIcon:
            return UIImage(named: "visaIcon")!
        case .visaIconBigger:
            return UIImage(named: "visaIconBigger")!
        case .visaIconText:
            return UIImage(named: "visaIconText")!
        case .wePayIcon:
            return UIImage(named: "wepayIcon")!
        case .westernUnionIcon:
            return UIImage(named: "westernUnionIcon")!
        }
    }
}
