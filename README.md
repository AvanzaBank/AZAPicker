# AZAPicker

[![CI Status](http://img.shields.io/travis/avanzabank/AZAPicker.svg?style=flat)](https://travis-ci.org/avanzabank/AZAPicker)
[![Version](https://img.shields.io/cocoapods/v/AZAPicker.svg?style=flat)](http://cocoapods.org/pods/AZAPicker)
[![License](https://img.shields.io/cocoapods/l/AZAPicker.svg?style=flat)](http://cocoapods.org/pods/AZAPicker)
[![Platform](https://img.shields.io/cocoapods/p/AZAPicker.svg?style=flat)](http://cocoapods.org/pods/AZAPicker)

## Example

![Example](Assets/example.gif)

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

AZAPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AZAPicker"
```

## Usage

Start with defining your own picker item type by implementing the 'AZAPickerItem' protocol. This can be done with a simple struct:

```swift
struct MyPickerItem: AZAPickerItem {
    public let number: Int

    var description: String {
        return "\(number)"
    }
}
```

The `AZAPicker` view is instantiated with an instance of `AZAPickerConfiguration` and a `CGRect` for frame:

```swift
let config = AZAPickerConfiguration<MyPickerItem>(items: ...)
let pickerView = AZAPicker<MyPickerItem>(with: config, frame: .zero)
```

The `onPickItem` variable of the picker can be set to a function to receive updates about which item is currently selected. This function has to fulfill the type definition: 

```swift
public typealias AZAPickerItemPicked = (AZAPicker<T>, T) -> ()
```

Which for this example becomes:

```swift
(AZAPicker<MyPickerItem>, MyPickerItem) -> ()
```

### Configuration

`AZAPickerConfiguration`, which is used when instantiating an instance of `AZAPicker`, holds the various properties which can be configured.

All configuration properties have default values.

#### `items: [AZAPickerItem]` (no default value)

The list of items to display in the picker. The items must conform to the protocol `AZAPickerItem`, which extends `CustomStringConvertible`.

#### `defaultSelectedIndex: Int` (default value: `0`)

Which index should be selected when the picker is initialized.
    
#### `selectedFont: UIFont` (default value: `UIFont.boldSystemFont(ofSize: 20)`)

Which font to use for the currently selected item.

#### `selectedFontColor: UIColor` (default value: `UIColor.white`)

Which font color to use for the currently selected item.

#### `nonSelectedFont: UIFont` (default value: `UIFont.systemFont(ofSize: 14)`)

Which font to use for the non-selected items.

#### `nonSelectedFontColor: UIColor` (default value: `UIColor.black`)

Which font color to use for the non-selected items.

#### `selectionRadiusInPercent: Double` (default value: `0.3`)

The radius of the selection circle, in percent. (1.0 = 100 %)

#### `selectionBackgroundColor: UIColor` (default value: `UIColor.green`)

Which background color to use for the selection circle.
    
#### `gradientColors: [UIColor]` (default value: `[UIColor.white.withAlphaComponent(0.8), UIColor.white.withAlphaComponent(0)]`)

An array of gradient colors to use for the left and right sides.

#### `gradientWidthInPercent: Double` (default value: `0.4`)

The gradient width, in percent, of the entire picker width. (1.0 = 100 %)

#### `gradientPosition: GradientPosition` (default value: `GradientPosition.above`)
  
Which position to use for the gradients, above or below the items.

#### `itemWidth: Int` (default value: `100`)

Which width, in points, to use for the items.

#### `sliderVelocityCoefficient: Double` (default value: `60`)

Velocity coefficient for the scroll views.

## License

AZAPicker is available under the Apache 2.0 license. See the LICENSE file for more info.
