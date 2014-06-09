//
//  BlogPostsContainer.m
//  Bloggy
//
//  Created by Anthony Armstrong on 6/7/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import "BlogPostsContainer.h"
#import "BlogPost.h"


@interface BlogPostsContainer ()

@property (strong,nonatomic)NSMutableArray *tempPosts;

@end


@implementation BlogPostsContainer

- (instancetype) init
{
    if(self = [super init]){

    }
    
    return self;
}


+ (NSDictionary *)getPosts
{
    NSURL *blogURL = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary/"];
    NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];

    NSError *error = nil;       //create a nil error object for use in the serialization method.
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData
                                                                   options:0
                                                                     error:&error];

    //NSLog(@"%@", dataDictionary);
    return dataDictionary;
}

- (NSArray *) returnedPosts:(NSDictionary *)thePosts
{
    self.tempPosts = [NSMutableArray array];
    NSDictionary *temp = [thePosts objectForKey:@"posts"];
    for (NSDictionary *dict in temp){

        NSString *title = [[NSString alloc]initWithString:[dict valueForKey:@"title"]];
        BlogPost *p = [[BlogPost alloc]initWithTitle:title];
        p.author = [dict valueForKey:@"author"];
        p.postURL = [NSURL URLWithString:[dict valueForKey:@"url"]];
        p.thumbnailURL = [NSURL URLWithString:[dict valueForKey:@"thumbnail"]];
        [p setDate:[dict valueForKey:@"date"]];
        [self.tempPosts addObject:p];
        
    }

    self.postObjects = [self.tempPosts copy];
    return self.postObjects;
}

@end
