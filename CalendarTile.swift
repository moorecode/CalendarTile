//
//  CalendarTile.swift
//
//  Created by Sam Moore on 20/11/2015.
//  Copyright © 2015 MooreCode. All rights reserved.
//

import UIKit

@IBDesignable class CalendarTile: UIView {

    @IBInspectable var eventMonth:String = "MON"
    @IBInspectable var eventDay:String = "00"
    @IBInspectable var eventTime:String = "time"
    var tapped = false
    
    convenience init(month:String, day:String, time:String) {
        self.init()
        eventMonth = month
        eventDay = day
        eventTime = time
    }
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        CalendarDraw.drawEventReminder(time: eventTime, month: eventMonth, eventDay: eventDay, tapped: tapped)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        tapped = true
        self.setNeedsDisplay()
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        tapped = false
        self.setNeedsDisplay()
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        tapped = false
        self.setNeedsDisplay()
    }
}

class CalendarDraw : NSObject {
    
    class func drawEventReminder(time time: String = "12:02am", month: String = "DEC", eventDay: String = "20", tapped: Bool = false) {
        
        let context = UIGraphicsGetCurrentContext()
        
        // Color Declarations
        let color2 = UIColor(red: 0.850, green: 0.850, blue: 0.850, alpha: 1.000)
        let color3 = UIColor(red: 0.864, green: 0.427, blue: 0.397, alpha: 1.000)
        let color5 = UIColor(red: 1.000, green: 0.960, blue: 0.765, alpha: 0.282)
        let color4 = UIColor(red: 0.707, green: 0.345, blue: 0.345, alpha: 1.000)
        let color = UIColor(red: 0.926, green: 0.925, blue: 0.925, alpha: 1.000)
        let darken = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 0.177)
        

