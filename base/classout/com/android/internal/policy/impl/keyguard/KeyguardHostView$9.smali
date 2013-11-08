.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$TransportCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->initializeTransportControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 2
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerAttached()V
    .registers 3

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->post(Ljava/lang/Runnable;)Z

    .line 1350
    return-void
.end method

.method public onListenerDetached()V
    .registers 3

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->removeTransportFromWidgetPager()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1342
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->post(Ljava/lang/Runnable;)Z

    .line 1344
    :cond_15
    return-void
.end method

.method public onPlayStateChanged()V
    .registers 3

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->post(Ljava/lang/Runnable;)Z

    .line 1355
    return-void
.end method
