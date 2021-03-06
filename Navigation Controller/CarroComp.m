//
//  CarroComp.m
//  Navigation Controller
//
//  Created by Daniel on 9/2/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import "CarroComp.h"


@interface CarroComp ()

@property (nonatomic, strong, readwrite) PayPalConfiguration *payPalConfiguration; //For PayPal

@end

@implementation CarroComp

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
    self.lblNumItems.text      = [NSString stringWithFormat:@"%d", Contador1];
    self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador1];
    
   
    /////////////////////////////////////////////////////////////////////////////////
    if(destinationEstadosarmador == 0)
        
    {
        Contador2 =Contador2+50;
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
        
        
    }
    else if(destinationEstadosarmador == 1)
    {
        Contador2 =Contador2+40;
        //payment.amount = [[NSDecimalNumber alloc] initWithString:@"40.00"];
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
    }
    
    else if(destinationEstadosarmador == 2)
    {
        Contador2 =Contador2+60;
        //payment.amount = [[NSDecimalNumber alloc] initWithString:@"60.00"];
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
    }
    
    else if(destinationEstadosarmador == 3)
    {
        Contador2 =Contador2+80;
        //payment.amount = [[NSDecimalNumber alloc] initWithString:@"80.00"];
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
    }
    

    
    else if(destinationEstadosarmador == 4)
    {
        Contador2 =Contador2+70;
        
        //payment.amount = [[NSDecimalNumber alloc] initWithString:@"70.00"];
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
    }
    
    
    ///////////////////////////////
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Start out working with the test environment! When you are ready, switch to PayPalEnvironmentProduction.
    [PayPalMobile preconnectWithEnvironment:PayPalEnvironmentNoNetwork];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)PagarTodo  {
    
    // Create a PayPalPayment
    PayPalPayment *payment = [[PayPalPayment alloc] init];
    
    // Amount, currency, and description
    
    //payment.amount = [[NSDecimalNumber alloc] initWithString:@"39.95"];
    
    //payment.amount = testStringPrecio;
    
    /////////////////////////////////////////////////////////////////////////////////
    if(destinationEstadosarmador == 0)
        
    {
        
        
        
        //payment.amount = [[NSDecimalNumber alloc] initWithInt:Contador2];
        
        
        
        
        //NSString stringWithFormat:@"%d",  Contador3];
        
        
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
    
    payment.amount = [[NSDecimalNumber alloc] initWithInt:Contador2];
    //////////////////////////////////////////////////////////////////////////////////
    
    
    payment.currencyCode = @"MXN";
    payment.shortDescription = @"Tu mejor tienda de organicos!!!";
    
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

- (IBAction)QuitarAnterior {
    
    Contador1-=1;
    self.lblNumItems.text      = [NSString stringWithFormat:@"%d", Contador1];
    /////////////////////////////////////////////////////////////////////////////////
    if(destinationEstadosarmador == 0)
        
    {
        Contador2 =Contador2-50;
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
        
        
    }
    else if(destinationEstadosarmador == 1)
    {
        Contador2 =Contador2-40;
        //payment.amount = [[NSDecimalNumber alloc] initWithString:@"40.00"];
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
    }
    
    else if(destinationEstadosarmador == 2)
    {
        Contador2 =Contador2-60;
        //payment.amount = [[NSDecimalNumber alloc] initWithString:@"60.00"];
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
    }
    
    else if(destinationEstadosarmador == 3)
    {
        Contador2 =Contador2-80;
        //payment.amount = [[NSDecimalNumber alloc] initWithString:@"80.00"];
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
    }
    
    
    
    else if(destinationEstadosarmador == 4)
    {
        Contador2 =Contador2-70;
        
        //payment.amount = [[NSDecimalNumber alloc] initWithString:@"70.00"];
        self.lblPrecioTotal.text   = [NSString stringWithFormat:@"%d",  Contador2];
    }
    
    
    ///////////////////////////////


}



- (IBAction)emailButtonPushed:(id)sender {
    
    
    
    // From within your active view controller
    /*
     // From within your active view controller
     if([MFMailComposeViewController canSendMail]) {
     MFMailComposeViewController *mailCont = [[MFMailComposeViewController alloc] init];
     mailCont.mailComposeDelegate = self;
     
     [mailCont setSubject:@"yo!"];
     [mailCont setToRecipients:[NSArray arrayWithObject:@"joel@stackoverflow.com"]];
     [mailCont setMessageBody:@"Don't ever want to give you up" isHTML:NO];
     
     [self presentModalViewController:mailCont animated:YES];
     [mailCont release];
     }
     */
    
    if([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *mailCont = [[MFMailComposeViewController alloc] init];
        mailCont.mailComposeDelegate = self;
        [mailCont setSubject:@"Your email"];
        [mailCont setMessageBody:[@"Your body for this message is " stringByAppendingString:@" this is awesome"] isHTML:NO];
        [self presentViewController:mailCont animated:YES completion:nil];
    }
    
}


// Then implement the delegate method

/*
 - (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
 [self dismissModalViewControllerAnimated:YES];
 }
 */



//- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
//handle any error
// [controller dismissViewControllerAnimated:YES completion:nil];
//}




- (void)showEmail:(NSString*)file {
    
    NSString *emailTitle = @"Great Photo and Doc";
    NSString *messageBody = @"Hey, check this out!";
    NSArray *toRecipents = [NSArray arrayWithObject:@"support@appcoda.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    // Determine the file name and extension
    NSArray *filepart = [file componentsSeparatedByString:@"."];
    NSString *filename = [filepart objectAtIndex:0];
    NSString *extension = [filepart objectAtIndex:1];
    
    // Get the resource path and read the file using NSData
    NSString *filePath = [[NSBundle mainBundle] pathForResource:filename ofType:extension];
    NSData *fileData = [NSData dataWithContentsOfFile:filePath];
    
    // Determine the MIME type
    NSString *mimeType;
    if ([extension isEqualToString:@"jpg"]) {
        mimeType = @"image/jpeg";
    } else if ([extension isEqualToString:@"png"]) {
        mimeType = @"image/png";
    } else if ([extension isEqualToString:@"doc"]) {
        mimeType = @"application/msword";
    } else if ([extension isEqualToString:@"ppt"]) {
        mimeType = @"application/vnd.ms-powerpoint";
    } else if ([extension isEqualToString:@"html"]) {
        mimeType = @"text/html";
    } else if ([extension isEqualToString:@"pdf"]) {
        mimeType = @"application/pdf";
    }
    
    // Add attachment
    [mc addAttachmentData:fileData mimeType:mimeType fileName:filename];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
