//
//  HorizontalTableCell_iPhone.m
//  HorizontalTables
//
//  Created by THANHLINH on 9/19/15.
//  Copyright (c) 2015 THANHLINH. All rights reserved.
//

#import "HorizontalTableCell_iPhone.h"
#import "ArticleCell_iPhone.h"
#import "ArticleTitleLabel.h"
@implementation HorizontalTableCell_iPhone
- (NSString *) reuseIdentifier
{
    return @"HorizontalCell";
}

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        self.horizontalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kCellHeight, kTableLength)] ;
        self.horizontalTableView.showsVerticalScrollIndicator = NO;
        self.horizontalTableView.showsHorizontalScrollIndicator = NO;
        self.horizontalTableView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
        [self.horizontalTableView setFrame:CGRectMake(kRowHorizontalPadding * 0.5, kRowVerticalPadding * 0.5, kTableLength - kRowHorizontalPadding, kCellHeight)];
        
        self.horizontalTableView.rowHeight = kCellWidth;
      //  self.horizontalTableView.backgroundColor = kHorizontalTableBackgroundColor;
          self.horizontalTableView.backgroundColor = [UIColor clearColor];
        
        self.horizontalTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        self.horizontalTableView.separatorColor = [UIColor clearColor];
        
        self.horizontalTableView.dataSource = self;
        self.horizontalTableView.delegate = self;
        [self addSubview:self.horizontalTableView];
    }
    
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ArticleCell";
    
    __block ArticleCell_iPhone *cell = (ArticleCell_iPhone *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        cell = [[ArticleCell_iPhone alloc] initWithFrame:CGRectMake(0, 0, kCellWidth, kCellHeight)];;
    }
    
    __block NSDictionary *currentArticle = [self.articles objectAtIndex:indexPath.row];
    
    dispatch_queue_t concurrentQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    dispatch_async(concurrentQueue, ^{
        UIImage *image = nil;
        image = [UIImage imageNamed:[currentArticle objectForKey:@"ImageName"]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [cell.thumbnail setImage:image];
        });
    });
    
    cell.titleLabel.text = [currentArticle objectForKey:@"Title"];
    
    return cell;
}
@end
