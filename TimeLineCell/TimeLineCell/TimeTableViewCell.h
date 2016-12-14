//
//  TimeTableViewCell.h
//  TimeLineCell
//
//  Created by anyongxue on 2016/12/14.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimeModel.h"

@interface TimeTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *cellImgView;

@property (weak, nonatomic) IBOutlet UILabel *TimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *FinisnLabel;
@property (weak, nonatomic) IBOutlet UIView *TopView;
@property (weak, nonatomic) IBOutlet UIView *BottomView;

- (void) bindDataWithTimeModel:(TimeModel *)model withRow:(NSInteger)row withArrCount:(NSInteger)count;

@end
