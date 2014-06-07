//
//  BlogPostsContainer.m
//  Bloggy
//
//  Created by Anthony Armstrong on 6/7/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "BlogPostsContainer.h"


@interface BlogPostsContainer ()

@property (strong,nonatomic)NSMutableArray *tempPosts;

@end

@implementation BlogPostsContainer

//designated initializer
- (instancetype) initWithJson
{
    if(self = [super init]){
        //set up ivars and call the class method +(NSDictionary *)getPosts()...
        if(!_allBlogPosts) _allBlogPosts = [BlogPostsContainer getPosts];
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

+ (NSDictionary *)getPosts
{
    NSURL *blogURL = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary/"];
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];

    NSError *error = nil;       //create a nil error object for use in the serialization method.
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                   options:0
                                                                     error:&error];

    NSLog(@"%@", dataDictionary);
    return dataDictionary;
}

- (NSArray *) returnedPosts:(NSDictionary *)thePosts
{
    self.posts = [NSArray array];


    return self.posts;
}

@end
