.class public Lcom/android/internal/policy/impl/keyguard/EmergencyButton;
.super Landroid/widget/Button;
.source "EmergencyButton.java"


# static fields
.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "EmergencyButton"


# instance fields
.field private mIActionEmergencyDialerExt:Lcom/mediatek/common/policy/IActionEmergencyDialerExt;

.field mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsSecure:Z

.field private mKeyguardSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field private mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSimId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$1;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mSimId:I

    .line 113
    :try_start_d
    const-class v1, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/policy/IKeyguardUtilExt;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_1b

    .line 118
    :goto_1a
    return-void

    .line 114
    :catch_1b
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private eccButtonShouldShow()Z
    .registers 15

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10402ec

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 230
    .local v10, plmnDefaultStr:Ljava/lang/String;
    const-string v11, "EmergencyButton"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "plmnDefaultStr = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v11

    if-eqz v11, :cond_ba

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 233
    .local v6, mPlmn:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 234
    .local v8, mSpn:Ljava/lang/CharSequence;
    if-eqz v6, :cond_a8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a8

    move v1, v0

    .line 235
    .local v1, mPlmnIsNotDefault:Z
    :goto_58
    if-eqz v8, :cond_aa

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_aa

    move v2, v0

    .line 236
    .local v2, mSpnIsNotDefault:Z
    :goto_65
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 237
    .local v7, mPlmnGemini:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpn(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 238
    .local v9, mSpnGemini:Ljava/lang/CharSequence;
    if-eqz v7, :cond_ac

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ac

    move v3, v0

    .line 239
    .local v3, mPlmnGeminiIsNotDefault:Z
    :goto_8a
    if-eqz v9, :cond_ae

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ae

    move v4, v0

    .line 241
    .local v4, mSpnGeminiIsNotDefault:Z
    :goto_97
    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mSimId:I

    if-eqz v11, :cond_9f

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mSimId:I

    if-ne v11, v0, :cond_b0

    .line 242
    :cond_9f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mSimId:I

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/policy/IKeyguardUtilExt;->shouldShowEccButton(ZZZZI)Z

    move-result v5

    .line 256
    .end local v3           #mPlmnGeminiIsNotDefault:Z
    .end local v4           #mSpnGeminiIsNotDefault:Z
    .end local v7           #mPlmnGemini:Ljava/lang/CharSequence;
    .end local v9           #mSpnGemini:Ljava/lang/CharSequence;
    :cond_a7
    :goto_a7
    return v5

    .end local v1           #mPlmnIsNotDefault:Z
    .end local v2           #mSpnIsNotDefault:Z
    :cond_a8
    move v1, v5

    .line 234
    goto :goto_58

    .restart local v1       #mPlmnIsNotDefault:Z
    :cond_aa
    move v2, v5

    .line 235
    goto :goto_65

    .restart local v2       #mSpnIsNotDefault:Z
    .restart local v7       #mPlmnGemini:Ljava/lang/CharSequence;
    .restart local v9       #mSpnGemini:Ljava/lang/CharSequence;
    :cond_ac
    move v3, v5

    .line 238
    goto :goto_8a

    .restart local v3       #mPlmnGeminiIsNotDefault:Z
    :cond_ae
    move v4, v5

    .line 239
    goto :goto_97

    .line 244
    .restart local v4       #mSpnGeminiIsNotDefault:Z
    :cond_b0
    if-nez v1, :cond_b8

    if-nez v2, :cond_b8

    if-nez v3, :cond_b8

    if-eqz v4, :cond_a7

    :cond_b8
    move v5, v0

    goto :goto_a7

    .line 248
    .end local v1           #mPlmnIsNotDefault:Z
    .end local v2           #mSpnIsNotDefault:Z
    .end local v3           #mPlmnGeminiIsNotDefault:Z
    .end local v4           #mSpnGeminiIsNotDefault:Z
    .end local v6           #mPlmn:Ljava/lang/CharSequence;
    .end local v7           #mPlmnGemini:Ljava/lang/CharSequence;
    .end local v8           #mSpn:Ljava/lang/CharSequence;
    .end local v9           #mSpnGemini:Ljava/lang/CharSequence;
    :cond_ba
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v6

    .line 249
    .restart local v6       #mPlmn:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v8

    .line 250
    .restart local v8       #mSpn:Ljava/lang/CharSequence;
    if-eqz v6, :cond_f2

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f2

    move v1, v0

    .line 251
    .restart local v1       #mPlmnIsNotDefault:Z
    :goto_df
    if-eqz v8, :cond_f4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f4

    move v2, v0

    .line 252
    .restart local v2       #mSpnIsNotDefault:Z
    :goto_ec
    if-nez v1, :cond_f0

    if-eqz v2, :cond_a7

    :cond_f0
    move v5, v0

    .line 253
    goto :goto_a7

    .end local v1           #mPlmnIsNotDefault:Z
    .end local v2           #mSpnIsNotDefault:Z
    :cond_f2
    move v1, v5

    .line 250
    goto :goto_df

    .restart local v1       #mPlmnIsNotDefault:Z
    :cond_f4
    move v2, v5

    .line 251
    goto :goto_ec
.end method

.method private fillPhoneExtraInfo(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 185
    const-string v0, "EmergencyButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fillPhoneExtraInfo, intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyguardSecurityModel.getSecurityMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mKeyguardSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mKeyguardSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk1:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_39

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mIActionEmergencyDialerExt:Lcom/mediatek/common/policy/IActionEmergencyDialerExt;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/mediatek/common/policy/IActionEmergencyDialerExt;->addEmergencyDialerExtInfo(Landroid/content/Intent;I)V

    .line 191
    :cond_38
    :goto_38
    return-void

    .line 188
    :cond_39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mKeyguardSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPuk2:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_38

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mIActionEmergencyDialerExt:Lcom/mediatek/common/policy/IActionEmergencyDialerExt;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/mediatek/common/policy/IActionEmergencyDialerExt;->addEmergencyDialerExtInfo(Landroid/content/Intent;I)V

    goto :goto_38
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 130
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 135
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 137
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mKeyguardSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 138
    const-class v2, Lcom/mediatek/common/policy/IActionEmergencyDialerExt;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/policy/IActionEmergencyDialerExt;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mIActionEmergencyDialerExt:Lcom/mediatek/common/policy/IActionEmergencyDialerExt;

    .line 141
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    .line 142
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton$2;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyButton;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    .line 148
    .local v0, phoneState:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    .line 152
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mIsSecure:Z

    .line 155
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 156
    return-void
.end method

.method public setSimId(I)V
    .registers 2
    .parameter "simId"

    .prologue
    .line 268
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mSimId:I

    .line 269
    return-void
.end method

.method public takeEmergencyCallAction()V
    .registers 6

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 165
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 178
    :goto_1a
    return-void

    .line 169
    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 174
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->fillPhoneExtraInfo(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1a
.end method

.method updateEmergencyCallButton(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 13
    .parameter "simState"
    .parameter "phoneState"

    .prologue
    const/4 v5, 0x1

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, enabled:Z
    const/4 v0, 0x2

    if-ne p2, v0, :cond_65

    .line 196
    const/4 v3, 0x1

    .line 213
    :cond_6
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->dmIsLocked()Z

    move-result v6

    .line 215
    .local v6, dmLocked:Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mKeyguardUtilExt:Lcom/mediatek/common/policy/IKeyguardUtilExt;

    invoke-interface {v0}, Lcom/mediatek/common/policy/IKeyguardUtilExt;->shouldShowEmergencyBtnForVoiceOn()Z

    move-result v8

    .line 217
    .local v8, keyguardUtilShowEcc:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->eccButtonShouldShow()Z

    move-result v7

    .line 218
    .local v7, eccShouldShow:Z
    if-nez v3, :cond_22

    if-nez v8, :cond_22

    if-eqz v6, :cond_83

    :cond_22
    if-eqz v7, :cond_83

    move v3, v5

    .line 219
    :goto_25
    const-string v0, "EmergencyButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dmLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keyguardUtilShowEcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eccShouldShow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-boolean v4, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    move-object v1, p0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZZZ)V

    .line 224
    return-void

    .line 197
    .end local v6           #dmLocked:Z
    .end local v7           #eccShouldShow:Z
    .end local v8           #keyguardUtilShowEcc:Z
    :cond_65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSimLocked()Z

    move-result v9

    .line 199
    .local v9, simLocked:Z
    if-eqz v9, :cond_80

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallEnabledWhileSimLocked()Z

    move-result v3

    goto :goto_6

    .line 208
    :cond_80
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->mIsSecure:Z

    goto :goto_6

    .line 218
    .end local v9           #simLocked:Z
    .restart local v6       #dmLocked:Z
    .restart local v7       #eccShouldShow:Z
    .restart local v8       #keyguardUtilShowEcc:Z
    :cond_83
    const/4 v3, 0x0

    goto :goto_25
.end method
