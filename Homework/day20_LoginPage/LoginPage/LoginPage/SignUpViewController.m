//
//  SignUpViewController.m
//  LoginPage
//
//  Created by Mijeong Jeon on 6/2/16.
//  Copyright © 2016 Mijeong Jeon. All rights reserved.
//

#import "SignUpViewController.h"
#import "DataCenter.h"
#import "MainPageViewController.h"

@interface SignUpViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *IdTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (strong, nonatomic) UITextField *tempTextField;

@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _IdTextField.delegate = self;
    _IdTextField.tag = 1;
    _emailTextField.delegate = self;
    _emailTextField.tag = 2;
    _passwordTextField.delegate = self;
    _passwordTextField.tag = 3;
}

// 엔터 클릭시 다음 칸으로 이동
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField.tag == 1 && textField.text.length> 0) {
        [_emailTextField becomeFirstResponder];
    }
    if (textField.tag == 2 && textField.text.length> 0) {
        [_passwordTextField becomeFirstResponder];
    }
    if (textField.tag == 3 && textField.text.length > 0) {
        [_nextButton becomeFirstResponder];
    }
    return NO;
}

// 가입 완료 버튼(NEXT)
- (IBAction)addUserInfoButton:(id)sender {
    [[DataCenter sharedInstance] addUserInfoWithID:_IdTextField.text andEmail:_emailTextField.text andPassword:_passwordTextField.text];
  
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