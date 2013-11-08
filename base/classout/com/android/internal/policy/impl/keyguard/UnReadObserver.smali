.class public abstract Lcom/android/internal/policy/impl/keyguard/UnReadObserver;
.super Landroid/database/ContentObserver;
.source "UnReadObserver.java"


# static fields
.field static final TAG:Ljava/lang/String; = "UnReadObserver"


# instance fields
.field mAllInOneCategory:Z

.field mCreateTime:J

.field final mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

.field mUnRreadNumber:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V
    .registers 5
    .parameter "handler"
    .parameter "newEventView"
    .parameter "createTime"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 33
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .line 34
    iput-wide p3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mCreateTime:J

    .line 35
    return-void
.end method


# virtual methods
.method public abstract getLaunchIntent()Landroid/content/Intent;
.end method

.method public onChange(Z)V
    .registers 2
    .parameter "selfChange"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->refreshUnReadNumber()V

    .line 39
    return-void
.end method

.method public abstract refreshUnReadNumber()V
.end method

.method public final upateNewEventNumber(I)V
    .registers 4
    .parameter "unreadNumber"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mUnRreadNumber:I

    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    if-eqz v0, :cond_11

    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mNewEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadObserver;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->post(Ljava/lang/Runnable;)Z

    .line 60
    :goto_10
    return-void

    .line 58
    :cond_11
    const-string v0, "UnReadObserver"

    const-string v1, "mNewEventView is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public updateQueryBaseTime(J)V
    .registers 4
    .parameter "newBaseTime"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->mCreateTime:J

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;->upateNewEventNumber(I)V

    .line 66
    return-void
.end method
