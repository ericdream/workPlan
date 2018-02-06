//
//  AppDelegate.m
//  WorkPlan
//
//  Created by Eric on 2/2/2018.
//  Copyright © 2018 Eric. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeWindowController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self.window setIsVisible:NO];
    HomeWindowController *homePageVc = [[HomeWindowController alloc]initWithWindowNibName:@"HomeWindowController"];
    [homePageVc.window makeKeyAndOrderFront:nil];
    [homePageVc.window center];
    NSInteger windowStyleFlags = NSWindowStyleMaskUnifiedTitleAndToolbar|NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskResizable | NSWindowStyleMaskFullSizeContentView;
    [homePageVc.window setStyleMask:windowStyleFlags];
    homePageVc.window.appearance = [NSAppearance appearanceNamed:NSAppearanceNameAqua];
    homePageVc.window.titleVisibility = NSWindowTitleHidden;
    homePageVc.window.titlebarAppearsTransparent = YES;
//    homePageVc.window.title = @"ERIC";
    
    
}



- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
