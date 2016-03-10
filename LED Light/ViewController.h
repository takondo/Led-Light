//
//  ViewController.h
//  LED Light
//
//  Created by 0A3009 on 2016/03/04.
//  Copyright © 2016年 0A3009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController {
    IBOutlet UISwitch *ledLightSwitch;
}

-(IBAction) changeSwitch;

@end

