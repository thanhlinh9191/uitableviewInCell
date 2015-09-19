//
//  ArticleListTableViewController.h
//  HorizontalTables
//
//  Created by THANHLINH on 9/19/15.
//  Copyright (c) 2015 THANHLINH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ArticleListViewController : UITableViewController
{
     NSDictionary *_articleDictionary;
      NSMutableArray *_reusableCells;
}
@property (nonatomic, retain) NSDictionary *articleDictionary;
@property (nonatomic, retain) NSMutableArray *reusableCells;
@end
