.class Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryStatus"
.end annotation


# instance fields
.field public final health:I

.field public final level:I

.field public final plugged:I

.field public final status:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .parameter "status"
    .parameter "level"
    .parameter "plugged"
    .parameter "health"

    .prologue
    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->status:I

    .line 251
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 252
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    .line 253
    iput p4, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->health:I

    .line 254
    return-void
.end method


# virtual methods
.method public isBatteryLow()Z
    .registers 3

    .prologue
    .line 281
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isCharged()Z
    .registers 3

    .prologue
    .line 273
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method isPluggedIn()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 261
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eq v1, v0, :cond_f

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
