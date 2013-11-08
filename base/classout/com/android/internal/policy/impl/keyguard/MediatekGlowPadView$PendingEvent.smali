.class Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;
.super Ljava/lang/Object;
.source "MediatekGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingEvent"
.end annotation


# instance fields
.field eventX:I

.field eventY:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

.field velocityX:F

.field velocityY:F


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView$PendingEvent;-><init>(Lcom/android/internal/policy/impl/keyguard/MediatekGlowPadView;)V

    return-void
.end method
