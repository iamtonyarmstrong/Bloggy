//
//  TableViewController.h
//  Bloggy
//
//  Created by Anthony Armstrong on 6/3/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BlogPost;

@interface TableViewController : UITableViewController

@property (nonatomic,strong)NSArray *titles;
@property (nonatomic,strong)NSArray *blogPosts;

@end
