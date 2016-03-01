//
//  Xinwen.h
//  网易新闻首页Banner
//
//  Created by ma c on 2/29/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Xinwen : NSObject

@property (nonatomic, strong) NSString *details;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSArray *images;
@property (nonatomic, assign) BOOL isImage;
@property (nonatomic, strong) NSString *title;

//- (instancetype)initWithDict:(NSDictionary *)dict;
//
//+ (instancetype)xinwenWithDict:(NSDictionary *)dict;

+ (NSArray *)xinwensList;


@end
