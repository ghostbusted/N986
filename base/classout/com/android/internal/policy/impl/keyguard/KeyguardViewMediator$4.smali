.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private getMessageString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .parameter "message"

    .prologue
    .line 1317
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3a

    .line 1353
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 1319
    :sswitch_7
    const-string v0, "SHOW"

    goto :goto_6

    .line 1321
    :sswitch_a
    const-string v0, "HIDE"

    goto :goto_6

    .line 1323
    :sswitch_d
    const-string v0, "RESET"

    goto :goto_6

    .line 1325
    :sswitch_10
    const-string v0, "VERIFY_UNLOCK"

    goto :goto_6

    .line 1327
    :sswitch_13
    const-string v0, "NOTIFY_SCREEN_OFF"

    goto :goto_6

    .line 1329
    :sswitch_16
    const-string v0, "NOTIFY_SCREEN_ON"

    goto :goto_6

    .line 1331
    :sswitch_19
    const-string v0, "WAKE_WHEN_READY"

    goto :goto_6

    .line 1333
    :sswitch_1c
    const-string v0, "KEYGUARD_DONE"

    goto :goto_6

    .line 1335
    :sswitch_1f
    const-string v0, "KEYGUARD_DONE_DRAWING"

    goto :goto_6

    .line 1337
    :sswitch_22
    const-string v0, "KEYGUARD_DONE_AUTHENTICATING"

    goto :goto_6

    .line 1339
    :sswitch_25
    const-string v0, "SET_HIDDEN"

    goto :goto_6

    .line 1341
    :sswitch_28
    const-string v0, "KEYGUARD_TIMEOUT"

    goto :goto_6

    .line 1343
    :sswitch_2b
    const-string v0, "SHOW_ASSISTANT"

    goto :goto_6

    .line 1345
    :sswitch_2e
    const-string v0, "KEYGUARD_RELAYOUT"

    goto :goto_6

    .line 1347
    :sswitch_31
    const-string v0, "ALARM_BOOT"

    goto :goto_6

    .line 1349
    :sswitch_34
    const-string v0, "RESHOW_ANYWHERE"

    goto :goto_6

    .line 1351
    :sswitch_37
    const-string v0, "MSG_DM_KEYGUARD_UPDATE"

    goto :goto_6

    .line 1317
    :sswitch_data_3a
    .sparse-switch
        0x2 -> :sswitch_7
        0x3 -> :sswitch_a
        0x4 -> :sswitch_d
        0x5 -> :sswitch_10
        0x6 -> :sswitch_13
        0x7 -> :sswitch_16
        0x8 -> :sswitch_19
        0x9 -> :sswitch_1c
        0xa -> :sswitch_1f
        0xb -> :sswitch_22
        0xc -> :sswitch_25
        0xd -> :sswitch_28
        0xe -> :sswitch_2b
        0x73 -> :sswitch_31
        0x74 -> :sswitch_34
        0x3e8 -> :sswitch_2e
        0x3e9 -> :sswitch_37
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1358
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage enter msg name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_10a

    .line 1428
    :goto_23
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage exit msg name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    return-void

    .line 1361
    :sswitch_40
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_23

    .line 1364
    :sswitch_4a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_23

    .line 1367
    :sswitch_50
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_23

    .line 1370
    :sswitch_5a
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_23

    .line 1373
    :sswitch_60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_23

    .line 1376
    :sswitch_66
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    goto :goto_23

    .line 1380
    :sswitch_70
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleWakeWhenReady(II)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;II)V

    goto :goto_23

    .line 1383
    :sswitch_7a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_84

    :goto_80
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V

    goto :goto_23

    :cond_84
    move v0, v1

    goto :goto_80

    .line 1386
    :sswitch_86
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_23

    .line 1389
    :sswitch_8c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_23

    .line 1392
    :sswitch_92
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_9c

    :goto_98
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V

    goto :goto_23

    :cond_9c
    move v0, v1

    goto :goto_98

    .line 1395
    :sswitch_9e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 1396
    :try_start_a1
    const-string v0, "KeyguardViewMediator"

    const-string v2, "doKeyguardLocked, because:KEYGUARD_TIMEOUT"

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1398
    monitor-exit v1

    goto/16 :goto_23

    :catchall_b4
    move-exception v0

    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_a1 .. :try_end_b6} :catchall_b4

    throw v0

    .line 1401
    :sswitch_b7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShowAssistant()V

    goto/16 :goto_23

    .line 1406
    :sswitch_be
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_c9

    :goto_c4
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardReLayout(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V

    goto/16 :goto_23

    :cond_c9
    move v0, v1

    goto :goto_c4

    .line 1409
    :sswitch_cb
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleAlarmBoot()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto/16 :goto_23

    .line 1412
    :sswitch_d2
    const-string v0, "sys.boot.reason"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 1414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-nez v0, :cond_f0

    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1417
    :cond_f0
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;)V

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_23

    .line 1424
    :sswitch_fc
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v0, :cond_107

    :goto_102
    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleDMKeyguardUpdate(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$3000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V

    goto/16 :goto_23

    :cond_107
    move v0, v1

    goto :goto_102

    .line 1359
    nop

    :sswitch_data_10a
    .sparse-switch
        0x2 -> :sswitch_40
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_50
        0x5 -> :sswitch_5a
        0x6 -> :sswitch_60
        0x7 -> :sswitch_66
        0x8 -> :sswitch_70
        0x9 -> :sswitch_7a
        0xa -> :sswitch_86
        0xb -> :sswitch_8c
        0xc -> :sswitch_92
        0xd -> :sswitch_9e
        0xe -> :sswitch_b7
        0x73 -> :sswitch_cb
        0x74 -> :sswitch_d2
        0x3e8 -> :sswitch_be
        0x3e9 -> :sswitch_fc
    .end sparse-switch
.end method
