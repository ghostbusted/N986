.class Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;
.super Landroid/os/AsyncTask;
.source "MissCallUnReadObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->refreshUnReadNumber()V
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
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 10
    .parameter "params"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->access$000()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(new = ? AND type = ? AND is_read = ? AND date >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;

    iget-wide v4, v4, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->mCreateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->access$100()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 42
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 43
    .local v6, count:I
    if-eqz v7, :cond_42

    .line 45
    :try_start_3b
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_5f

    move-result v6

    .line 47
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_42
    const-string v0, "MissCallUnReadObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshUnReadNumber count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 47
    :catchall_5f
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->upateNewEventNumber(I)V

    .line 57
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
