//
//  ViewController.m
//  DJAutoLayoutButton
//
//  Created by world on 16/11/16.
//  Copyright © 2016年 Dujiao. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+AutolayoutExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor greenColor];
    button.frame = CGRectMake(50, 100, 100, 100);
    [button setTitle:@"HOME" forState:UIControlStateNormal];
    [button.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"icon_addplayer.png"] forState:UIControlStateNormal];
    [button layoutButtonWithImagePositionType:UIBUttonImagePositionTop space:5];
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
