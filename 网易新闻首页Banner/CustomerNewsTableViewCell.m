//
//  CustomerNewsTableViewCell.m
//  网易新闻首页Banner
//
//  Created by ma c on 3/1/16.
//  Copyright © 2016 lu. All rights reserved.
//

#import "CustomerNewsTableViewCell.h"

@interface CustomerNewsTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;

@end

@implementation CustomerNewsTableViewCell

- (void)setXinwen:(Xinwen *)xinwen {
    
    _xinwen = xinwen;
    self.iconImageView.image = [UIImage imageNamed:xinwen.image];
    self.titleLabel.text = xinwen.title;
    self.descLabel.text = xinwen.details;
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.titleLabel.text = self.xinwen.title;
        self.descLabel.text = self.xinwen.details;
        self.iconImageView.image = [UIImage imageNamed:self.xinwen.image];
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
