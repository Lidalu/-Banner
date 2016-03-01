//
//  CustomNewsTableViewCell2.m
//  网易新闻首页Banner
//
//  Created by ma c on 3/1/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import "CustomNewsTableViewCell2.h"

@interface CustomNewsTableViewCell2 ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *leftImageView;
@property (weak, nonatomic) IBOutlet UIImageView *centerImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;

@end

@implementation CustomNewsTableViewCell2

- (void)setXinwen:(Xinwen *)xinwen {
    
    _xinwen = xinwen;
    self.titleLabel.text = xinwen.title;
    self.leftImageView.image = [UIImage imageNamed:xinwen.images[0]];
    self.centerImageView.image = [UIImage imageNamed:xinwen.images[1]];
    self.rightImageView.image = [UIImage imageNamed:xinwen.images[2]];
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.titleLabel.text = self.xinwen.title;
        self.leftImageView.image = [UIImage imageNamed:self.xinwen.images[0]];
        self.centerImageView.image = [UIImage imageNamed:self.xinwen.images[1]];
        self.rightImageView.image = [UIImage imageNamed:self.xinwen.images[2]];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
