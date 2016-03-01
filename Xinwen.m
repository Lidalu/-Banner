//
//  Xinwen.m
//  网易新闻首页Banner
//
//  Created by ma c on 2/29/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import "Xinwen.h"

@implementation Xinwen

- (instancetype)initWithDict:(NSDictionary *)dict {
    
    if (self = [super init]) {
        
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)xinwenWithDict:(NSDictionary *)dict {
    
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)xinwensList {
    
    //加载plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"news" ofType:@"plist"];
    NSDictionary *dataList = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *dictArray = dataList[@"news"];
    //字典转模型
    NSMutableArray *tmpArray = [NSMutableArray array];
    for (NSDictionary *dict in dictArray) {
        
        Xinwen *xinwen = [Xinwen xinwenWithDict:dict];
        [tmpArray addObject:xinwen];
    }
    return tmpArray;
}

@end
