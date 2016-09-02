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



@interface CarroComp : UIViewController<PayPalPaymentDelegate>


//Objects
@property (strong, nonatomic) IBOutlet UILabel *lblNumItems;
@property (strong, nonatomic) IBOutlet UILabel *lblPrecioTotal;


@end
