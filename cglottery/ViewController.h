//
//  ViewController.h
//  cglottery
//
//  Created by OD INTERNATIONAL 3 on 1/27/18.
//  Copyright © 2018 OD INTERNATIONAL 3. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *contentView;

@end

