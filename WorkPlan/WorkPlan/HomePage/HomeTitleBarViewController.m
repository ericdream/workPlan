//
//  HomeTitleBarViewController.m
//  WorkPlan
//
//  Created by Eric on 2/2/2018.
//  Copyright © 2018 Eric. All rights reserved.
//

#import "HomeTitleBarViewController.h"

@interface HomeTitleBarViewController ()

@end

@implementation HomeTitleBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setWantsLayer:YES];
    self.view.layer.backgroundColor = [NSColor redColor].CGColor;
    [self setLayoutAttribute:NSLayoutAttributeLeft];
//    self.fullScreenMinHeight = 40;
    // Do view setup here.
}

@end
