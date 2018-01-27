//
//  ViewController.m
//  cglottery
//
//  Created by OD INTERNATIONAL 3 on 1/27/18.
//  Copyright © 2018 OD INTERNATIONAL 3. All rights reserved.
//

#import "ViewController.h"
#import "CYFunction.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"成功彩票";
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 5;
    }
    
    return 0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
//        UITableViewCell * headerCell = [tableView dequeueReusableCellWithIdentifier:@"header"];
//        return headerCell;
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"lineCell"];
        
        cell.textLabel.text = [NSString stringWithFormat:@"线路%ld -- 点击链接", (long)indexPath.row + 1];
        int ping = indexPath.row == 0 ? 48 : [CYFunction getRandomPing];
        
        cell.detailTextLabel.text = [NSString stringWithFormat:@"%d - ms", ping];
        
        cell.detailTextLabel.textColor = [UIColor greenColor];
        
        if (ping > 600) {
            cell.detailTextLabel.textColor = [UIColor orangeColor];
        }
        if (ping > 1200) {
            cell.detailTextLabel.textColor = [UIColor redColor];
        }
        
        return cell;
        
    }
    return nil;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [CYFunction openWebWithURL:[NSURL URLWithString:@"http://cgcp88.com"]];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 90.0;
    }
    return 0.0;
}


@end
