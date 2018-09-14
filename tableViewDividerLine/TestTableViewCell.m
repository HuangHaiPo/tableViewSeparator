//
//  TestTableViewCell.m
//  tableViewDividerLine
//
//  Created by aiden on 2018/9/14.
//  Copyright © 2018年 aiden. All rights reserved.
//

#import "TestTableViewCell.h"

@implementation TestTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        [self lineLabel];
    }
    return self;
}
- (void)setIndexPathType:(NSIndexPath *)indexPathType{
    _indexPathType = indexPathType;
    if (indexPathType.row == 0) {
        _lineLabel.hidden = YES;
    }
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
//- (void) setFrame:(CGRect)frame{
//    frame.size.height -= 0.8;
//    [super setFrame:frame];
//}
// 自绘分割线
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillRect(context, rect);

    CGContextSetStrokeColorWithColor(context, [UIColor greenColor].CGColor);
    CGContextStrokeRect(context, CGRectMake(0, rect.size.height - 1, rect.size.width, 1));
}
//史前图腾
- (UILabel *)lineLabel{
    if (!_lineLabel) {
        _lineLabel = [UILabel new];
        _lineLabel.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 1);
        _lineLabel.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:_lineLabel];
    }
    return _lineLabel;
}
+ (NSString *)identifier{
    return NSStringFromClass([self class]);
}

@end
