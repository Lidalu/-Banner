//
//  ViewController.m
//  网易新闻首页Banner
//
//  Created by ma c on 2/29/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import "Xinwen.h"
#import "Banner.h"
#import "LLuBannerView.h"
#import "ViewController.h"
#import "CustomNewsTableViewCell2.h"
#import "CustomerNewsTableViewCell.h"

static NSString * identifier = @"cellID";
static NSString * identifier2 = @"cellID2";

@interface ViewController () <LLuBannerViewDelegate, UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *newsList;
@property (nonatomic, strong) NSArray *bannerList;
@property (nonatomic, strong) LLuBannerView *bannerView;
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *imageNameArray;

@end


@implementation ViewController

- (NSArray *)newsList {
    
    if (!_newsList) {
        
        _newsList = [Xinwen xinwensList];
    }
    return _newsList;
}

- (NSArray *)imageNameArray {
    
    if (!_imageNameArray) {
        
        _imageNameArray = [Banner bannerImageArrayList];
    }
    return _imageNameArray;
}

- (NSArray *)bannerList {
    
    if (!_bannerList) {
        
        _bannerList = [Banner bannersList];
    }
    return _bannerList;
}

- (LLuBannerView *)bannerView {
    
    if (!_bannerView) {
    
        LLuBannerView *bannerView = [LLuBannerView bannerView];
        [self.view addSubview:bannerView];
        bannerView.delegate = self;
        bannerView.imageNames = self.imageNameArray;
        _bannerView = bannerView;
    }
    return _bannerView;
}

- (UITableView *)tableView {
    
    if (!_tableView) {
        
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame) - 64) style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.tableHeaderView = self.bannerView;
        [_tableView addSubview:self.bannerView.descLabel];
        [_tableView registerNib:[UINib nibWithNibName:@"CustomerNewsTableViewCell" bundle:nil] forCellReuseIdentifier:identifier];
        [_tableView registerNib:[UINib nibWithNibName:@"CustomNewsTableViewCell2" bundle:nil] forCellReuseIdentifier:identifier2];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Xinwen *xinwen = self.newsList[indexPath.row];
    
    if (xinwen.isImage) {
        
        CustomNewsTableViewCell2 *cell2 = [tableView dequeueReusableCellWithIdentifier:identifier2 forIndexPath:indexPath];
        cell2.xinwen = self.newsList[indexPath.row];
        return cell2;
        

    }   else{
        
        CustomerNewsTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
        cell1.xinwen = self.newsList[indexPath.row];
        return cell1;
    }
}

- (void)bannerView:(LLuBannerView *)bannerView imageDidClickWithIndex:(NSInteger)imageIndex {
    
    NSLog(@"第%ld张图片被选中了！", imageIndex);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Xinwen *xinwen = self.newsList[indexPath.row];
    if (xinwen.isImage) {
        return 120.0;
    } else {
        
        return 80;
    }
}

@end
