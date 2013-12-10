//
//  AppDelegate.m
//  Ensayo
//
//  Created by Jelle Vandenbeeck on 10/12/13.
//  Copyright (c) 2013 Fousa. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initAppearance];
    
    return YES;
}

- (void)initAppearance {
    // Navigation bar
    [[UINavigationBar appearance] setBarTintColor:[UIColor ensayoBlueColor]];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor whiteColor], NSFontAttributeName : [UIFont fontWithName:@"HelveticaNeue-CondensedBlack" size:25.0] }];
}

@end
