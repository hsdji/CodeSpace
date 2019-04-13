//
//  ViewController.m
//  CodeSpace
//
//  Created by spf on 2019/4/11.
//  Copyright © 2019 spf. All rights reserved.
//

#import "ViewController.h"
#import "DataTool.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,strong)UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView reloadData];
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
       cell   = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    NSDictionary *dic = [DataTool getDefaultData][indexPath.section][indexPath.row];
    cell.textLabel.text = [dic valueForKey:@"title"];
    cell.detailTextLabel.text = [dic valueForKey:@"subTitle"];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [DataTool getDefaultData][section].count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [DataTool getDefaultData].count;
}



-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *dic = [DataTool getDefaultData][indexPath.section][indexPath.row];
    UIViewController *class = (UIViewController *)[NSClassFromString([dic valueForKey:@"class"]) new];
    class.title =[dic valueForKey:@"classTitle"];
    [self.navigationController pushViewController:class animated:YES];
}



-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.estimatedRowHeight = 0;
        _tableView.estimatedSectionFooterHeight = 0;
        _tableView.estimatedSectionHeaderHeight = 0;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

@end