        let rectangle2Path = UIBezierPath(roundedRect: CGRectMake(5, 13, 72, 70), cornerRadius: 7)
        color2.setFill()
        rectangle2Path.fill()
        
        
        let rectanglePath = UIBezierPath(roundedRect: CGRectMake(5, 7, 72, 70), cornerRadius: 7)
        color.setFill()
        rectanglePath.fill()
        
        
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPointMake(71.37, 7.57))
        bezierPath.addLineToPoint(CGPointMake(71.71, 7.65))
        bezierPath.addCurveToPoint(CGPointMake(77, 15.04), controlPoint1: CGPointMake(74.88, 8.78), controlPoint2: CGPointMake(77, 11.73))
        bezierPath.addCurveToPoint(CGPointMake(77, 15.46), controlPoint1: CGPointMake(77, 15.46), controlPoint2: CGPointMake(77, 15.46))
        bezierPath.addCurveToPoint(CGPointMake(77, 15.88), controlPoint1: CGPointMake(77, 15.46), controlPoint2: CGPointMake(77, 15.61))
        bezierPath.addCurveToPoint(CGPointMake(77, 23.9), controlPoint1: CGPointMake(77, 17.59), controlPoint2: CGPointMake(77, 23.9))
        bezierPath.addLineToPoint(CGPointMake(5, 23.9))
        bezierPath.addCurveToPoint(CGPointMake(5, 15.88), controlPoint1: CGPointMake(5, 23.9), controlPoint2: CGPointMake(5, 17.59))
        bezierPath.addCurveToPoint(CGPointMake(5, 15.46), controlPoint1: CGPointMake(5, 15.46), controlPoint2: CGPointMake(5, 15.46))
        bezierPath.addLineToPoint(CGPointMake(5, 15.04))
        bezierPath.addCurveToPoint(CGPointMake(10.29, 7.65), controlPoint1: CGPointMake(5, 11.73), controlPoint2: CGPointMake(7.12, 8.78))
        bezierPath.addCurveToPoint(CGPointMake(16.34, 7.02), controlPoint1: CGPointMake(12.01, 7.12), controlPoint2: CGPointMake(13.62, 7.03))
        bezierPath.addCurveToPoint(CGPointMake(18.05, 7.02), controlPoint1: CGPointMake(16.86, 7.02), controlPoint2: CGPointMake(17.43, 7.02))
        bezierPath.addLineToPoint(CGPointMake(61.59, 7.02))
        bezierPath.addCurveToPoint(CGPointMake(71.37, 7.57), controlPoint1: CGPointMake(67.76, 7.02), controlPoint2: CGPointMake(69.66, 7.02))
        bezierPath.closePath()
        color3.setFill()
        bezierPath.fill()
        
        let rectangle3Path = UIBezierPath(rect: CGRectMake(5, 21, 72, 3))
        color4.setFill()
        rectangle3Path.fill()
        
        let bezier2Path = UIBezierPath()
        bezier2Path.moveToPoint(CGPointMake(5, 21.09))
        bezier2Path.addLineToPoint(CGPointMake(77, 21.09))
        color5.setStroke()
        bezier2Path.lineWidth = 0.3
        bezier2Path.stroke()
        
        let ovalPath = UIBezierPath(ovalInRect: CGRectMake(21, 11, 7, 7))
        color4.setFill()
        ovalPath.fill()
        
        let oval2Path = UIBezierPath(ovalInRect: CGRectMake(57, 11, 7, 7))
        color4.setFill()
        oval2Path.fill()
        
        let bezier3Path = UIBezierPath()
        bezier3Path.moveToPoint(CGPointMake(24.44, 14.76))
        bezier3Path.addLineToPoint(CGPointMake(24.44, 3.5))
        bezier3Path.lineCapStyle = .Round;
        
        color3.setFill()
        bezier3Path.fill()
        color2.setStroke()
        bezier3Path.lineWidth = 3
        bezier3Path.stroke()
        
        let bezier4Path = UIBezierPath()
        bezier4Path.moveToPoint(CGPointMake(60.44, 14.76))
        bezier4Path.addLineToPoint(CGPointMake(60.44, 3.5))
        bezier4Path.lineCapStyle = .Round;
        
        color3.setFill()
        bezier4Path.fill()
        color2.setStroke()
        bezier4Path.lineWidth = 3
        bezier4Path.stroke()
        
        let textRect = CGRectMake(28, 9, 29, 12)
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center
        
        let textFontAttributes = [NSFontAttributeName: UIFont.systemFontOfSize(10), NSForegroundColorAttributeName: color, NSParagraphStyleAttributeName: textStyle]
        
        let textTextHeight: CGFloat = NSString(string: month).boundingRectWithSize(CGSizeMake(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, textRect);
        NSString(string: month).drawInRect(CGRectMake(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight), withAttributes: textFontAttributes)
        CGContextRestoreGState(context)
        
        let text2Rect = CGRectMake(5, 26, 72, 38)
        let text2Style = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        text2Style.alignment = .Center
        
        let text2FontAttributes = [NSFontAttributeName: UIFont.systemFontOfSize(38), NSForegroundColorAttributeName: UIColor.blackColor(), NSParagraphStyleAttributeName: text2Style]
        
        let text2TextHeight: CGFloat = NSString(string: eventDay).boundingRectWithSize(CGSizeMake(text2Rect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, text2Rect);
        NSString(string: eventDay).drawInRect(CGRectMake(text2Rect.minX, text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, text2Rect.width, text2TextHeight), withAttributes: text2FontAttributes)
        CGContextRestoreGState(context)
        
        let text3Rect = CGRectMake(10, 64, 62, 11)
        let text3Style = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        text3Style.alignment = .Center
        
        let text3FontAttributes = [NSFontAttributeName: UIFont.systemFontOfSize(9), NSForegroundColorAttributeName: UIColor.grayColor(), NSParagraphStyleAttributeName: text3Style]
        
        let text3TextHeight: CGFloat = NSString(string: time).boundingRectWithSize(CGSizeMake(text3Rect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: text3FontAttributes, context: nil).size.height
        CGContextSaveGState(context)
        CGContextClipToRect(context, text3Rect);
        NSString(string: time).drawInRect(CGRectMake(text3Rect.minX, text3Rect.minY + (text3Rect.height - text3TextHeight) / 2, text3Rect.width, text3TextHeight), withAttributes: text3FontAttributes)
        CGContextRestoreGState(context)
        
        if (tapped) {
            let rectangle4Path = UIBezierPath(roundedRect: CGRectMake(5, 7, 72, 76), cornerRadius: 7)
            darken.setFill()
            rectangle4Path.fill()
        }
    }
}

