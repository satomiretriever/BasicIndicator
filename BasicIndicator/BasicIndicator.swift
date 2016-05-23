import Foundation
import UIKit

public class BasicIndicator {
    
    public static var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.WhiteLarge)
    
    public class func basic(vc: UIViewController, mainColor: UIColor = UIColor.whiteColor(), hasBackgroundColor: Bool, hasNavigationController: Bool = true) {
        
        var centerPoint: CGPoint
        
        if hasNavigationController {
            centerPoint = CGPointMake(vc.view.bounds.size.width / 2, vc.view.bounds.size.height / 2 - 20)
        } else {
            centerPoint = vc.view.center
        }
        
        activityIndicator.frame = CGRectMake(0, 0, 75, 75)
        activityIndicator.center = centerPoint
        activityIndicator.color = mainColor
        activityIndicator.hidesWhenStopped = true
        
        if hasBackgroundColor {
            setBackgroundColor()
        }
        
        vc.view.addSubview(activityIndicator)
        
        stop()
    }
    public class func setBackgroundColor() {
        activityIndicator.backgroundColor = UIColor.blackColor()
        activityIndicator.layer.masksToBounds = true
        activityIndicator.layer.cornerRadius = 5.0;
        activityIndicator.layer.opacity = 0.6;
        
    }
    public class func start() {
        activityIndicator.startAnimating()
        activityIndicator.hidden = false
    }
    public class func stop() {
        activityIndicator.stopAnimating()
        activityIndicator.hidden = true
    }
}