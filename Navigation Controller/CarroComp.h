//
//  CarroComp.h
//  Navigation Controller
//
//  Created by Daniel on 9/2/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DestinationDetails.h"
#import "PayPalMobile.h"//For PayPal
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>



@interface CarroComp : UIViewController<PayPalPaymentDelegate,MFMailComposeViewControllerDelegate>


//Objects
@property (strong, nonatomic) IBOutlet UILabel *lblNumItems;
@property (strong, nonatomic) IBOutlet UILabel *lblPrecioTotal;


@end
