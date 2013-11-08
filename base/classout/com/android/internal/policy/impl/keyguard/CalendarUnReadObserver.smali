.class public Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;
.super Lcom/android/internal/policy/impl/keyguard/UnReadObserver;
.source "CalendarUnReadObserver.java"


# static fields
.field private static final ACTIVE_ALERTS_SELECTION:Ljava/lang/String; = "(state=? ) AND receivedTime>="

.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String; = null

.field static final ALERT_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDAR_CLASS_NAME:Ljava/lang/String; = "com.android.calendar.AllInOneActivity"

.field private static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.android.calendar"

.field public static final CALENDAR_URL:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "CalendarUnReadObserver"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 22
    sget-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;->CALENDAR_URL:Landroid/net/Uri;

    .line 26
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    .line 28
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "description"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;->ALERT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V
    .registers 5
    .parameter "handler"
    .parameter "newEventView"
    .parameter "createTime"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    .line 45
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getLaunchIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.calendar"

    const-string v3, "com.android.calendar.AllInOneActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method public refreshUnReadNumber()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method
