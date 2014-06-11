//
//  ViewController.m
//  ImageRotationTest
//
//  Created by Joe Cerra on 6/11/14.
//  Copyright (c) 2014 Joe Cerra. All rights reserved.
//

#import "ViewController.h"

#import "UIImage+Rotating.h"



@interface ViewController ()

@property(strong,nonatomic) UIButton* btn;

@property(strong,nonatomic) UIImageView* iv;

@end


@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"photo" ofType:@"jpg"];
    UIImage* image = [UIImage imageWithContentsOfFile:path];
    
    _iv = [[UIImageView alloc] initWithImage:image];
    [self.view addSubview:_iv];
    
    _btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [_btn setTitle:@"Flip" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(flip) forControlEvents:UIControlEventTouchUpInside];
    [_btn sizeToFit];
    _btn.frame = CGRectMake(20, 20, 100, 100);
    [self.view addSubview:_btn];
}

- (void)flip {
    _iv.image = [_iv.image horizontalFlip];
}

@end
