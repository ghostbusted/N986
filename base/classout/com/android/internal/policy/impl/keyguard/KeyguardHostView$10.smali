.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1486
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$10;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V

    .line 1490
    return-void
.end method
