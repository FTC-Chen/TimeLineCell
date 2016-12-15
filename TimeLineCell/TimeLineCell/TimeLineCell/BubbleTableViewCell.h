//
//  BubbleTableViewCell.h
//  TimeLineCell
//
//  Created by anyongxue on 2016/12/14.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TimeModel.h"

@interface BubbleTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *TittleLabel;
@property (weak, nonatomic) IBOutlet UIView *TopView;
@property (weak, nonatomic) IBOutlet UIView *BottomView;
@property (weak, nonatomic) IBOutlet UIImageView *cellImgView;

- (void) bindDataWithTimeModel:(TimeModel *)model withRow:(NSInteger)row withArrCount:(NSInteger)count;

@end
