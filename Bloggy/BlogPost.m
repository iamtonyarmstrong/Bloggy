//
//  BlogPost.m
//  Bloggy
//
//  Created by Anthony Armstrong on 6/5/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "BlogPost.h"



@implementation BlogPost

//designated initializer
- (instancetype) initWithTitle:(NSString *)title
{
    if(self = [super init]){
        //set up ivars and call the class method +(NSDictionary *)getPosts()...
        self.title = title;
        self.thumbnailURL = nil;
        self.postURL = nil;
        self.author = nil;
        self.date = nil;
    }

    return self;
}

- (instancetype)init
{
    NSLog(@"here...");
    @throw [NSException exceptionWithName:@"ImproperInitMethodUsed"
                                   reason:@"Please use the designated initializer -(instancetype)initWithJson."
                                 userInfo:nil];

    
    //[myException raise]; /* equivalent to above directive */

    return nil;
}


- (NSString *)createFormattedDate
{
    NSDate *date = [[NSDate alloc]init];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter localizedStringFromDate: dateStyle:<#(NSDateFormatterStyle)#> timeStyle:<#(NSDateFormatterStyle)#>];
    [dateFormatter setDateStyle:NSDateFormatterNoStyle];

    NSDate *dateFromString = [[NSDate alloc] init];
    dateFromString = [dateFormatter dateFromString:self.date];

    return [dateFormatter stringFromDate:dateFromString];
}



@end
