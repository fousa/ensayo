//
//  UITextField+Swizzle.h
//  Ensayo
//
//  Created by Jelle Vandenbeeck on 10/12/13.
//  Copyright (c) 2013 Fousa. All rights reserved.
//

@interface UITextField (Swizzle)
- (void)swizzled_drawPlaceholderInRect:(CGRect)rect;
@end
