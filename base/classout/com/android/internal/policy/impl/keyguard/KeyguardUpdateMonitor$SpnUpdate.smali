.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpnUpdate"
.end annotation


# instance fields
.field simId:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 2556
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2557
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    .line 2558
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 2560
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2561
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SpnUpdate;->simId:I

    .line 2562
    return-void
.end method
