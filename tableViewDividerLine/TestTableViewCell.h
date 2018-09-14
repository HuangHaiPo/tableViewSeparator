//
//  TestTableViewCell.h
//  tableViewDividerLine
//
//  Created by aiden on 2018/9/14.
//  Copyright © 2018年 aiden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestTableViewCell : UITableViewCell

@property (nonatomic ,strong) UILabel *lineLabel;
@property (nonatomic ,strong) NSIndexPath *indexPathType;
+ (NSString *)identifier;

@end
