//
//  BlogPost.h
//  Bloggy
//
//  Created by Anthony Armstrong on 6/5/14.
//  Copyright (c) 2014 iamtonyarmstrong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *author;

//@property (strong, nonatomic) Image *workingImage;

//designated initializer
- (instancetype) initWithJson;

//other initializers, but DON'T let devs call these...
- (instancetype) init;






@end
