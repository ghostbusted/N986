.class Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;
.super Landroid/os/AsyncTask;
.source "MmsUnReadObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->refreshUnReadNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 19
    .parameter "params"

    .prologue
    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mAllInOneCategory:Z

    .line 69
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$002(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;J)J

    .line 71
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    iget-wide v1, v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mCreateTime:J

    const-wide/16 v3, 0x3e8

    div-long v13, v1, v3

    .line 72
    .local v13, queryBaseTime:J
    const/4 v10, 0x0

    .line 73
    .local v10, mmsCount:I
    const/4 v15, 0x0

    .line 74
    .local v15, smsCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$100()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$200()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(read = 0  AND (m_type <> 134 AND m_type <> 136) AND date >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 77
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_93

    .line 79
    :try_start_53
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 80
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 81
    const-string v1, "thread_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 85
    .local v16, threadIdIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$002(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;J)J

    .line 86
    :cond_70
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 87
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 88
    .local v11, newThreadId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$000(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;)J

    move-result-wide v1

    cmp-long v1, v11, v1

    if-eqz v1, :cond_70

    .line 91
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mAllInOneCategory:Z
    :try_end_8f
    .catchall {:try_start_53 .. :try_end_8f} :catchall_17c

    .line 97
    .end local v11           #newThreadId:J
    .end local v16           #threadIdIndex:I
    :cond_8f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    const/4 v9, 0x0

    .line 102
    :cond_93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$300()Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$400()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(type = 1 AND read = 0 AND date >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    iget-wide v5, v5, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mCreateTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 106
    if-eqz v9, :cond_121

    .line 107
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 110
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mAllInOneCategory:Z

    if-eqz v1, :cond_11e

    .line 111
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_182

    .line 112
    const-string v1, "thread_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 113
    .restart local v16       #threadIdIndex:I
    const-wide/16 v7, -0x1

    .line 115
    .local v7, currentThreadId:J
    :cond_ea
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$000(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_105

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    #setter for: Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J
    invoke-static {v1, v7, v8}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$002(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;J)J

    .line 120
    :cond_105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$000(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;)J

    move-result-wide v1

    cmp-long v1, v7, v1

    if-eqz v1, :cond_118

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mAllInOneCategory:Z

    .line 123
    :cond_118
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_11b
    .catchall {:try_start_d4 .. :try_end_11b} :catchall_18a

    move-result v1

    if-nez v1, :cond_ea

    .line 129
    .end local v7           #currentThreadId:J
    .end local v16           #threadIdIndex:I
    :cond_11e
    :goto_11e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_121
    const-string v1, "MmsUnReadObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshUnReadNumber mmsCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smsCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCreateTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    iget-wide v3, v3, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAllInOneCategory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    iget-boolean v3, v3, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mAllInOneCategory:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFirstThreadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    #getter for: Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mFirstThreadId:J
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->access$000(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    add-int v1, v10, v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 97
    :catchall_17c
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    const/4 v9, 0x0

    throw v1

    .line 125
    :cond_182
    :try_start_182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->mAllInOneCategory:Z
    :try_end_189
    .catchall {:try_start_182 .. :try_end_189} :catchall_18a

    goto :goto_11e

    .line 129
    :catchall_18a
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->upateNewEventNumber(I)V

    .line 140
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
