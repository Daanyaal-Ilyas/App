using Android.App;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using AndroidApp = Android.App.Application;
using Xamarin.Forms;
using Android.Graphics;
using AndroidX.Core.App;

[assembly: Dependency(typeof(App.Droid.AndroidNotificationManagers))]

namespace App.Droid
{
        class AndroidNotificationManagers : INotifificationManager
        {
            const string channelId = "default";
            const string channelName = "Default";
            const string channelDescription = "The default channel for notifications.";
            const int pendingIntentId = 0;
            public const string TitleKey = "title";
            public const string MessageKey = "message";
            bool channelInitialized = false;
            int messageId = -1;
            NotificationManager manager;
            public event EventHandler NotificationReceived;

            public void Initialize()
            {
                CreateNotificationChannel();
            }

        public int ScheduleNotification(string title, string message)
        {
            if (!channelInitialized)
            {
                CreateNotificationChannel();
            }
            messageId++;

            Intent intent = new Intent(AndroidApp.Context, typeof(MainActivity));
            intent.PutExtra(TitleKey, title);
            intent.PutExtra(MessageKey, message);

            PendingIntentFlags flags = Build.VERSION.SdkInt >= BuildVersionCodes.S ? PendingIntentFlags.Immutable : PendingIntentFlags.UpdateCurrent;
            PendingIntent pendingIntent = PendingIntent.GetActivity(AndroidApp.Context, pendingIntentId, intent, flags);

            NotificationCompat.Builder builder = new NotificationCompat.Builder(AndroidApp.Context, channelId)
                .SetContentIntent(pendingIntent)
                .SetContentTitle(title)
                .SetContentText(message)
                .SetLargeIcon(BitmapFactory.DecodeResource(AndroidApp.Context.Resources, Resource.Drawable.xamagonBlue))
                .SetSmallIcon(Resource.Drawable.xamagonBlue)
                .SetDefaults((int)NotificationDefaults.Sound | (int)NotificationDefaults.Vibrate)
                .SetPriority(NotificationCompat.PriorityHigh)
                .SetAutoCancel(true)
                .SetVisibility(NotificationCompat.VisibilityPublic);

            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
            {
                builder.SetCategory(NotificationCompat.CategoryMessage);
            }

            Notification notification = builder.Build();
            manager.Notify(messageId, notification);
            return messageId;
        }


        public void ReceiveNotification(string title, string message)
            {
                var args = new NotificationEventArgs()
                {
                    Title = title,
                    Message = message,
                };


                NotificationReceived?.Invoke(null, args);
            }

        void CreateNotificationChannel()
        {
            manager = (NotificationManager)AndroidApp.Context.GetSystemService(AndroidApp.NotificationService);

            if (Build.VERSION.SdkInt >= BuildVersionCodes.O)
            {
                var channelNameJava = new Java.Lang.String(channelName);
                var channel = new NotificationChannel(channelId, channelNameJava, NotificationImportance.High)
                {
                    Description = channelDescription
                };
                manager.CreateNotificationChannel(channel);
            }
            channelInitialized = true;
        }

    }
}