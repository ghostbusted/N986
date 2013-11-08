.class Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMStatus"
.end annotation


# instance fields
.field private mNewSimSlot:I

.field private mSimCount:I

.field private mSimDetectStatus:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;II)V
    .registers 7
    .parameter
    .parameter "simDetectStatus"
    .parameter "simCount"
    .parameter "newSimSlot"

    .prologue
    const/4 v1, 0x0

    .line 1369
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mSimCount:I

    .line 1366
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3400()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mSimDetectStatus:Ljava/lang/String;

    .line 1367
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mNewSimSlot:I

    .line 1370
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mSimDetectStatus:Ljava/lang/String;

    .line 1371
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mSimCount:I

    .line 1372
    iput p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mNewSimSlot:I

    .line 1373
    return-void
.end method


# virtual methods
.method public getNewSimSlot()I
    .registers 2

    .prologue
    .line 1384
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mNewSimSlot:I

    return v0
.end method

.method public getSIMCount()I
    .registers 2

    .prologue
    .line 1380
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mSimCount:I

    return v0
.end method

.method public getSimDetectStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$SIMStatus;->mSimDetectStatus:Ljava/lang/String;

    return-object v0
.end method
