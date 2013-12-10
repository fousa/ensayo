//
//  PlaceholderViewController.m
//  Ensayo
//
//  Created by Jelle Vandenbeeck on 10/12/13.
//  Copyright (c) 2013 Fousa. All rights reserved.
//

#import "PlaceholderViewController.h"

@interface PlaceholderViewController ()
@end

@implementation PlaceholderViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.title = [NSLocalizedString(@"Placeholders", @"Placeholders") uppercaseString];
}

@end
