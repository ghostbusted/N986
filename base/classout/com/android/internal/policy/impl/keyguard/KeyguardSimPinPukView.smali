.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$CheckSimPinPuk;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;
    }
.end annotation


# static fields
.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4

.field private static final SIMLOCK_TYPE_PIN:I = 0x1

.field private static final SIMLOCK_TYPE_SIMMELOCK:I = 0x2

.field private static final STATE_ENTER_FINISH:I = 0x4

.field private static final STATE_ENTER_NEW:I = 0x2

.field private static final STATE_ENTER_PIN:I = 0x0

.field private static final STATE_ENTER_PUK:I = 0x1

.field private static final STATE_REENTER_NEW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "KeyguardSimPinPukView"

.field static final VERIFY_TYPE_PIN:I = 0x1f5


# instance fields
.field private mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mMoreInfoBtn:Landroid/widget/Button;

.field private mMoreInfoIndicator:Landroid/view/View;

.field private mNewPinText:Ljava/lang/String;

.field private mPINRetryCount:I

.field private mPUKRetryCount:I

.field private mPinText:Landroid/widget/TextView;

.field private mPukEnterState:I

.field private mPukText:Ljava/lang/String;

.field private mSIMCardName:Landroid/widget/TextView;

.field private mSIMCardNamePadding:I

.field private mSb:Ljava/lang/StringBuffer;

.field private mSim1FirstBoot:Z

.field private mSim2FirstBoot:Z

.field private mSim2PINRetryCount:I

.field private mSim2PUKRetryCount:I

.field public mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimCardDialog:Landroid/app/AlertDialog;

.field private volatile mSimCheckInProgress:Z

.field public mSimId:I

