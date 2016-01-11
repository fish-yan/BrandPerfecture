//
//  BrandPerfectureViewController.m
//  BrandPerfecture
//
//  Created by 薛焱 on 16/1/5.
//  Copyright © 2016年 薛焱. All rights reserved.
//

#import "BrandPerfectureViewController.h"
#import "GoodsCollectionViewCell.h"
#import "Brand-Header.h"

@interface BrandPerfectureViewController ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UIImageView *brandImage;
@property (weak, nonatomic) IBOutlet UILabel *brandLabel;
@property (weak, nonatomic) IBOutlet UILabel *attentionCountLabel;
@property (weak, nonatomic) IBOutlet UIButton *attentionButton;
@property (weak, nonatomic) IBOutlet UICollectionView *brandCollectionView;

@end

@implementation BrandPerfectureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addCouponImage];
}

- (void)addCouponImage {
    UIImageView *couponImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 70)];
    couponImage.image = [UIImage imageNamed:@"BrandPerfecture"];
    [self.brandCollectionView addSubview:couponImage];
}

#pragma mark - UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake((kScreenWidth - 26) / 2 , (kScreenWidth - 26) / 2 + 50);
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    GoodsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"goodsCell" forIndexPath:indexPath];
    cell.goodsMarkImage.image = [UIImage imageNamed:@"newGoods"];
    cell.goodsImage.image = [UIImage imageNamed:@"loding"];
    cell.goodsTitleLabel.text = @"大包围汽车脚垫";
    cell.goodsPriceLabel.text = @"468.00";
    NSString *oldPrice = @"¥998.00";
    NSRange range = NSMakeRange(1, [oldPrice length] - 1);
    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:oldPrice];
    [attri addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle) range:range];
    [attri addAttribute:NSStrikethroughColorAttributeName value:cell.goodsOldPriceLabel.textColor range:range];
    [cell.goodsOldPriceLabel setAttributedText:attri];
    
    return cell;
}
- (IBAction)attentionButtionAction:(UIButton *)sender {
    //点击关注事件操作
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
