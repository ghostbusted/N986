.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
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
    .line 775
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2
    .parameter "securityVerified"

    .prologue
    .line 809
    return-void
.end method

.method public getFailedAttempts()I
    .registers 2

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public hasOnDismissAction()Z
    .registers 2

    .prologue
    .line 824
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .registers 2

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .registers 1

    .prologue
    .line 795
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .registers 1

    .prologue
    .line 791
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .registers 2
    .parameter "action"

    .prologue
    .line 787
    return-void
.end method

.method public showBackupSecurity()V
    .registers 1

    .prologue
    .line 783
    return-void
.end method

.method public updateClipChildren(Z)V
    .registers 2
    .parameter "clipChildren"

    .prologue
    .line 819
    return-void
.end method

.method public updateKeyguardLayerVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 814
    return-void
.end method

.method public userActivity(J)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 779
    return-void
.end method