.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field simId:I

.field public final simState:Lcom/android/internal/telephony/IccCardConstants$State;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 466
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 467
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 468
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 4
    .parameter "state"
    .parameter "id"

    .prologue
    .line 470
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 471
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 472
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simId:I

    .line 473
    return-void
.end method

.method static fromIntent(Landroid/content/Intent;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;
    .registers 8
    .parameter "intent"

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, id:I
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 479
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 481
    :cond_15
    const-string v5, "ss"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, stateExtra:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 483
    const-string v5, "simId"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 485
    :cond_28
    const-string v5, "ABSENT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 486
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, absentReason:Ljava/lang/String;
    const-string v5, "PERM_DISABLED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 491
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 519
    .end local v0           #absentReason:Ljava/lang/String;
    .local v3, state:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_40
    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;

    invoke-direct {v5, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;-><init>(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    return-object v5

    .line 493
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_46
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40

    .line 495
    .end local v0           #absentReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_49
    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 496
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40

    .line 497
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_54
    const-string v5, "LOCKED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 498
    const-string v5, "reason"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, lockedReason:Ljava/lang/String;
    const-string v5, "PIN"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 501
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40

    .line 502
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_6d
    const-string v5, "PUK"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 503
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40

    .line 505
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_78
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40

    .line 507
    .end local v2           #lockedReason:Ljava/lang/String;
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_7b
    const-string v5, "NETWORK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 508
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40

    .line 509
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_86
    const-string v5, "LOADED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    const-string v5, "IMSI"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_99

    .line 513
    :cond_96
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40

    .line 514
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_99
    const-string v5, "NOT_READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 515
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40

    .line 517
    .end local v3           #state:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a4
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v3       #state:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_40
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
