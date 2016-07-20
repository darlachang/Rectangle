//
//  boook.h
//  book
//
//  Created by Ming-Han Chang on 2016/3/12.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint;
@interface Rectangle : NSObject
@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;
@end


/*
@interface Square : Rectangle

-(void) setSide: (int) s;
@end
*/

@interface  Square : NSObject
{
    Rectangle *rect;
}
-(int) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;
@end