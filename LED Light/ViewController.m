//
//  ViewController.m
//  LED Light
//
//  Created by 0A3009 on 2016/03/04.
//  Copyright © 2016年 0A3009. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)changeSwitch {
    AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if (ledLightSwitch.on == YES) {
        self.view.backgroundColor = [UIColor whiteColor];
        
        [captureDevice lockForConfiguration:NULL];
        captureDevice.torchMode = AVCaptureTorchModeOn;
        [captureDevice unlockForConfiguration];
    }else{
        self.view.backgroundColor = [UIColor blackColor];
        
        [captureDevice lockForConfiguration:NULL];
        captureDevice.torchMode = AVCaptureTorchModeOff;
        [captureDevice unlockForConfiguration];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
