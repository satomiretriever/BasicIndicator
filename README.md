# Install
## Carthage
1. add a line to Cartfile
  ```
  github "satomiretriever/BasicIndicator"
  ```
2. command 
 ```
 $ carthage update
 ```
3. copy Carthage/Build/BasicIndicator.framework to Embeded Binaries
 
# How to use
 
```swift
import BasicIndicator

# set up activity indicator
## simple
BasicIndicator.basic(self)

## complex
BasicIndicator.basic(self, mainColor: UIColor.GreenColor(), hasBackgroundColor: false, hasNavigationController: true)

# start the indicator
BasicIndicator.start()

# stop the indicator
BasicIndicator.stop()
```

# TODO
- more flexible ActivityIndicator
- Color Setting
- UIAlertController
- Screen Transitions
- Rename to ViewHelpers
