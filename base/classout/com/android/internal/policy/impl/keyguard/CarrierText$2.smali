.class synthetic Lcom/android/internal/policy/impl/keyguard/CarrierText$2;
.super Ljava/lang/Object;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 194
    invoke-static {}, Lcom/android/internal/telephony/IccCardConstants$State;->values()[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_e9

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_e6

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_e3

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_e0

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_dd

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_da

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_d7

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_d5

    .line 116
    :goto_62
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->values()[Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    :try_start_6b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_76} :catch_d3

    :goto_76
    :try_start_76
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_81} :catch_d1

    :goto_81
    :try_start_81
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8c} :catch_cf

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_97} :catch_cd

    :goto_97
    :try_start_97
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a2} :catch_cb

    :goto_a2
    :try_start_a2
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_ad} :catch_c9

    :goto_ad
    :try_start_ad
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b8} :catch_c7

    :goto_b8
    :try_start_b8
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_c5

    :goto_c4
    return-void

    :catch_c5
    move-exception v0

    goto :goto_c4

    :catch_c7
    move-exception v0

    goto :goto_b8

    :catch_c9
    move-exception v0

    goto :goto_ad

    :catch_cb
    move-exception v0

    goto :goto_a2

    :catch_cd
    move-exception v0

    goto :goto_97

    :catch_cf
    move-exception v0

    goto :goto_8c

    :catch_d1
    move-exception v0

    goto :goto_81

    :catch_d3
    move-exception v0

    goto :goto_76

    .line 194
    :catch_d5
    move-exception v0

    goto :goto_62

    :catch_d7
    move-exception v0

    goto/16 :goto_56

    :catch_da
    move-exception v0

    goto/16 :goto_4b

    :catch_dd
    move-exception v0

    goto/16 :goto_40

    :catch_e0
    move-exception v0

    goto/16 :goto_35

    :catch_e3
    move-exception v0

    goto/16 :goto_2a

    :catch_e6
    move-exception v0

    goto/16 :goto_1f

    :catch_e9
    move-exception v0

    goto/16 :goto_14
.end method