.field public mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 75
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    .line 79
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    .line 80
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    .line 81
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    .line 93
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    .line 97
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    .line 151
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 189
    const-class v0, Lcom/mediatek/common/policy/IOperatorSIMString;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/policy/IOperatorSIMString;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dealwithSIMInfoChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSIMCardName(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPinCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/CharSequence;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->setSimLockScreenDone(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->displaySimCardInfo(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Ljava/lang/StringBuffer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private checkPin()V
    .registers 2

    .prologue
    .line 655
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPin(I)V

    .line 656
    return-void
.end method

.method private checkPin(I)V
    .registers 5
    .parameter "simId"

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 660
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_22

    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    .line 662
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$7;->start()V

    .line 710
    :cond_22
    return-void
.end method

.method private checkPuk()V
    .registers 2

    .prologue
    .line 713
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPuk(I)V

    .line 714
    return-void
.end method

.method private checkPuk(I)V
    .registers 6
    .parameter "simId"

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->updatePinEnterScreen()V

    .line 718
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 769
    :cond_8
    :goto_8
    return-void

    .line 721
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 722
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    if-nez v0, :cond_8

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCheckInProgress:Z

    .line 724
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$8;->start()V

    goto :goto_8
.end method

.method private dealwithSIMInfoChanged(I)V
    .registers 13
    .parameter "slotId"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 867
    .local v5, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const/4 v4, 0x0

    .line 868
    .local v4, operName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 869
    .local v0, bkground:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1e

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 871
    int-to-long v6, p1

    :try_start_15
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    :try_end_18
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_18} :catch_78

    move-result-object v0

    .line 877
    :goto_19
    int-to-long v6, p1

    :try_start_1a
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1d} :catch_92

    move-result-object v4

    .line 882
    :cond_1e
    :goto_1e
    const-string v6, "KeyguardSimPinPukView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dealwithSIMInfoChanged, slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", operName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const v6, 0x20e0035

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 884
    .local v2, forText:Landroid/widget/TextView;
    if-nez v4, :cond_bd

    .line 885
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 886
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 887
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 889
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v10, v6, :cond_ad

    .line 890
    const-string v6, "KeyguardSimPinPukView"

    const-string v7, "SIM2 is first reboot"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    .line 892
    const v6, 0x205009b

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 898
    :goto_6d
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 899
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 911
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_77
    :goto_77
    return-void

    .line 872
    .end local v2           #forText:Landroid/widget/TextView;
    :catch_78
    move-exception v1

    .line 873
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "KeyguardSimPinPukView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOptrDrawableBySlot exception, slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 878
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_92
    move-exception v1

    .line 879
    .restart local v1       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "KeyguardSimPinPukView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOptrNameBySlot exception, slotId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 894
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v2       #forText:Landroid/widget/TextView;
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_ad
    const-string v6, "KeyguardSimPinPukView"

    const-string v7, "SIM1 is first reboot"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iput-boolean v10, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    .line 896
    const v6, 0x205009a

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6d

    .line 900
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_bd
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v6, p1, :cond_77

    .line 901
    const-string v6, "KeyguardSimPinPukView"

    const-string v7, "dealwithSIMInfoChanged, we will refresh the SIMinfo"

    invoke-static {v6, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 903
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 904
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    if-eqz v0, :cond_77

    .line 907
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 908
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    invoke-virtual {v6, v7, v9, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_77
.end method

.method private displaySimCardInfo(I)V
    .registers 5
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 352
    .local v0, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    if-nez p1, :cond_17

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSIMInserted(I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 353
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V

    .line 361
    :goto_16
    return-void

    .line 354
    :cond_17
    if-nez p1, :cond_25

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSIMInserted(I)Z

    move-result v1

    if-nez v1, :cond_25

    .line 355
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V

    goto :goto_16

    .line 356
    :cond_25
    if-ne v2, p1, :cond_34

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSIMInserted(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 357
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V

    goto :goto_16

    .line 359
    :cond_34
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V

    goto :goto_16
.end method

.method private dualWithPinOrPukUnlock()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 631
    .local v0, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 632
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-nez v1, :cond_1c

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_28

    :cond_1c
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v3, v1, :cond_48

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_48

    .line 634
    :cond_28
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick, check PIN, mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPin(I)V

    .line 652
    :cond_47
    :goto_47
    return-void

    .line 636
    :cond_48
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-nez v1, :cond_54

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_60

    :cond_54
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v3, v1, :cond_80

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_80

    .line 638
    :cond_60
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick, check PUK, mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPuk(I)V

    goto :goto_47

    .line 641
    :cond_80
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong status, mSimId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 644
    :cond_9b
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_ae

    .line 645
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "onClick, check Pin for single SIM"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPin()V

    goto :goto_47

    .line 647
    :cond_ae
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v2, :cond_47

    .line 648
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "onClick, check PUK for single SIM"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->checkPuk()V

    goto :goto_47
.end method

.method private getRetryPin(I)Ljava/lang/String;
    .registers 8
    .parameter "simId"

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPinCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPINRetryCount:I

    .line 455
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPINRetryCount:I

    packed-switch v0, :pswitch_data_3e

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x205001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPINRetryCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    return-object v0

    .line 457
    :pswitch_3a
    const-string v0, " "

    goto :goto_39

    .line 455
    nop

    :pswitch_data_3e
    .packed-switch -0x1
        :pswitch_3a
    .end packed-switch
.end method

.method private getRetryPinCount(I)I
    .registers 5
    .parameter "simId"

    .prologue
    const/4 v2, -0x1

    .line 435
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 436
    const-string v0, "gsm.sim.retry.pin1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 438
    :goto_c
    return v0

    :cond_d
    const-string v0, "gsm.sim.retry.pin1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_c
.end method

.method private getRetryPuk(I)Ljava/lang/String;
    .registers 8
    .parameter "simId"

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPukCount(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I

    .line 444
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I

    packed-switch v0, :pswitch_data_3e

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x205001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPUKRetryCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    return-object v0

    .line 446
    :pswitch_3a
    const-string v0, " "

    goto :goto_39

    .line 444
    nop

    :pswitch_data_3e
    .packed-switch -0x1
        :pswitch_3a
    .end packed-switch
.end method

.method private getRetryPukCount(I)I
    .registers 5
    .parameter "simId"

    .prologue
    const/4 v2, -0x1

    .line 427
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 428
    const-string v0, "gsm.sim.retry.puk1.2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 430
    :goto_c
    return v0

    :cond_d
    const-string v0, "gsm.sim.retry.puk1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_c
.end method

.method private getSIMCardName(I)V
    .registers 12
    .parameter "slotId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    .line 915
    .local v4, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const/4 v0, 0x0

    .line 916
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 918
    .local v3, s:Ljava/lang/String;
    int-to-long v5, p1

    :try_start_d
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrDrawableBySlot(J)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_10} :catch_5c

    move-result-object v0

    .line 922
    :goto_11
    if-eqz v0, :cond_21

    .line 923
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 924
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    invoke-virtual {v5, v6, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 928
    :cond_21
    int-to-long v5, p1

    :try_start_22
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getOptrNameBySlot(J)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_22 .. :try_end_25} :catch_76

    move-result-object v3

    .line 932
    :goto_26
    const-string v5, "KeyguardSimPinPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mSimId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    if-eqz v3, :cond_90

    .line 935
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    :goto_5b
    return-void

    .line 919
    :catch_5c
    move-exception v1

    .line 920
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "KeyguardSimPinPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSIMCardName::getOptrDrawableBySlot exception, slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 929
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_76
    move-exception v1

    .line 930
    .restart local v1       #e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "KeyguardSimPinPukView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSIMCardName::getOptrNameBySlot exception, slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 936
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_90
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v5, v9, :cond_98

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    if-nez v5, :cond_a0

    :cond_98
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-nez v5, :cond_c0

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    if-eqz v5, :cond_c0

    .line 938
    :cond_a0
    const-string v5, "KeyguardSimPinPukView"

    const-string v6, "getSIMCardName for the first reboot"

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const v5, 0x20e0035

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 940
    .local v2, forText:Landroid/widget/TextView;
    if-ne v9, p1, :cond_b9

    .line 941
    const v5, 0x205009b

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5b

    .line 943
    :cond_b9
    const v5, 0x205009a

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5b

    .line 946
    .end local v2           #forText:Landroid/widget/TextView;
    :cond_c0
    const-string v5, "KeyguardSimPinPukView"

    const-string v6, "getSIMCardName for seaching SIM card"

    invoke-static {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    const v6, 0x2050096

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5b
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_41

    .line 595
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 598
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x1040535

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    const/4 v2, -0x1

    sget-object v3, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;)Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 604
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 605
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_41

    .line 606
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 610
    .end local v0           #msg:Ljava/lang/String;
    :cond_41
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method private isSimLockDisplay(II)Z
    .registers 13
    .parameter "slot"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x1

    const/4 v3, 0x1

    .line 772
    if-gez p1, :cond_7

    .line 795
    :cond_6
    :goto_6
    return v2

    .line 776
    :cond_7
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sim_lock_state_setting"

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 778
    .local v1, simLockState:Ljava/lang/Long;
    move-object v0, v1

    .line 780
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-int/lit8 v6, p1, 0x2

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 781
    if-ne v3, p2, :cond_32

    .line 782
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_6

    move v2, v3

    .line 783
    goto :goto_6

    .line 787
    :cond_32
    const/4 v4, 0x2

    if-ne v4, p2, :cond_49

    .line 788
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    ushr-long/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    and-long/2addr v4, v8

    cmp-long v4, v8, v4

    if-nez v4, :cond_6

    move v2, v3

    .line 790
    goto :goto_6

    :cond_49
    move v2, v3

    .line 795
    goto :goto_6
.end method

.method private popupSIMInfoDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;)V
    .registers 8
    .parameter "status"

    .prologue
    .line 364
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 365
    .local v2, view:Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 366
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$9;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSimPinPukView$SIMStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_9c

    .line 388
    :goto_17
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_53

    .line 389
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 392
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v4, 0x2050099

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, titleText:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    const/4 v4, -0x1

    sget-object v5, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    invoke-interface {v3, v1, v4, v5}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;)Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 397
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 398
    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    .line 400
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 402
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    .end local v1           #titleText:Ljava/lang/String;
    :cond_53
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 403
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 404
    return-void

    .line 368
    :pswitch_5e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 372
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 376
    :pswitch_7c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 380
    :pswitch_8b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20200e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_17

    .line 366
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_6d
        :pswitch_7c
        :pswitch_8b
    .end packed-switch
.end method

.method private setInputInvalidAlertDialog(Ljava/lang/CharSequence;Z)V
    .registers 8
    .parameter "message"
    .parameter "shouldDisplay"

    .prologue
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 409
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_38

    .line 410
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 416
    .local v0, newDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 418
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 424
    .end local v0           #newDialog:Landroid/app/AlertDialog;
    :goto_37
    return-void

    .line 422
    :cond_38
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast;->show()V

    goto :goto_37
.end method

.method private setSimLockScreenDone(II)V
    .registers 9
    .parameter "slot"
    .parameter "type"

    .prologue
    .line 799
    if-gez p1, :cond_3

    .line 822
    :goto_2
    return-void

    .line 803
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->isSimLockDisplay(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 804
    const-string v2, "KeyguardSimPinPukView"

    const-string v3, "setSimLockScreenDone the SimLock display is done"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 808
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 811
    .local v1, simLockState:Ljava/lang/Long;
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 813
    .local v0, bitSet:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-int/lit8 v4, p1, 0x2

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 814
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone1 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/4 v2, 0x2

    if-ne v2, p2, :cond_59

    .line 816
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 818
    :cond_59
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimLockScreenDone2 bitset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 821
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_lock_state_setting"

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_2
.end method

.method private updatePinEnterScreen()V
    .registers 7

    .prologue
    const v5, 0x2050013

    const/4 v4, 0x2

    const v1, 0x20e0035

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 477
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 478
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    if-eqz v0, :cond_33

    .line 479
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x205009b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 486
    :cond_1f
    :goto_1f
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    packed-switch v0, :pswitch_data_12a

    .line 527
    :goto_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 529
    return-void

    .line 480
    :cond_33
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    if-eqz v0, :cond_44

    .line 481
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x205009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1f

    .line 483
    :cond_44
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1f

    .line 488
    :pswitch_50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukText:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 490
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_24

    .line 495
    :cond_88
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050015

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_24

    .line 500
    :pswitch_91
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->validatePin(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 502
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x2050014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_24

    .line 507
    :cond_ce
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x2050090

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_24

    .line 512
    :pswitch_d8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mNewPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d

    .line 513
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 514
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 515
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v2, 0x2050091

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 517
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_24

    .line 519
    :cond_11d
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const-string v1, ""

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_24

    .line 486
    nop

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_50
        :pswitch_91
        :pswitch_d8
    .end packed-switch
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 466
    if-eqz p2, :cond_15

    move v0, v1

    .line 468
    .local v0, pinMinimum:I
    :goto_5
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_17

    .line 470
    :cond_13
    const/4 v1, 0x0

    .line 472
    :goto_14
    return v1

    .line 466
    .end local v0           #pinMinimum:I
    :cond_15
    const/4 v0, 0x4

    goto :goto_5

    .line 472
    .restart local v0       #pinMinimum:I
    :cond_17
    const/4 v1, 0x1

    goto :goto_14
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .registers 2

    .prologue
    .line 227
    const v0, 0x20e003b

    return v0
.end method

.method public hideBouncer(I)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 995
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->hideBouncer(I)V

    .line 996
    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .prologue
    .line 232
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 235
    const v3, 0x20e0048

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 236
    .local v1, ok:Landroid/view/View;
    if-eqz v1, :cond_14

    .line 237
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_14
    const v3, 0x20e003c

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 249
    .local v2, pinDelete:Landroid/view/View;
    if-eqz v2, :cond_31

    .line 250
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 269
    :cond_31
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 270
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 273
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 276
    const v3, 0x20e0046

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 277
    .local v0, dismissButton:Landroid/widget/Button;
    if-eqz v0, :cond_59

    .line 278
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_59
    const v3, 0x205008e

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 305
    const v3, 0x20e003b

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPinText:Landroid/widget/TextView;

    .line 306
    const v3, 0x20e0036

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardName:Landroid/widget/TextView;

    .line 308
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 309
    const v3, 0x20e0037

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    .line 310
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    const v4, 0x2050098

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 311
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v3, 0x20e0039

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    .line 320
    :cond_a1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20b001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSIMCardNamePadding:I

    .line 322
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 331
    return-void
.end method

.method public onResume(I)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_19

    .line 337
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 342
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 343
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 344
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "IME is showing, we should hide it"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 348
    :cond_38
    return-void
.end method

.method public resetState()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 223
    return-void
.end method

.method public sendVerifyResult(IZ)V
    .registers 7
    .parameter "verifyType"
    .parameter "bRet"

    .prologue
    .line 825
    const-string v1, "KeyguardSimPinPukView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVerifyResult verifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bRet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CELLCONNSERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "start_type"

    const-string v3, "response"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 827
    .local v0, retIntent:Landroid/content/Intent;
    if-nez v0, :cond_3b

    .line 828
    const-string v1, "KeyguardSimPinPukView"

    const-string v2, "sendVerifyResult new retIntent failed"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    :goto_3a
    return-void

    .line 831
    :cond_3b
    const-string v1, "verfiy_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    const-string v1, "verfiy_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 833
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3a
.end method

.method public setSimId(I)V
    .registers 9
    .parameter "simId"

    .prologue
    .line 194
    const-string v4, "KeyguardSimPinPukView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSimId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const v4, 0x10202af

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    .line 197
    .local v0, button:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    .line 198
    .local v1, phoneState:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    .line 199
    .local v2, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setSimId(I)V

    .line 200
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 202
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->updateSimState()V

    .line 204
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 206
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_5a

    .line 207
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 208
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 210
    :cond_57
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimCardDialog:Landroid/app/AlertDialog;

    .line 212
    :cond_5a
    const-string v4, "gsm.siminfo.ready"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, siminfoupdate:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 214
    const-string v4, "KeyguardSimPinPukView"

    const-string v5, "siminfo already update, we should read value from the siminfoxxxx"

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dealwithSIMInfoChanged(I)V

    .line 218
    .end local v3           #siminfoupdate:Ljava/lang/String;
    :cond_76
    return-void
.end method

.method public showUsabilityHint()V
    .registers 1

    .prologue
    .line 326
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .registers 11
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    .line 842
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 845
    .local v2, newState:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 846
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_30

    const/4 v1, 0x1

    .line 848
    .local v1, isVoiceCapable:Z
    :goto_1e
    if-eqz v1, :cond_3c

    .line 849
    const/4 v7, 0x2

    if-ne v2, v7, :cond_32

    .line 851
    const v5, 0x10402f2

    .line 852
    .local v5, textId:I
    const v3, 0x20200af

    .line 853
    .local v3, phoneCallIcon:I
    invoke-virtual {p1, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 859
    .end local v3           #phoneCallIcon:I
    :goto_2c
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setText(I)V

    .line 863
    .end local v5           #textId:I
    :goto_2f
    return-void

    .end local v1           #isVoiceCapable:Z
    :cond_30
    move v1, v6

    .line 846
    goto :goto_1e

    .line 855
    .restart local v1       #isVoiceCapable:Z
    :cond_32
    const v5, 0x10402f1

    .line 856
    .restart local v5       #textId:I
    const v0, 0x20200af

    .line 857
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2c

    .line 861
    .end local v0           #emergencyIcon:I
    .end local v5           #textId:I
    :cond_3c
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2f
.end method

.method public updateSimState()V
    .registers 9

    .prologue
    const v7, 0x20e0035

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 952
    const-string v2, "KeyguardSimPinPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimSate, simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSim1FirstBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mSim2FirstBoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 956
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    if-nez v2, :cond_45

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    if-eqz v2, :cond_4f

    .line 957
    :cond_45
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 958
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mMoreInfoIndicator:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 960
    :cond_4f
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getSIMCardName(I)V

    .line 962
    :cond_54
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 963
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 964
    .local v1, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .line 965
    .local v0, state:Lcom/android/internal/telephony/IccCardConstants$State;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v6, v2, :cond_c9

    .line 966
    invoke-virtual {v1, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .end local v0           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2State:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 970
    .restart local v0       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_77
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v0, :cond_d0

    .line 971
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v4, 0x2050011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 972
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPuk(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 973
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    .line 979
    :cond_a9
    :goto_a9
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-ne v6, v2, :cond_103

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim2FirstBoot:Z

    if-eqz v2, :cond_103

    .line 980
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x205009b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 988
    :goto_bd
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 989
    return-void

    .line 968
    :cond_c9
    invoke-virtual {v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    .end local v0           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v0       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_77

    .line 974
    :cond_d0
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v0, :cond_a9

    .line 975
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mContext:Landroid/content/Context;

    const v4, 0x10402e2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 976
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSb:Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getRetryPin(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 977
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPukEnterState:I

    goto :goto_a9

    .line 982
    :cond_103
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    if-nez v2, :cond_118

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSim1FirstBoot:Z

    if-eqz v2, :cond_118

    .line 983
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x205009a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_bd

    .line 986
    :cond_118
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_bd
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 6

    .prologue
    .line 615
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, entry:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 619
    .local v1, updateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->validatePin(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3b

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSimId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_3b

    .line 621
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v3, 0x1040537

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 622
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 627
    :goto_3a
    return-void

    .line 626
    :cond_3b
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;->dualWithPinOrPukUnlock()V

    goto :goto_3a
.end method
