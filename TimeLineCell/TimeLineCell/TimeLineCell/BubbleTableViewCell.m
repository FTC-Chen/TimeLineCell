//
//  BubbleTableViewCell.m
//  TimeLineCell
//
//  Created by anyongxue on 2016/12/14.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "BubbleTableViewCell.h"

#define FinsishColor [UIColor colorWithRed:245/255.0 green:172/255.0 blue:0/255.0 alpha:1];

#define UnFinsishColor [UIColor colorWithRed:148/255.0 green:148/255.0 blue:148/255.0 alpha:1];

#define KVIEWBGColor [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1]

@implementation BubbleTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
    self.backgroundColor = KVIEWBGColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) bindDataWithTimeModel:(TimeModel *)model withRow:(NSInteger)row withArrCount:(NSInteger)count{
    
    //第一个去掉顶部view
    if (row==0) self.TopView.hidden = YES;
    
    //最后一个去掉底部view
    if (row==count-1) self.BottomView.hidden = YES;
    
    self.cellImgView.backgroundColor = FinsishColor
    
    self.cellImgView.layer.cornerRadius = self.cellImgView.bounds.size.width/2;
    
    self.TittleLabel.text = model.Title;
}


@end
