//
//  ViewController.m
//  AbcTest
//
//  Created by 张清峰 on 2017/4/24.
//  Copyright © 2017年 mytx.zqf. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

#define ReuseID @"reuseID"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
{
    NSInteger _section;
}
@property (nonatomic,strong)UITableView *table;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.table = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.table.delegate = self;
    _section = 10;
    self.table.dataSource = self;
    [self.view addSubview:self.table];
    [self.table registerClass:[TableViewCell class] forCellReuseIdentifier:ReuseID];
    self.table.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.table.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _section;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ReuseID forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath {

    return @"删除";
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    _section --;
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
