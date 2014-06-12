//
//  THWebViewController.h
//  Bloggy
//
//  Created by Anthony Armstrong on 6/11/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BlogPost;

@interface THWebViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic,strong)IBOutlet UIWebView *uwv;
@property (nonatomic,strong)BlogPost *blogPost;
@property (nonatomic,strong)UIActivityIndicatorView *spinner;

@end
