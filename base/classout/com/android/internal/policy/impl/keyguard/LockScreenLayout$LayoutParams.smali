.class public Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "LockScreenLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/LockScreenLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/LockScreenLayout$LayoutParams;->customPosition:Z

    .line 163
    return-void
.end method
