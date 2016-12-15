//
//  ViewController.m
//  TimeLineCell
//
//  Created by anyongxue on 2016/12/14.
//  Copyright © 2016年 cc. All rights reserved.
//

#import "ViewController.h"
#import "TimeTableViewCell.h"
#import "TimeModel.h"
#import "BubbleTableViewCell.h"

#define KScreenWidth [[UIScreen mainScreen] bounds].size.width

#define KScreenHeight [[UIScreen mainScreen] bounds].size.height

#define KVIEWBGColor [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1]

//static NSString *const COUID = @"COUID";

static NSString *const COUID2 = @"COUID2";//气泡形式

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic , strong) UITableView *timeTableView;

@property (nonatomic , strong) NSMutableArray *dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
    

    //本地模拟server数据
    NSArray *serverData = @[
                            @{
                                @"Title":@"学习第一阶段",
                                @"isFinsish":@1,
                                },
                            @{
                                @"Title":@"学习第二阶段",
                                @"isFinsish":@1,
                                },
                            @{
                                @"Title":@"学习第三阶段",
                                @"isFinsish":@1,
                                },
                            @{
                                @"Title":@"学习第四阶段",
                                @"isFinsish":@0,
                                },
                            @{
                                @"Title":@"学习第五阶段",
                                @"isFinsish":@0,
                                },
                            @{
                                @"Title":@"学习第六阶段",
                                @"isFinsish":@0,
                                },
                            @{
                                @"Title":@"考试",
                                @"isFinsish":@0,
                                },
                            ];

    for (NSDictionary *tmpDic in serverData) {
        
        TimeModel *model = [[TimeModel alloc] initWithDictionary:tmpDic];
        
        [self.dataArr addObject:model];
    }
    
    [self.view addSubview:self.timeTableView];
}


- (UITableView *)timeTableView{
    
    if (!_timeTableView) {
        
        //_timeTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, KScreenWidth, KScreenHeight - 64) style:UITableViewStylePlain];
        
        //气泡形式 根据图片调整整体布局
        _timeTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64+20, KScreenWidth, KScreenHeight - 64) style:UITableViewStylePlain];
        
        //气泡形式需要
        _timeTableView.backgroundColor = KVIEWBGColor;
        self.view.backgroundColor = KVIEWBGColor;
        
        
        [_timeTableView setDelegate:self];
        
        [_timeTableView setDataSource:self];
        
        //普通cell样式,底部横线
        //[_timeTableView registerNib:[UINib nibWithNibName:NSStringFromClass([TimeTableViewCell class]) bundle:nil] forCellReuseIdentifier:COUID];
        
        //气泡样式
        [_timeTableView registerNib:[UINib nibWithNibName:NSStringFromClass([BubbleTableViewCell class]) bundle:nil] forCellReuseIdentifier:COUID2];
        
        [_timeTableView setTableFooterView:[UIView new]];
        
        [_timeTableView setSeparatorStyle:(UITableViewCellSeparatorStyleNone)];
        
        //[_couTableView setHidden:YES];
    }
    
    return _timeTableView;
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.dataArr.count;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //普通cell样式,底部横线
    //TimeTableViewCell *cell = (TimeTableViewCell *)[tableView dequeueReusableCellWithIdentifier:COUID];
    
    //气泡cell样式
    BubbleTableViewCell *cell = (BubbleTableViewCell *)[tableView dequeueReusableCellWithIdentifier:COUID2];
        
    [cell bindDataWithTimeModel:self.dataArr[indexPath.row] withRow:indexPath.row withArrCount:self.dataArr.count];
    
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //return 60.0f;
    
    return 80.0f;//气泡cell时
}

- (NSMutableArray *)dataArr{
    
    if (!_dataArr) {
        
        _dataArr = [NSMutableArray array];
    }
    
    return _dataArr;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
