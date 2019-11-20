//
//  ViewController.m
//  OBCycleView
//
//  Created by 李杨 on 2019/11/5.
//  Copyright © 2019 OB. All rights reserved.
//

#import "ViewController.h"
#import "OBCycleView/OBCycleView.h"
@interface ViewController () <OBCycleViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    NSArray * imagesArray = @[@"http://pic34.nipic.com/20131030/2455348_194508648000_2.jpg",
                         @"http://b-ssl.duitang.com/uploads/blog/201401/21/20140121231444_U4kXN.jpeg",
                         @"http://pic25.nipic.com/20121113/9252150_105400798000_2.jpg",
                         @"http://b-ssl.duitang.com/uploads/item/201210/04/20121004231502_NrBQG.jpeg"];
    //    self.images = @[@"four.jpeg",@"two.jpeg",@"one.jpeg"];
    
    OBCycleView * cycleView = [[OBCycleView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 200)];
    cycleView.space = 10;
    cycleView.imagesArray = imagesArray;
    cycleView.placeholderImage = [UIImage imageNamed:@"default_img.jpeg"];
    cycleView.delegate = self;
    [self.view addSubview:cycleView];
    
    
    OBCycleView * cycleViewTwo = [[OBCycleView alloc] initWithFrame:CGRectMake(0, 350, self.view.bounds.size.width, 200)];
    cycleViewTwo.imagesArray = imagesArray;
    [self.view addSubview:cycleViewTwo];
}

- (void)oBCycleView:(OBCycleView *)cycleView itemIndex:(NSInteger)index {
    NSLog(@"==[%ld]",(long)index);
}

@end
