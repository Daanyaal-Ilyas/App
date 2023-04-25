APP

-------------------------------------------------------------------------------------
Emulator Setup 
-------------------------------------------------------------------------------------
1)TOOL > Android > Andriod Device Manager 
2) click  new 
3) make sure its the following 
{
    Name : (your choice)
    Base Device: Pixel 5
    Processor: x86_64
    OS : Andriod 12.0 API 31
}
make sure the API is 31 or less
4) click create
5) Click start 
6) make sure you have Hyper-V enabled 

----------------------------------------------------------------------------------------
Enable Hyper V
----------------------------------------------------------------------------------------
1) open search  
2) type Programs and Features
3) click Turn Windows features on or off
4) Find Hyper V
5) tick it 
6} make sure both Hyper V Management Tools and Hyper V Platform are ticked
7) click ok
----------------------------------------------------------------------------------------
App Requirements
----------------------------------------------------------------------------------------
For NuGet Manager for APP

Microsoft.EntityFrameworkCore Version 3.1.32
NETStandard.Library Version 2.0.3
sqlite-net-pcl Version 1.8.116
Xamarin.Essentials Version 1.7.5
Xamarin.Forms  Version 5.0.0.2578

For NuGet Manager for APP.Android
Xamarin.Android.Support.v7.AppCompat Version 28.0.0.3
Xamarin.Essentials Version 1.7.5
Xamarin.Forms  Version 5.0.0.2578

----------------------------------------------------------------------------------------
Start App
----------------------------------------------------------------------------------------
1) Build Solution 
2) make sure the em is the Andriod 12.0 API 31 one 
3) click Start which will be the play sign next to the em name 