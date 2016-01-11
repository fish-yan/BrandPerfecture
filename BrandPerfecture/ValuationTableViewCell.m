//
//  ValuationTableViewCell.m
//  BrandPerfecture
//
//  Created by 薛焱 on 16/1/5.
//  Copyright © 2016年 薛焱. All rights reserved.
//

#import "ValuationTableViewCell.h"

@interface ValuationTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *stared1;
@property (weak, nonatomic) IBOutlet UIImageView *stared2;
@property (weak, nonatomic) IBOutlet UIImageView *stared3;
@property (weak, nonatomic) IBOutlet UIImageView *stared4;
@property (weak, nonatomic) IBOutlet UIImageView *stared5;

@end

@implementation ValuationTableViewCell

- (void)awakeFromNib {
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)setStaredViewCount:(CGFloat)StarCount{
    if (StarCount >= 1) {
        self.stared1.image = [UIImage imageNamed:@"stared"];
    }
    if (StarCount >= 2) {
        self.stared2.image = [UIImage imageNamed:@"stared"];
    }
    if (StarCount >= 3) {
        self.stared3.image = [UIImage imageNamed:@"stared"];
    }
    if (StarCount >= 4) {
        self.stared4.image = [UIImage imageNamed:@"stared"];
    }
    if (StarCount >= 5) {
        self.stared5.image = [UIImage imageNamed:@"stared"];
    }
}

@end
