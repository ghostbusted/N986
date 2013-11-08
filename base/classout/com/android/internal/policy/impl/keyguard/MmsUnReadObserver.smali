.class public Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;
.super Lcom/android/internal/policy/impl/keyguard/UnReadObserver;
.source "MmsUnReadObserver.java"


# static fields
.field private static final MMS_CLASS_NAME:Ljava/lang/String; = "com.android.mms.ui.ConversationList"

.field private static final MMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final MMS_QUERY_URI:Landroid/net/Uri; = null

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field public static final MMS_URI:Landroid/net/Uri; = null

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(read = 0  AND (m_type <> 134 AND m_type <> 136) AND date >= "

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0 AND date >= "

.field private static final SMS_QUERY_URI:Landroid/net/Uri; = null

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MmsUnReadObserver"


# instance fields
.field private mFirstThreadId:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_URI:Landroid/net/Uri;

    .line 37
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_QUERY_URI:Landroid/net/Uri;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 47
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->SMS_QUERY_URI:Landroid/net/Uri;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V
    .registers 5
    .parameter "handler"
    .parameter "newEventView"
    .parameter "createTime"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J

    return-wide p1
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_QUERY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->SMS_QUERY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getLaunchIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 145
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mAllInOneCategory:Z

    if-eqz v2, :cond_20

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_20

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v1, v0

    .line 152
    .end local v0           #intent:Landroid/content/Intent;
    .local v1, intent:Ljava/lang/Object;
    :goto_1f
    return-object v1

    .line 150
    .end local v1           #intent:Ljava/lang/Object;
    :cond_20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .restart local v0       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationList"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v1, v0

    .line 152
    .restart local v1       #intent:Ljava/lang/Object;
    goto :goto_1f
.end method

.method public refreshUnReadNumber()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method
