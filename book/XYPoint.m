//
//  XYPoint.m
//  book
//
//  Created by Ming-Han Chang on 2016/3/12.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint
@synthesize x, y;

-(void) setX: (int) xVal andY: (int) yVal
{
    x = xVal;
    y= yVal;
}

-(void) print
{
    NSLog(@" (%i,%i)", x, y);
}
@end
