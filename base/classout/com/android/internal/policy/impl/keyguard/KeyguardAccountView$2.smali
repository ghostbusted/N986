.class Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->asyncCheckPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_84
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_5} :catch_42
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_58
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_5} :catch_6e

    move-result-object v3

    if-nez v3, :cond_17

    .line 300
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 306
    :goto_16
    return-void

    .line 288
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-interface {v3, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 289
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 290
    .local v1, result:Landroid/os/Bundle;
    const-string v3, "booleanResult"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 291
    .local v2, verified:Z
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    :try_end_33
    .catchall {:try_start_17 .. :try_end_33} :catchall_84
    .catch Landroid/accounts/OperationCanceledException; {:try_start_17 .. :try_end_33} :catch_42
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_33} :catch_58
    .catch Landroid/accounts/AuthenticatorException; {:try_start_17 .. :try_end_33} :catch_6e

    .line 300
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 293
    .end local v1           #result:Landroid/os/Bundle;
    .end local v2           #verified:Z
    :catch_42
    move-exception v0

    .line 294
    .local v0, e:Landroid/accounts/OperationCanceledException;
    :try_start_43
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_84

    .line 300
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 295
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_58
    move-exception v0

    .line 296
    .local v0, e:Ljava/io/IOException;
    :try_start_59
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_84

    .line 300
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 297
    .end local v0           #e:Ljava/io/IOException;
    :catch_6e
    move-exception v0

    .line 298
    .local v0, e:Landroid/accounts/AuthenticatorException;
    :try_start_6f
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    const/4 v4, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;Z)V
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_84

    .line 300
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :catchall_84
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v4

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAccountView$2;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    throw v3
.end method
