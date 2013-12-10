//
//  AppDelegate.m
//  Ensayo
//
//  Created by Jelle Vandenbeeck on 10/12/13.
//  Copyright (c) 2013 Fousa. All rights reserved.
//

#import <objc/runtime.h>

#import "AppDelegate.h"

#import "UITextField+Swizzle.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initAppearance];
    [self initSwizzling];
    
    return YES;
}

- (void)initAppearance {
    // Navigation bar
    [[UINavigationBar appearance] setBarTintColor:[UIColor ensayoBlueColor]];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:22.0] }];
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-Light" size:12.0] } forState:UIControlStateNormal];
}

- (void)initSwizzling {
    Method original = class_getInstanceMethod([UITextField class], @selector(drawPlaceholderInRect:));
    Method swizzled = class_getInstanceMethod([UITextField class], @selector(swizzled_drawPlaceholderInRect:));
    method_exchangeImplementations(original, swizzled);
}

@end
