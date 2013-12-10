//
//  UITextField+Swizzle.m
//  Ensayo
//
//  Created by Jelle Vandenbeeck on 10/12/13.
//  Copyright (c) 2013 Fousa. All rights reserved.
//

#import "UITextField+Swizzle.h"

@implementation UITextField (Swizzle)

- (void)swizzled_drawPlaceholderInRect:(CGRect)rect {    
    // Correctly position the placeholder text in a UISearchBar. Works out
    // just fine for a normal UITextField
    CGRect placeholderRect = [self textRectForBounds:rect];
    placeholderRect.origin = (CGPoint) { 0, 4 };
    
    [self.placeholder drawInRect:placeholderRect withAttributes:@{ NSFontAttributeName : self.font, NSForegroundColorAttributeName : [UIColor ensayoBlueColor] }];
}

@end
