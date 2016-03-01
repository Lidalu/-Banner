//
//  Banner.h
//  网易新闻首页Banner
//
//  Created by ma c on 2/29/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Banner : NSObject

@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *title;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)bannerWithDict:(NSDictionary *)dict;

+ (NSArray *)bannersList;
+ (NSArray *)bannerImageArrayList;

@end
