.class abstract Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;
.super Ljava/lang/Thread;
.source "KeyguardSimPinPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPinPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field private mResult:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "pin"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 541
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPuk:Ljava/lang/String;

    .line 543
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "pin"
    .parameter "simId"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 545
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPuk:Ljava/lang/String;

    .line 547
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter "puk"
    .parameter "pin"
    .parameter "simId"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 550
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    .line 551
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPuk:Ljava/lang/String;

    .line 552
    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mResult:Z

    return v0
.end method


# virtual methods
.method abstract onSimCheckResponse(Z)V
.end method

.method public run()V
    .registers 7

    .prologue
    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 560
    .local v1, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckSimPin, mSimId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 562
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_59

    .line 563
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPinGemini(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mResult:Z

    .line 578
    :cond_4e
    :goto_4e
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->post(Ljava/lang/Runnable;)Z

    .line 590
    .end local v1           #updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :goto_58
    return-void

    .line 565
    .restart local v1       #updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :cond_59
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_4e

    .line 566
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v5, v5, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->supplyPukGemini(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mResult:Z
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_4e

    .line 583
    .end local v1           #updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :catch_7e
    move-exception v0

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->post(Ljava/lang/Runnable;)Z

    goto :goto_58

    .line 570
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    :cond_8a
    :try_start_8a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_a9

    .line 571
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mResult:Z

    goto :goto_4e

    .line 573
    :cond_a9
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;

    iget v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_4e

    .line 574
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;->mResult:Z
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_c9} :catch_7e

    goto :goto_4e
.end method
