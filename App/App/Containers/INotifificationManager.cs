using System;
using System.Collections.Generic;
using System.Text;

namespace App
{
    public interface INotifificationManager
    {
        event EventHandler NotificationReceived;
        void Initialize();
        int ScheduleNotification(string title, string message);
        void ReceiveNotification(string title, string message);

    }
}
