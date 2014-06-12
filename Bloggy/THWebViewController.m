//
//  THWebViewController.m
//  Bloggy
//
//  Created by Anthony Armstrong on 6/11/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "THWebViewController.h"
#import "BlogPost.h"

@interface THWebViewController ()

@end

@implementation THWebViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = self.blogPost.title;
    self.uwv.delegate = self;

    self.spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.spinner.center = CGPointMake(160, 240);
    self.spinner.hidesWhenStopped = YES;
    [self.view addSubview:self.spinner];
    [self.spinner startAnimating];



    //NSURL *url = [NSURL URLWithString:@"http://google.com"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:self.blogPost.postURL];
    [self.uwv loadRequest:requestURL];
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{

}


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self.spinner stopAnimating];
    [self.spinner removeFromSuperview];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
