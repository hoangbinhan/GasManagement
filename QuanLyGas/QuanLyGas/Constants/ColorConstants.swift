import Foundation
import UIKit

/// All common colors define here.
public struct Color {
    
    public static func color(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) -> UIColor {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
    
    public static func color(hexString: String) -> UIColor {
        var hexString: String = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        hexString = hexString.replacingOccurrences(of: "0x", with: "")
        hexString = hexString.replacingOccurrences(of: "#", with: "")
        
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        return UIColor(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
    
    public static let navTint = UIColor.init(named: "Tint")
    
    // Background
    public static let whiteBgColor        = UIColor.white
    public static let blackBgColor        = UIColor.black
    
    // Navigation
    public static let navBgColor          = color(red: 255, green: 176, blue: 103)
    //line
    public static let lineColor          = color(red: 185, green: 185, blue: 185)
  
    
    
    // Tabbar
    public static let tabBgColor          = color(red: 46, green: 56, blue: 74)
    
    // Text
    public static let yellowTextColor     = color(red: 243, green: 223, blue: 184)
    public static let whiteTextColor      = UIColor.white
    public static let grayTextColor       = color(red: 184, green: 184, blue: 184)
    
    // Button
    public static let ChinhSuaButtonColor  = color(red: 59, green: 246, blue: 185)
    public static let XoaButtonColor   = color(red: 224, green: 32, blue: 32)
    public static let yellowButtonColor   = color(red: 243, green: 223, blue: 184)
    
    //textfield
    public static let TextFieldColor = color(red: 249, green: 249, blue: 249)
    
   
    
    
}
