//
//  DestinationDetails.h
//  Navigation Controller
//
//  Created by Daniel on 8/4/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PayPalMobile.h"//For PayPal

@interface DestinationDetails : UIViewController<PayPalPaymentDelegate>

@property NSString *destinationTitle;
@property NSString *destinationDescription;
@property NSString *destinationPhoto;

@property (strong, nonatomic) IBOutlet UIImageView *imgDestination;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;

@property (strong, nonatomic) IBOutlet UILabel *lblDescription;

/*@property (strong, nonatomic) IBOutlet UIImageView *imgDestination;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblDescription;*/

@end
