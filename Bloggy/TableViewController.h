//
//  TableViewController.h
//  Bloggy
//
//  Created by Anthony Armstrong on 6/3/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BlogPostsContainer;

@interface TableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic,strong)NSArray *titles;
@property (nonatomic,strong)BlogPostsContainer *postsContainter;

@end
