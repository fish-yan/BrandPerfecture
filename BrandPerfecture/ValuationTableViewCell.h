//
//  ValuationTableViewCell.h
//  BrandPerfecture
//
//  Created by 薛焱 on 16/1/5.
//  Copyright © 2016年 薛焱. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ValuationTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *useableCountLabel;
@property (weak, nonatomic) IBOutlet UIButton *supportButton;
@property (weak, nonatomic) IBOutlet UIView *staredView;
@property (weak, nonatomic) IBOutlet UILabel *goodsKindLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *valuationContent;
@property (weak, nonatomic) IBOutlet UILabel *explainLabel;
@property (weak, nonatomic) IBOutlet UILabel *explainContentLabel;

/**
 *  评价星数
 *
 *  @param StarCount float
 */
- (void)setStaredViewCount:(CGFloat)StarCount;

@end
