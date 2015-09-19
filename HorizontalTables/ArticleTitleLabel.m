//
//  ArticleTitleLabel.m
//  HorizontalTables
//
//  Created by THANHLINH on 9/19/15.
//  Copyright (c) 2015 THANHLINH. All rights reserved.
//

#import "ArticleTitleLabel.h"
#import "ControlVariables.h"

@implementation ArticleTitleLabel
- (void)setPersistentBackgroundColor:(UIColor*)color{
    super.backgroundColor = color;
}

- (void)setBackgroundColor:(UIColor *)color
{
    // do nothing - background color never changes
}

- (void)drawTextInRect:(CGRect)rect
{
    CGFloat newWidth = rect.size.width - kArticleTitleLabelPadding;
    CGFloat newHeight = rect.size.height;
    
    CGRect newRect = CGRectMake(kArticleTitleLabelPadding * 0.5, 0, newWidth, newHeight);
    
    [super drawTextInRect:newRect];
}

@end
