//
//  Banner.m
//  网易新闻首页Banner
//
//  Created by ma c on 2/29/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import "Banner.h"

@implementation Banner

- (instancetype)initWithDict:(NSDictionary *)dict {
    
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)bannerWithDict:(NSDictionary *)dict {
    
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)bannersList {
    
    //加载plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"news" ofType:@"plist"];
    NSDictionary *dataList = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *dictArray = dataList[@"header"];
    //字典转模型
    NSMutableArray *tmpArray = [NSMutableArray array];
    for (NSDictionary *dict in dictArray) {
        
        Banner *banner = [Banner bannerWithDict:dict];
        [tmpArray addObject:banner];
    }
    return tmpArray;
}

+ (NSArray *)bannerImageArrayList {
    
    //加载plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"news" ofType:@"plist"];
    NSDictionary *dataList = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *dictArray = dataList[@"header"];
    //字典转模型
    NSMutableArray *tmpArray = [NSMutableArray array];
    for (NSDictionary *dict in dictArray) {
        
        Banner *banner = [Banner bannerWithDict:dict];
        NSString *imageName = banner.image;
        [tmpArray addObject:imageName];
    }
    return tmpArray;
}

@end
