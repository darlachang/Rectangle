//
//  boook.m
//  book
//
//  Created by Ming-Han Chang on 2016/3/12.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import "boook.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin;
}


@synthesize width, height;

-(XYPoint *) origin
{
    return origin;
}

-(void) setOrigin: (XYPoint *)pt
{
    if (! origin)
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}

-(void) setWidth: (int) w andHeight : (int) h
{
    width = w;
    height = h;
}

-(int) area
{
    return width * height;
}

-(int) perimeter
{
    return (width + height) *2 ;
}

@end

@implementation Square
/*
-(void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}*/
/*
-(int) side
{
    return self.width;
}
 */

@end
