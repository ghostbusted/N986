.class Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field clientPresent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 405
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 395
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;->clientPresent:Z

    .line 397
    return-void

    .line 396
    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 2
    .parameter "superState"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 392
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 401
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$SavedState;->clientPresent:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    return-void

    .line 402
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method
