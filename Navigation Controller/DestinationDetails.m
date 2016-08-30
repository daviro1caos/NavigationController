//
//  DestinationDetails.m
//  Navigation Controller
//
//  Created by Daniel on 8/4/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import "DestinationDetails.h"

NSString *testStringPrecio;

@interface DestinationDetails ()

@property (nonatomic, strong, readwrite) PayPalConfiguration *payPalConfiguration; //For PayPal

@end

@implementation DestinationDetails


- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _payPalConfiguration = [[PayPalConfiguration alloc] init];
        
        // See PayPalConfiguration.h for details and default values.
        // Should you wish to change any of the values, you can do so here.
        // For example, if you wish to accept PayPal but not payment card payments, then add:
        
        _payPalConfiguration.acceptCreditCards = YES;
        // Or if you wish to have the user choose a Shipping Address from those already
        // associated with the user's PayPal account, then add:
        _payPalConfiguration.payPalShippingAddressOption = PayPalShippingAddressOptionPayPal;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblTitle.text          = self.destinationTitle;
    self.lblDescription.text    = self.destinationDescription;
    self.imgDestination.image   = [UIImage imageNamed:self.destinationPhoto];
    
    self.lblDescription.numberOfLines = 0;
    [self.lblDescription sizeToFit];
    // Do any additional setup after loading the view.
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


/***************************************For PayPal*********************************/

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Start out working with the test environment! When you are ready, switch to PayPalEnvironmentProduction.
    [PayPalMobile preconnectWithEnvironment:PayPalEnvironmentNoNetwork];
}

// SomeViewController.m

- (IBAction)pay {
    
    // Create a PayPalPayment
    PayPalPayment *payment = [[PayPalPayment alloc] init];
    
    // Amount, currency, and description
    
    //payment.amount = [[NSDecimalNumber alloc] initWithString:@"39.95"];
    
    //payment.amount = testStringPrecio;
    
    /////////////////////////////////////////////////////////////////////////////////
    if(destinationEstadosarmador == 0)
        
    {
     payment.amount = [[NSDecimalNumber alloc] initWithString:@"50.00"];
        
        
    }
    else if(destinationEstadosarmador == 1)
    {

      payment.amount = [[NSDecimalNumber alloc] initWithString:@"40.00"];
    }
    
    else if(destinationEstadosarmador == 2)
    {
        
        payment.amount = [[NSDecimalNumber alloc] initWithString:@"60.00"];
    }
    
    else if(destinationEstadosarmador == 3)
    {
        
        payment.amount = [[NSDecimalNumber alloc] initWithString:@"80.00"];
    }
    
    else if(destinationEstadosarmador == 4)
    {
        
        payment.amount = [[NSDecimalNumber alloc] initWithString:@"70.00"];
    }
    
    
    //////////////////////////////////////////////////////////////////////////////////
   
    
    payment.currencyCode = @"MXN";
    payment.shortDescription = @"La mejor carne del mundo!!!";
    
    // Use the intent property to indicate that this is a "sale" payment,
    // meaning combined Authorization + Capture.
    // To perform Authorization only, and defer Capture to your server,
    // use PayPalPaymentIntentAuthorize.
    // To place an Order, and defer both Authorization and Capture to
    // your server, use PayPalPaymentIntentOrder.
    // (PayPalPaymentIntentOrder is valid only for PayPal payments, not credit card payments.)
    payment.intent = PayPalPaymentIntentSale;
    
    // If your app collects Shipping Address information from the customer,
    // or already stores that information on your server, you may provide it here.
    // payment.shippingAddress = address; // a previously-created PayPalShippingAddress object
    
    // Several other optional fields that you can set here are documented in PayPalPayment.h,
    // including paymentDetails, items, invoiceNumber, custom, softDescriptor, etc.
    
    // Check whether payment is processable.
    if (!payment.processable) {
        // If, for example, the amount was negative or the shortDescription was empty, then
        // this payment would not be processable. You would want to handle that here.
    }
    
    // continued below...
    // ...continued from above
    
    // Create a PayPalPaymentViewController.
    PayPalPaymentViewController *paymentViewController;
    paymentViewController = [[PayPalPaymentViewController alloc] initWithPayment:payment
                                                                   configuration:self.payPalConfiguration
                                                                        delegate:self];
    
    // Present the PayPalPaymentViewController.
    [self presentViewController:paymentViewController animated:YES completion:nil];
}



#pragma mark - PayPalPaymentDelegate methods

- (void)payPalPaymentViewController:(PayPalPaymentViewController *)paymentViewController
                 didCompletePayment:(PayPalPayment *)completedPayment {
    // Payment was processed successfully; send to server for verification and fulfillment.
    [self verifyCompletedPayment:completedPayment];
    
    // Dismiss the PayPalPaymentViewController.
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)payPalPaymentDidCancel:(PayPalPaymentViewController *)paymentViewController {
    // The payment was canceled; dismiss the PayPalPaymentViewController.
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)verifyCompletedPayment:(PayPalPayment *)completedPayment {
    // Send the entire confirmation dictionary
    NSData *confirmation = [NSJSONSerialization dataWithJSONObject:completedPayment.confirmation
                                                           options:0
                                                             error:nil];
    
    // Send confirmation to your server; your server should verify the proof of payment
    // and give the user their goods or services. If the server is not reachable, save
    // the confirmation and try again later.
}

@end
