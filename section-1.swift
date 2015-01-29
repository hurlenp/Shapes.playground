// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

import UIKit
import XCPlayground

class Shape: UIView {
    var color:UIColor
    init(color:UIColor) {
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func getArea() -> Double {
        return 0
    }
}

class Circle: Shape {
    var radius:Double
    init(radius:Double, color:UIColor  ) {
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: radius * 2, height: radius * 2)
        self.layer.cornerRadius = CGFloat(radius)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(radius * M_PI))
    }
    
}

class Square: Shape {
    var width:Int
    init(width:Int, color:UIColor  ) {
        self.width = width
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: width)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * width))
    }
    
}

/*
class Rectangle: Shape {
    var width:Int
    var height: Int
    init(width:Int, height:Int, color:UIColor  ) {
        self.width = width
        self.height = height
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * height))
    }
    
}
*/

class RoundedRectangle: Shape {
    var width:Int
    var height: Int
    var radius: Int
    init(width:Int, height:Int, radius:Int, color:UIColor  ) {
        self.width = width
        self.height = height
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: height)
        self.layer.cornerRadius = CGFloat(radius)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return(Double(width * height))
    }
    
}

var circle = Circle(radius: 50, color: UIColor.blueColor())
circle.center = CGPoint(x: 50, y: 50)
circle.getArea()


var square = Square(width: 100, color: UIColor.redColor())
square.center = CGPoint(x: 100, y: 100)
square.getArea()

var roundedrectangle = RoundedRectangle(width: 200, height: 100, radius: 50, color: UIColor.purpleColor())
roundedrectangle.center = CGPoint(x: 200, y: 200)
roundedrectangle.getArea()

/*
var rectangle = Rectangle(width: 200, height: 100, color: UIColor.purpleColor())
rectangle.center = CGPoint(x: 275, y: 275)
rectangle.getArea()
*/

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
XCPShowView("Shapes!", view)

view.addSubview(circle)
view.addSubview(square)
//view.addSubview(rectangle)
view.addSubview(roundedrectangle)




/*



var rectangle = Rectangle(width: 10, length: 20, color: UIColor.purpleColor())

square.getArea()
circle.getArea()
rectangle.getArea()


circle.color
circle.radius

square.width
square.color

rectangle.width
rectangle.length
rectangle.color
*/



