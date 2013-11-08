.class public Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;
.super Landroid/widget/LinearLayout;
.source "MediatekCarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$2;,
        Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediatekCarrierText"

.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mCarrierDivider:Landroid/widget/TextView;

.field private mCarrierGeminiView:Landroid/widget/TextView;

.field private mCarrierView:Landroid/widget/TextView;

.field private mIKeyguardPLMNCapitalize:Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;

.field private mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

.field private mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 171
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 173
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 174
    const v1, 0x207000b

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 178
    :goto_20
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 181
    const-class v1, Lcom/mediatek/common/policy/IOperatorSIMString;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/policy/IOperatorSIMString;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    .line 182
    const-class v1, Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mIKeyguardPLMNCapitalize:Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;

    .line 183
    return-void

    .line 176
    :cond_42
    const v1, 0x207000a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_20
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Ljava/lang/String;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextGeminiForSearchNetwork(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextForSearchNetwork(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    move-result-object v0

    return-object v0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 356
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    move v0, v2

    .line 357
    .local v0, plmnValid:Z
    :goto_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2e

    move v1, v2

    .line 358
    .local v1, spnValid:Z
    :goto_10
    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    .end local p0
    :cond_2b
    :goto_2b
    return-object p0

    .end local v0           #plmnValid:Z
    .end local v1           #spnValid:Z
    .restart local p0
    :cond_2c
    move v0, v3

    .line 356
    goto :goto_9

    .restart local v0       #plmnValid:Z
    :cond_2e
    move v1, v3

    .line 357
    goto :goto_10

    .line 360
    .restart local v1       #spnValid:Z
    :cond_30
    if-nez v0, :cond_2b

    .line 362
    if-eqz v1, :cond_36

    move-object p0, p1

    .line 363
    goto :goto_2b

    .line 365
    :cond_36
    const-string p0, ""

    goto :goto_2b
.end method

.method private getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9
    .parameter "simState"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const v4, 0x10402fb

    .line 249
    if-nez p2, :cond_b

    if-nez p3, :cond_b

    .line 250
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getDefaultPlmn()Ljava/lang/CharSequence;

    move-result-object p2

    .line 253
    :cond_b
    const/4 v0, 0x0

    .line 254
    .local v0, carrierText:Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    move-result-object v1

    .line 255
    .local v1, status:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$MediatekCarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b2

    .line 303
    :goto_1b
    const-string v2, "MediatekCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierTextForSimState simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PLMN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SPN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " carrierText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-object v0

    .line 258
    :pswitch_52
    invoke-static {p2, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 259
    goto :goto_1b

    .line 262
    :pswitch_57
    invoke-static {p2, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    goto :goto_1b

    .line 266
    :pswitch_5c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mContext:Landroid/content/Context;

    const v3, 0x1040307

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 268
    goto :goto_1b

    .line 275
    :pswitch_6a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 278
    goto :goto_1b

    .line 281
    :pswitch_77
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    goto :goto_1b

    .line 285
    :pswitch_83
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 288
    goto :goto_1b

    .line 291
    :pswitch_90
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104030a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 294
    goto/16 :goto_1b

    .line 297
    :pswitch_a1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040308

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1b

    .line 255
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_52
        :pswitch_52
        :pswitch_57
        :pswitch_5c
        :pswitch_6a
        :pswitch_77
        :pswitch_83
        :pswitch_90
        :pswitch_a1
    .end packed-switch
.end method

.method private getDefaultPlmn()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    .registers 5
    .parameter "simState"

    .prologue
    .line 323
    if-nez p1, :cond_5

    .line 324
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    .line 352
    :goto_4
    return-object v1

    .line 327
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_19

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_2c

    :cond_19
    const/4 v0, 0x1

    .line 333
    .local v0, missingAndNotProvisioned:Z
    :goto_1a
    if-eqz v0, :cond_1e

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 334
    :cond_1e
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 352
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 327
    .end local v0           #missingAndNotProvisioned:Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1a

    .line 336
    .restart local v0       #missingAndNotProvisioned:Z
    :pswitch_2e
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 338
    :pswitch_31
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 340
    :pswitch_34
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 342
    :pswitch_37
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 344
    :pswitch_3a
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 346
    :pswitch_3d
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 348
    :pswitch_40
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 350
    :pswitch_43
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_4

    .line 334
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
    .end packed-switch
.end method

.method private isWifiOnlyDevice()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 407
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "simMessage"
    .parameter "emergencyCallMessage"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 313
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 315
    .end local p1
    :cond_c
    return-object p1
.end method

.method private showOrHideCarrier()V
    .registers 9

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, sim1Missing:Z
    const/4 v1, 0x0

    .line 421
    .local v1, sim2Missing:Z
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->isWifiOnlyDevice()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 422
    const-string v2, "MediatekCarrierText"

    const-string v3, "showOrHideCarrier wifi only device, hide all"

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 425
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    :cond_23
    :goto_23
    return-void

    .line 427
    :cond_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-eq v2, v3, :cond_3c

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-eq v2, v3, :cond_3c

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSIMInserted(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 429
    :cond_3c
    const/4 v0, 0x1

    .line 431
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-eq v2, v3, :cond_56

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-eq v2, v3, :cond_56

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isSIMInserted(I)Z

    move-result v2

    if-nez v2, :cond_57

    .line 433
    :cond_56
    const/4 v1, 0x1

    .line 435
    :cond_57
    const-string v2, "MediatekCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSIMOneMissing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mSIMTwoMissing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    if-eqz v0, :cond_139

    if-eqz v1, :cond_139

    .line 437
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    if-eqz v2, :cond_86

    .line 438
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    :cond_86
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    if-eqz v2, :cond_99

    .line 443
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    :cond_99
    :goto_99
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_1a9

    .line 477
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-ne v2, v3, :cond_b4

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 482
    :cond_b4
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-ne v2, v3, :cond_c9

    .line 483
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 487
    :cond_c9
    const-string v2, "MediatekCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showOrHideCarrier mCarrierView.text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCarrierView.visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCarrierDivider.text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCarrierDivider.visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCarrierGeminiView.text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCarrierGeminiView.visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 445
    :cond_139
    if-eqz v0, :cond_15b

    if-nez v1, :cond_15b

    .line 446
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    if-eqz v2, :cond_146

    .line 447
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    :cond_146
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    if-eqz v2, :cond_99

    .line 451
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_99

    .line 454
    :cond_15b
    if-nez v0, :cond_17d

    if-eqz v1, :cond_17d

    .line 455
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    if-eqz v2, :cond_168

    .line 456
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    :cond_168
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 460
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    if-eqz v2, :cond_99

    .line 461
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_99

    .line 464
    :cond_17d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    if-eqz v2, :cond_18d

    .line 465
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_18d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 470
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    if-eqz v2, :cond_99

    .line 471
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_99

    .line 491
    :cond_1a9
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->SimUnknown:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-ne v2, v3, :cond_23

    .line 492
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_23
.end method

.method private updateCarrierTextForSearchNetwork(Ljava/lang/String;)V
    .registers 5
    .parameter "carrierText"

    .prologue
    .line 499
    const-string v0, "MediatekCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCarrierTextForSearchNetwork  carrierText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->isWifiOnlyDevice()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 501
    const-string v0, "MediatekCarrierText"

    const-string v1, "updateCarrierTextForSearchNetwork WifiOnly"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    :goto_2c
    return-void

    .line 504
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method private updateCarrierTextGeminiForSearchNetwork(Ljava/lang/String;I)V
    .registers 6
    .parameter "carrierText"
    .parameter "simId"

    .prologue
    .line 510
    const-string v0, "MediatekCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCarrierTextGeminiForSearchNetwork carrierText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->isWifiOnlyDevice()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 512
    const-string v0, "MediatekCarrierText"

    const-string v1, "updateCarrierTextGeminiForSearchNetwork WifiOnly"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :goto_36
    return-void

    .line 515
    :cond_37
    if-nez p2, :cond_42

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    :goto_3e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->showOrHideCarrier()V

    goto :goto_36

    .line 518
    :cond_42
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3e
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 226
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 228
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 232
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 234
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const v3, 0x20e001e

    const/4 v2, 0x1

    .line 208
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040549

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 211
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 212
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    .line 213
    const v0, 0x20e0020

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    .line 214
    const v0, 0x20e001f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierDivider:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 222
    :goto_42
    return-void

    .line 219
    :cond_43
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_42
.end method

.method protected updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "simState"
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 186
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-ne v1, v2, :cond_1f

    .line 187
    const-string v1, "MediatekCarrierText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText, searching network now, don\'t interrupt it, simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_1e
    return-void

    .line 190
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    .line 191
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->isWifiOnlyDevice()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 192
    const-string v1, "MediatekCarrierText"

    const-string v2, "updateCarrierText WifiOnly"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e

    .line 196
    :cond_3a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 197
    .local v0, text:Ljava/lang/CharSequence;
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v1, :cond_56

    .line 199
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mIKeyguardPLMNCapitalize:Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;->changedPlmnToCapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_50
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e

    :cond_54
    const/4 v1, 0x0

    goto :goto_50

    .line 201
    :cond_56
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method protected updateCarrierTextGemini(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 10
    .parameter "simState"
    .parameter "plmn"
    .parameter "spn"
    .parameter "simId"

    .prologue
    .line 371
    const-string v2, "MediatekCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCarrierTextGemini, simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", plmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    if-nez p4, :cond_86

    .line 374
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierView:Landroid/widget/TextView;

    .line 375
    .local v1, toSetCarrierView:Landroid/widget/TextView;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-ne v2, v3, :cond_59

    .line 376
    const-string v2, "MediatekCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCarrierTextGemini, searching network now, don\'t interrupt it, simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_58
    return-void

    .line 380
    :cond_59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    .line 390
    :goto_5f
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->showOrHideCarrier()V

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 393
    .local v0, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mIOperatorSIMString:Lcom/mediatek/common/policy/IOperatorSIMString;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;->DELSIM:Lcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;

    invoke-interface {v2, v3, p4, v4}, Lcom/mediatek/common/policy/IOperatorSIMString;->getOperatorSIMString(Ljava/lang/String;ILcom/mediatek/common/policy/IOperatorSIMString$SIMChangedTag;)Ljava/lang/String;

    move-result-object v0

    .line 394
    sget-boolean v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v2, :cond_b0

    .line 396
    if-eqz v0, :cond_ae

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mIKeyguardPLMNCapitalize:Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/policy/IKeyguardPLMNCapitalize;->changedPlmnToCapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_82
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_58

    .line 382
    .end local v0           #text:Ljava/lang/CharSequence;
    .end local v1           #toSetCarrierView:Landroid/widget/TextView;
    :cond_86
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mCarrierGeminiView:Landroid/widget/TextView;

    .line 383
    .restart local v1       #toSetCarrierView:Landroid/widget/TextView;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    if-ne v2, v3, :cond_a7

    .line 384
    const-string v2, "MediatekCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCarrierTextGemini, searching network now, don\'t interrupt it, simState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 388
    :cond_a7
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_5f

    .line 396
    .restart local v0       #text:Ljava/lang/CharSequence;
    :cond_ae
    const/4 v2, 0x0

    goto :goto_82

    .line 398
    :cond_b0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_58
.end method
