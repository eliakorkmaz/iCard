# iCard
##### BankCard & CreditCard generator with Swift 3 using SnapKit DSL

`iCard` is a simple tool for generate Credit & Bank Card , it represent cards as `UIView` and it's a `subclass` of `UIView`

# Screenshots

`.chip1 - .blueway - .withBothBankIcon - .cirrusIcon ` **&**  `.chip3 - .blueway - .withBothBankIcon - .masterCardIcon `
![alt-text-1](https://github.com/eliakorkmaz/iCard/blob/master/screenShots/bothIconBlue.png?raw=true "") ![alt-text-2](https://github.com/eliakorkmaz/iCard/blob/master/screenShots/bothIconBlue2.png?raw=true "")
`.chip2 - .yelloway - .googleWalletIcon - .cirrusIcon ` **&**  `.chip2 - .yelloway - .withDefaultTitles `
![alt-text-1](https://github.com/eliakorkmaz/iCard/blob/master/screenShots/bothIconYellow.png?raw=true "") ![alt-text-2](https://github.com/eliakorkmaz/iCard/blob/master/screenShots/defaultCard.png?raw=true "")
`.chip1 - .cirrusIcon - .withBothBankIcon ` **&**  `.chip2 - .withBothBankIcon`
![alt-text-1](https://github.com/eliakorkmaz/iCard/blob/master/screenShots/photoBothIcon.png?raw=true "") ![alt-text-2](https://github.com/eliakorkmaz/iCard/blob/master/screenShots/photoBothImage.png?raw=true "")

# Init

```swift
init(cardStyleWithBackgroundColor: cardStyle , withCardColors colors: cardColors , pinIcon: chipIcons , creditIcons: creditIcons)
```
For creating `iCard` with single `backgroundColor` , you should use this initalizer and you must choose `cardStyle`, `cardColors`, `pinIcons` and `creditIcons`
```swift
let simpleCard: iCreditCard = iCreditCard(cardStyleWithBackgroundColor: .withBothBankIcon, withCardColors: .blueway, pinIcon: .chip1, creditIcons: .cirrusIcon)
```

And if you create an `iCreditCard` with has a unique background image , you can easily use this `init` function. You must send `UIImage` to `init` otherwise if `withCardImage` is `nil` , it will have simple `backgroundColor`.

```swift
init(cardStyleWithBackgroundImage: cardStyle , withCardImage: UIImage?, pinIcon: chipIcons , creditIcons: creditIcons)
```
Here is a simple creation of `iCard` with `backgroundImage`
```swift
let simpleCard: iCreditCard = iCreditCard(cardStyleWithBackgroundImage: .withBothBankIcon, withCardImage: UIImage(named:"simpleBackgroundImage"), pinIcon: .chip2, creditIcons: .maestroIcon)
```


# Convenience Init

You can also create `iCard` with `no-parameter` or `single-parameter`

```swift
convenience init(){
self.init(cardStyleWithBackgroundColor: .withBothBankIcon, withCardColors: .yelloway, pinIcon: .chip1, creditIcons: .cirrusIcon) }
```
Here is a simple example of it . If you use this initializer you will created a `iCard` with `.withBothBankIcon` style , `.yelloway` color , `.chip1` chip  and `.cirrusIcon` icon

**Here is a simple usage**
```swift
let simpleCard: iCreditCard = iCreditCard()
```
Another `convenience init` is below.
```swift
convenience init(cardColors: cardColors){
self.init(cardStyleWithBackgroundColor: .withBothBankIcon, withCardColors: .yelloway, pinIcon: .chip2, creditIcons: .americanExpressIcon)
}
```

**Here is a simple usage of it**
```swift
let simpleCard2: iCreditCard = iCreditCard(cardColors: .blueway)
```



# Structs
```swift
public enum cardColors{
case blueway
case yelloway
}
```
`cardColors` using when choose card `backgroundColor` , now support only 2 color as *blue* and *yellow*

```swift
public enum cardVisual{
case withBackgroundColor
case withBackgroundImage
}
```
`cardVisual` is used for choose card type. 

```swift
public enum cardStyle{
case withDefaultTitles
case withTopBankIcon
case withBottomBankIcon
case withBothBankIcon
}
```
`cardStyle` is used for set card style to different type. 

```swift
public enum chipIcons{
case chip1
case chip2
case chip3
}
```
`chipIcons` is used for choose card chip icons, there are only 3 different chip icons

```swift
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
```

| Parameter | Icons |
| ------ | ---------|
| .americanExpressIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/americanExpressIcon.imageset/americanExpressIcon.png?raw=true "") |
| .bitcoinIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/bitcoinIcon.imageset/bitcoinIcon.png?raw=true "") |
| .bluePayIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/bluePayIcon.imageset/bluePayIcon.png?raw=true "") |
| .cirrusIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/cirrusIcon.imageset/cirrusIcon.png?raw=true "") |
| .citiIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/citiIcon.imageset/citiIcon.png?raw=true "") |
| .clickBank | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/clickBank.imageset/clickBank.png?raw=true "") |
| .cvsIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/cVSIcon.imageset/cVSIcon.png?raw=true "") |
| .googleWalletIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/googleWalletIcon.imageset/googleWalletIcon.png?raw=true "") |
| .hsbcIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/hsbcIcon.imageset/hsbcIcon.png?raw=true "") |
| .maestroIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/maestroIcon.imageset/maestroIcon.png?raw=true "") |
| .maestroIcon2 | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/maestro2Icon.imageset/maestro2Icon.png?raw=true "") |
| .masterCard | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/masterCard.imageset/mastercard2Icon-1.png?raw=true "") |
| .masterCardMini | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/masterCardMini.imageset/mastercard3Icon.png?raw=true "") |
| .masterCardDetail | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/masterCardDetail.imageset/masterCardIcon.png?raw=true "") |
| .moneyGramIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/moneygramIcon.imageset/moneygramIcon.png?raw=true "") |
| .paypalIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/paypal2Icon.imageset/paypal2Icon.png?raw=true "") |
| .paypalIconSimple | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/paypalIcon.imageset/paypalIcon.png?raw=true "") |
| .visaIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/visaIcon.imageset/visaIcon.png?raw=true "") |
| .visaIconBigger | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/visaIconBigger.imageset/visaLogo.png?raw=true "") |
| .visaIconText | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/visaIconText.imageset/visa2Icon.png?raw=true "") |
| .wePayIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/wepayIcon.imageset/wepayIcon.png?raw=true "") |
| .westernUnionIcon | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/westernUnionIcon.imageset/westernUnionIcon.png?raw=true "") |


```swift
public enum chipIcons{
case chip1
case chip2
case chip3
}
```

| Parameter | Icons |
| ------ | ---------|
| .chip1 | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/chip1.imageset/chip1.png?raw=true "") |
| .chip2 | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/chip2.imageset/chip2.png?raw=true "") |
| .chip3 | ![](https://github.com/eliakorkmaz/iCard/blob/master/iCard/Assets.xcassets/chip3.imageset/chip3.png?raw=true "") |



### Installation

```sh
git clone REPO_URL
cd iCard/
use iCreditCard.swift 
```



### Development
Want to contribute? 
Feel free to contribute anything on this with describing contributed part


### Todos
- Write Tests
- Add BackView Generator with init

License
----
*MIT*
