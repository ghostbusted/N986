.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;)V
    .registers 2
    .parameter

    .prologue
    .line 1064
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$Toast$TN;->handleShow()V

    .line 1067
    return-void
.end method
