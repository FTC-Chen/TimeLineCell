//
//  TimeTableViewCell.m
//  TimeLineCell
//
//  Created by anyongxue on 2016/12/14.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "TimeTableViewCell.h"

#define FinsishColor [UIColor colorWithRed:245/255.0 green:172/255.0 blue:0/255.0 alpha:1];

#define UnFinsishColor [UIColor colorWithRed:148/255.0 green:148/255.0 blue:148/255.0 alpha:1];

@interface TimeTableViewCell ()

@end

@implementation TimeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) bindDataWithTimeModel:(TimeModel *)model withRow:(NSInteger)row withArrCount:(NSInteger)count{
    
    NSLog(@"%@",model.Title);
    
    //第一个去掉顶部view
    if (row==0) self.TopView.hidden = YES;

    //最后一个去掉底部view
    if (row==count-1) self.BottomView.hidden = YES;
    
    self.cellImgView.layer.cornerRadius = self.cellImgView.bounds.size.width/2;
    
    self.TimeLabel.text = model.Title;

    if (model.isFinsish == 0) {
       
        self.FinisnLabel.text = @"未完成";
        
        self.cellImgView.backgroundColor = UnFinsishColor
        
        self.TopView.backgroundColor = UnFinsishColor;
        
        self.BottomView.backgroundColor = UnFinsishColor;
    
    }else{
        self.FinisnLabel.text = @"已完成";
        
        self.cellImgView.backgroundColor = FinsishColor
        
        self.TopView.backgroundColor = FinsishColor;
        
        self.BottomView.backgroundColor = FinsishColor;
    }
    

}






@end
