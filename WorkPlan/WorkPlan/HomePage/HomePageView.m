//
//  HomePageView.m
//  WorkPlan
//
//  Created by Eric on 2/2/2018.
//  Copyright © 2018 Eric. All rights reserved.
//

#import "HomePageView.h"

@implementation HomePageView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}
// 把右手坐标转化成左手坐标
- (BOOL)isFlipped{
    return YES;
}
@end
