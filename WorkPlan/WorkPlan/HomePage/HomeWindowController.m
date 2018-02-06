//
//  HomeWindowController.m
//  WorkPlan
//
//  Created by Eric on 2/2/2018.
//  Copyright © 2018 Eric. All rights reserved.
//

#import "HomeWindowController.h"
#import "HomePageView.h"
#import <QuartzCore/CAGradientLayer.h>
#import "HomeTitleBarViewController.h"
@interface HomeWindowController ()
@property (weak) IBOutlet HomePageView *homeContentView;

@end

@implementation HomeWindowController

- (void)windowDidLoad {
    [super windowDidLoad];

    [self.homeContentView setWantsLayer:YES];
    self.homeContentView.layer.backgroundColor = [NSColor darkGrayColor].CGColor;
    NSTextField *filed = [[NSTextField alloc] initWithFrame:NSMakeRect(50, 50, 100, 30)];
    filed.placeholderString = @"test";
    [filed setWantsLayer:YES];
    filed.layer.borderColor = [NSColor redColor].CGColor;
    filed.layer.borderWidth = 1;

    [self.homeContentView addSubview:filed];
    CAGradientLayer *gradientLayer = [[CAGradientLayer alloc] init];
    gradientLayer.colors = @[(__bridge id)[NSColor colorWithWhite:0 alpha:0.3].CGColor, (__bridge id)[NSColor colorWithWhite:0 alpha:0.6].CGColor,(__bridge id)[NSColor colorWithWhite:0 alpha:0.9].CGColor];
    gradientLayer.locations = @[@0.0,@0.5,@1.0];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);
    self.homeContentView.layer = gradientLayer;
//    NSButton *creatPlanBtn = [[NSButton alloc] initWithFrame:CGRectMake(100, 0, 100, 100)];
    HomeTitleBarViewController * titleBarVc = [[HomeTitleBarViewController alloc] initWithNibName:@"HomeTitleBarViewController" bundle:nil];
    [self.window addTitlebarAccessoryViewController:titleBarVc];
}

@end
