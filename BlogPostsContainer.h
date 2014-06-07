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

@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *author;
@property (nonatomic,strong) NSDictionary *allBlogPosts;
@property (nonatomic,strong) NSArray *posts;
//@property (strong, nonatomic) Image *workingImage;

//designated initializer
- (instancetype) initWithJson;

//other initializers, but DON'T let devs call these...
- (instancetype) init;

//class method
+ (NSDictionary *)getPosts;

//public convenience methods


@end
