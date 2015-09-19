//
//  ArticleCell.h
//  HorizontalTables
//
//  Created by THANHLINH on 9/19/15.
//  Copyright (c) 2015 THANHLINH. All rights reserved.
//
@class ArticleTitleLabel;

#import <UIKit/UIKit.h>

@interface ArticleCell : UITableViewCell
{
    UIImageView *_thumbnail;
    ArticleTitleLabel *_titleLabel;
}

@property (nonatomic, retain) UIImageView *thumbnail;
@property (nonatomic, retain) ArticleTitleLabel *titleLabel;
@end
