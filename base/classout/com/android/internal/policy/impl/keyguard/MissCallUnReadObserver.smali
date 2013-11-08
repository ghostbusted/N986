.class public Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;
.super Lcom/android/internal/policy/impl/keyguard/UnReadObserver;
.source "MissCallUnReadObserver.java"


# static fields
.field private static final CALL_LOG_CLASS_NAME:Ljava/lang/String; = "com.android.contacts.activities.DialtactsActivity"

.field private static final CALL_LOG_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field private static final DBG:Z = true

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field private static final MISS_CALL_PROJECTION:[Ljava/lang/String; = null

.field private static final MISS_CALL_SELECTION:Ljava/lang/String; = "(new = ? AND type = ? AND is_read = ? AND date >= "

.field private static final MISS_CALL_SELECTION_ARGS:[Ljava/lang/String; = null

.field public static final MISS_CALL_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "MissCallUnReadObserver"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 25
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_URI:Landroid/net/Uri;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "simid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_PROJECTION:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V
    .registers 5
    .parameter "handler"
    .parameter "newEventView"
    .parameter "createTime"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    .line 33
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_SELECTION_ARGS:[Ljava/lang/String;

    return-object v0
.end method

.method private getDefaultIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts"

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 69
    const-string v1, "MissCallUnReadObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLaunchIntent intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-object v0
.end method


# virtual methods
.method public getLaunchIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->getDefaultIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public refreshUnReadNumber()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method
