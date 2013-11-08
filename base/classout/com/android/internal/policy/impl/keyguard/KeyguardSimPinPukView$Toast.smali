.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Toast"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;
    }
.end annotation


# static fields
.field static final LOCAL_LOGV:Z = false

.field static final LOCAL_TAG:Ljava/lang/String; = "Toast"


# instance fields
.field final mContext:Landroid/content/Context;

.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/INotificationManager;

.field final mTN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

.field mView:Landroid/view/View;

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mHandler:Landroid/os/Handler;

    .line 1005
    const/16 v0, 0x51

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mGravity:I

    .line 1010
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mContext:Landroid/content/Context;

    .line 1011
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mTN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    .line 1012
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mY:I

    .line 1013
    return-void
.end method

.method private getService()Landroid/app/INotificationManager;
    .registers 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mService:Landroid/app/INotificationManager;

    if-eqz v0, :cond_7

    .line 1057
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mService:Landroid/app/INotificationManager;

    .line 1060
    :goto_6
    return-object v0

    .line 1059
    :cond_7
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mService:Landroid/app/INotificationManager;

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mService:Landroid/app/INotificationManager;

    goto :goto_6
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;
    .registers 8
    .parameter "context"
    .parameter "text"

    .prologue
    .line 1016
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;-><init>(Landroid/content/Context;)V

    .line 1018
    .local v1, result:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1019
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x10900e4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1020
    .local v3, v:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1021
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iput-object v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    .line 1025
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mTN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->hide()V

    .line 1051
    return-void
.end method

.method public show()V
    .registers 6

    .prologue
    .line 1032
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mView:Landroid/view/View;

    if-nez v3, :cond_c

    .line 1033
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "setView must have been called"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1035
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 1036
    .local v1, service:Landroid/app/INotificationManager;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, pkg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->mTN:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    .line 1039
    .local v2, tn:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;
    const/4 v3, 0x0

    :try_start_19
    invoke-interface {v1, v0, v2, v3}, Landroid/app/INotificationManager;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 1043
    :goto_1c
    return-void

    .line 1040
    :catch_1d
    move-exception v3

    goto :goto_1c
.end method
