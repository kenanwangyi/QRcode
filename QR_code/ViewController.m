//
//  ViewController.m
//  QR_code
//
//  Created by 伏董 on 15/12/2.
//  Copyright © 2015年 伏董. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeGenerator.h"
@interface ViewController ()

@end






@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *str = @"http://www.baidu.com";
    
    UIImage *image = [QRCodeGenerator qrImageForString:str imageSize:300.0f];
    UIImageView *iv = [[UIImageView alloc] initWithFrame:CGRectMake(10, 100, 300, 300)];
    iv.image = image;
    [self.view addSubview:iv];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
