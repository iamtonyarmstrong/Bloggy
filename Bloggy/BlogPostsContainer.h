//
//  BlogPostsContainer.h
//  Bloggy
//
//  Created by Anthony Armstrong on 6/7/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BlogPost;

@interface BlogPostsContainer : NSObject

@property (nonatomic,strong) NSDictionary *dataDictionary;
@property (nonatomic,strong) NSArray *postObjects;

//@property (strong, nonatomic) Image *workingImage;

//other initializers, but DON'T let devs call these...
- (instancetype) init;

//class method
+ (NSDictionary *)getPosts;

//public convenience methods
- (NSArray *) returnedPosts:(NSDictionary *)thePosts;


@end
