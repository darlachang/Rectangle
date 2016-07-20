//
//  main.m
//  book
//
//  Created by Ming-Han Chang on 2016/2/27.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "boook.h"
#import "XYPoint.h"
#define square(x) ( (x) * (x) )

int main (int argc, char * argv[])
{
    @autoreleasepool {
        
        
        Rectangle *myRect = [[Rectangle alloc] init];
        Square *mySqua = [[Square alloc] init];
        XYPoint *ori = [[XYPoint alloc] init];
        
        [myRect setWidth: 5 andHeight: 7];
        [mySqua setSide: 6];
        [ori setX: 20 andY: 30];
        //[myRect setOrigin: ori];
        myRect.origin = ori;
       /* NSLog(@"origin = (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        [ori setX: 500 andY: 700];
        NSLog(@"origin = (%i, %i)", myRect.origin.x, myRect.origin.y);

        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
        */
        //NSLog(@"Square: s = %i", mySqua.width);
        //NSLog(@"Area = %i, Perimeter = %i", [mySqua area], [mySqua perimeter]);
        //NSLog(@"origin = (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        // isMemberOf
        if ([mySqua isMemberOfClass: [Square class]] == YES)
            NSLog (@"mySquare is a member of Square class");
        if ([mySqua isMemberOfClass: [Rectangle class]] == YES)
            NSLog(@"mySquare is a member of Rectangle class");
        if ([mySqua isMemberOfClass: [NSObject class]] == YES)
             NSLog(@"mySquare is a member of NSObject");
        
        // isKindOf
        if ([mySqua isKindOfClass: [Square class]] == YES)
            NSLog(@"mySquare is a kind of Square");
        if ([mySqua isKindOfClass: [Rectangle class]] == YES)
            NSLog(@"mySquare is a kind of NSObject");
        if ([mySqua isKindOfClass: [NSObject class]] == YES)
            NSLog(@"mySquare is a kind of NEObject");
        
        //respondsTo:
        if ([mySqua respondsToSelector: @selector (setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");
        if ([mySqua respondsToSelector: @selector (setWidth: andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        if ([mySqua respondsToSelector: @selector (alloc)] == YES)
            NSLog(@"Square class responds to alloc method");
        
        //InstancesRespondTo:
        if ([Rectangle instancesRespondToSelector: @selector (setSide:)] ==YES)
            NSLog(@"Instances of Rectangle respond to setSide: method");
        if ([Square instancesRespondToSelector: @selector (setSide:)] == YES)
            NSLog(@"Instances of Square respond to setSide: method");
        if ([Square isSubclassOfClass: [Rectangle class]] == YES)
            NSLog(@"Square is a subclass of a rectangle");
        
    }
    return 0;
}
