//
//  SecondViewController.m
//  NetworkMiniProject(107)
//
//  Created by Mijeong Jeon on 6/22/16.
//  Copyright © 2016 Mijeong Jeon. All rights reserved.
//

#import "SecondViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
// ***********************
// Pod_SDWebImage (URL에 있는 이미지를 imageView에 가져와준다!!)
// ***********************

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [imageView sd_setImageWithURL:self.imageURL placeholderImage:nil];
    
    [self.view addSubview:imageView];
    [imageView setContentMode:UIViewContentModeScaleAspectFit];

    [self.navigationItem setTitle:self.imageName];
 
// ***********************
// Apple_NSURLSession
// ***********************

    //    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    //    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    //
    //    NSURLSessionTask *task = [[NSURLSession sharedSession] dataTaskWithURL:self.imageURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    //
    //    if (data) {
    //        UIImage *image = [UIImage imageWithData:data];
    //        if (image) {
    //            dispatch_async(dispatch_get_main_queue(), ^{
    //                [imageView setImage:image];
    //            });
    //        }
    //    }
    //
    //}];
    //    [task resume];
    //    [self.view addSubview:imageView];
    //    
    //    [self.navigationItem setTitle:self.imageName];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
