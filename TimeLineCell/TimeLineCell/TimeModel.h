//
//  TimeModel.h
//  TimeLineCell
//
//  Created by anyongxue on 2016/12/14.
//  Copyright © 2016年 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeModel : NSObject

@property (nonatomic,copy) NSString *Title;

@property (nonatomic,assign) BOOL isFinsish;

- (id) initWithDictionary:(NSDictionary *)dict;

@end
