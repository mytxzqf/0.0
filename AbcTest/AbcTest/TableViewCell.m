//
//  TableViewCell.m
//  AbcTest
//
//  Created by 张清峰 on 2017/4/24.
//  Copyright © 2017年 mytx.zqf. All rights reserved.
//

#import "TableViewCell.h"
#define RGB(a,b,c,d) [UIColor colorWithRed:a/255.0 green:b/255.0 blue:c/255.0 alpha:d]
#define Width [UIScreen mainScreen].bounds.size.width
#define Height [UIScreen mainScreen].bounds.size.height
@implementation TableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.scroll = [UIScrollView new];
        self.scroll.pagingEnabled = YES;
        self.scroll.contentSize = CGSizeMake(Width * 3, 120);
        
        self.view1 = [UIView new];
        self.view1.backgroundColor = RGB(arc4random()%256, arc4random()%256, arc4random()%256, 1);;
        [self.scroll addSubview:self.view1];
        
        self.view2 = [UIView new];
        self.view2.backgroundColor = RGB(arc4random()%256, arc4random()%256, arc4random()%256, 1);;
        [self.scroll addSubview:self.view2];

        self.view3 = [UIView new];
        self.view3.backgroundColor = RGB(arc4random()%256, arc4random()%256, arc4random()%256, 1);;
        [self.scroll addSubview:self.view3];

        
        [self.contentView addSubview:self.scroll];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.scroll.frame = CGRectMake(0, 20, Width, 120);
    self.view1.frame = CGRectMake(0, 0, Width, 120);
    self.view2.frame = CGRectMake(Width, 0, Width, 120);
    self.view3.frame = CGRectMake(Width * 2, 0, Width, 120);

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
