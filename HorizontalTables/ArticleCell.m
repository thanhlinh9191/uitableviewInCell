//
//  ArticleCell.m
//  HorizontalTables
//
//  Created by THANHLINH on 9/19/15.
//  Copyright (c) 2015 THANHLINH. All rights reserved.
//

#import "ArticleCell.h"

@implementation ArticleCell
@synthesize thumbnail = _thumbnail;
@synthesize titleLabel = _titleLabel;
- (NSString *)reuseIdentifier
{
    return @"ArticleCell";
}

@end
