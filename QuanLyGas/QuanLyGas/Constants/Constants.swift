import Foundation
import UIKit

public struct Constants {
    /// Scale
    public struct Scale {
        public static let display: CGFloat     = (UIScreen.main.bounds.width < 375.0) ? (UIScreen.main.bounds.width / 375.0) : 1.0
        public static let font: CGFloat        = (UIScreen.main.bounds.width < 375.0) ? (UIScreen.main.bounds.width / 375.0) : 1.0
    }
    
    /// Radius
    public struct Radius {
       
        public static let defaultTextFieldRadius:   CGFloat   = 7.0
        public static let defaultButtonRadius:      CGFloat   = 7.0
        public static let ButtonRadius:      CGFloat   = 5.0

        
        //Home
        public static let defaultButtonHomeRadius:  CGFloat   = 8.0
        
        // Alert Custom
        public static let viewAlertRadius:          CGFloat   = 19.0
        public static let ButtonTextAlertRadius:    CGFloat   = 6.0
        
    }
    //
   
}
