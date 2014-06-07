//
//  BlogPost.m
//  Bloggy
//
//  Created by Anthony Armstrong on 6/5/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "BlogPost.h"

@interface BlogPost ()



//self.blogPosts = [dataDictionary objectForKey:@"posts"];

@end


@implementation BlogPost

//designated initializer
- (instancetype) initWithTitle:(NSString *)title
{
    if(self = [super init]){
        //set up ivars and call the class method +(NSDictionary *)getPosts()...
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






@end
