.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SequenceDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogSequenceManager"
.end annotation


# static fields
.field private static final CLASS_DEBUG:Z = true

.field private static final CLASS_TAG:Ljava/lang/String; = "DialogSequenceManager"


# instance fields
.field private mDialogSequenceObserver:Landroid/database/ContentObserver;

.field private mDialogShowCallbackQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerDialogShowing:Z

.field private mLocked:Z

.field private mOOBEObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2337
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2333
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mInnerDialogShowing:Z

    .line 2335
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mLocked:Z

    .line 2460
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogSequenceObserver:Landroid/database/ContentObserver;

    .line 2494
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mOOBEObserver:Landroid/database/ContentObserver;

    .line 2339
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "DialogSequenceManager DialogSequenceManager()"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    .line 2343
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_sequence_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogSequenceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2345
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oobe_display"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mOOBEObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2347
    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->queryDialogSequenceSeetings()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;)Ljava/util/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2325
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->setLocked(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2325
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->queryOOBEDisplay()I

    move-result v0

    return v0
.end method

.method private enableShow()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2408
    const-string v3, "KeyguardUpdateMonitor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogSequenceManager --enableShow()-- !mDialogShowCallbackQueue.isEmpty() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ab

    move v0, v1

    :goto_18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " !getInnerDialogShowing() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->getInnerDialogShowing()Z

    move-result v0

    if-nez v0, :cond_ae

    move v0, v1

    :goto_29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " !isOtherModuleShowing() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->isOtherModuleShowing()Z

    move-result v0

    if-nez v0, :cond_b1

    move v0, v1

    :goto_3a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "!isAlarmBoot() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_b3

    move v0, v1

    :goto_4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " !isGMSRunning() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isGMSRunning()Z

    move-result v0

    if-nez v0, :cond_b5

    move v0, v1

    :goto_5e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " !isOOBEShowing() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->isOOBEShowing()Z

    move-result v0

    if-nez v0, :cond_b7

    move v0, v1

    :goto_6f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->getInnerDialogShowing()Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->isOtherModuleShowing()Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isGMSRunning()Z

    move-result v0

    if-nez v0, :cond_b9

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->isOOBEShowing()Z

    move-result v0

    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isEncryptMode()Z

    move-result v0

    if-nez v0, :cond_b9

    :goto_aa
    return v1

    :cond_ab
    move v0, v2

    .line 2408
    goto/16 :goto_18

    :cond_ae
    move v0, v2

    goto/16 :goto_29

    :cond_b1
    move v0, v2

    goto :goto_3a

    :cond_b3
    move v0, v2

    goto :goto_4b

    :cond_b5
    move v0, v2

    goto :goto_5e

    :cond_b7
    move v0, v2

    goto :goto_6f

    :cond_b9
    move v1, v2

    .line 2416
    goto :goto_aa
.end method

.method private getInnerDialogShowing()Z
    .registers 2

    .prologue
    .line 2439
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mInnerDialogShowing:Z

    return v0
.end method

.method private getLocked()Z
    .registers 2

    .prologue
    .line 2447
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mLocked:Z

    return v0
.end method

.method private isOOBEShowing()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 2512
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->queryOOBEDisplay()I

    move-result v0

    .line 2514
    .local v0, value:I
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogSequenceManager OOBEObserver--isOOBEShowing()--oobe_display = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    if-ne v0, v1, :cond_20

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private isOtherModuleShowing()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 2424
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->queryDialogSequenceSeetings()I

    move-result v0

    .line 2426
    .local v0, value:I
    const-string v2, "KeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DialogSequenceManager --isOtherModuleShowing()--dialog_sequence_settings = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    if-eqz v0, :cond_21

    if-ne v0, v1, :cond_22

    .line 2429
    :cond_21
    const/4 v1, 0x0

    .line 2431
    :cond_22
    return v1
.end method

.method private queryDialogSequenceSeetings()I
    .registers 5

    .prologue
    .line 2454
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2456
    .local v0, value:I
    return v0
.end method

.method private queryOOBEDisplay()I
    .registers 5

    .prologue
    .line 2488
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oobe_display"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2490
    .local v0, value:I
    return v0
.end method

.method private setInnerDialogShowing(Z)V
    .registers 2
    .parameter "show"

    .prologue
    .line 2435
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mInnerDialogShowing:Z

    .line 2436
    return-void
.end method

.method private setLocked(Z)V
    .registers 2
    .parameter "locked"

    .prologue
    .line 2443
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mLocked:Z

    .line 2444
    return-void
.end method


# virtual methods
.method public handleShowDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2359
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogSequenceManager --handleShowDialog()--enableShow() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->enableShow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->enableShow()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 2362
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->setInnerDialogShowing(Z)V

    .line 2363
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->getLocked()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2364
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;

    .line 2366
    .local v0, dialogCallBack:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogSequenceManager --handleShowDialog()--dialogCallBack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    if-eqz v0, :cond_51

    .line 2369
    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;->show()V

    .line 2380
    .end local v0           #dialogCallBack:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;
    :cond_51
    :goto_51
    return-void

    .line 2373
    :cond_52
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "DialogSequenceManager --handleShowDialog()--System.putInt( dialog_sequence_settings value = 1"

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dialog_sequence_settings"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_51
.end method

.method public reportDialogClose()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2384
    const-string v0, "KeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogSequenceManager --reportDialogClose()--mDialogShowCallbackQueue.isEmpty() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->setInnerDialogShowing(Z)V

    .line 2389
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2391
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "DialogSequenceManager --reportDialogClose()--System.putInt( dialog_sequence_settings value = 0 --setLocked(false)--"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dialog_sequence_settings"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2397
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->setLocked(Z)V

    .line 2401
    :goto_43
    return-void

    .line 2399
    :cond_44
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    goto :goto_43
.end method

.method public requestShowDialog(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogShowCallBack;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 2351
    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "DialogSequenceManager --requestShowDialog()"

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->mDialogShowCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2354
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$DialogSequenceManager;->handleShowDialog()V

    .line 2355
    return-void
.end method
