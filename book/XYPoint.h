//
//  XYPoint.h
//  book
//
//  Created by Ming-Han Chang on 2016/3/12.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYPoint: NSObject
@property int x, y;
-(void) setX: (int) xVal andY: (int) yVal;
-(void) print;
@end