.class Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)V
    .registers 4
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const v0, 0x10203b4

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 343
    const v0, 0x10203ab

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 344
    const v0, 0x10203ac

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 345
    const v0, 0x10203ad

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 346
    const v0, 0x10203ae

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 347
    const v0, 0x10203af

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 348
    const v0, 0x10203b0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 349
    const v0, 0x10203b1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 350
    const v0, 0x10203b2

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 351
    const v0, 0x10203b3

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 352
    const v0, 0x102027c

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .registers 4
    .parameter "v"

    .prologue
    .line 396
    const/4 v0, -0x1

    .line 397
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 398
    const/4 v0, 0x0

    .line 418
    :cond_6
    :goto_6
    return v0

    .line 399
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_d

    .line 400
    const/4 v0, 0x1

    goto :goto_6

    .line 401
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_13

    .line 402
    const/4 v0, 0x2

    goto :goto_6

    .line 403
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_19

    .line 404
    const/4 v0, 0x3

    goto :goto_6

    .line 405
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1f

    .line 406
    const/4 v0, 0x4

    goto :goto_6

    .line 407
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_25

    .line 408
    const/4 v0, 0x5

    goto :goto_6

    .line 409
    :cond_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2b

    .line 410
    const/4 v0, 0x6

    goto :goto_6

    .line 411
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_31

    .line 412
    const/4 v0, 0x7

    goto :goto_6

    .line 413
    :cond_31
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_38

    .line 414
    const/16 v0, 0x8

    goto :goto_6

    .line 415
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 416
    const/16 v0, 0x9

    goto :goto_6
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_24

    .line 382
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPinText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->goToLockScreen()V

    .line 393
    :cond_23
    :goto_23
    return-void

    .line 388
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 389
    .local v0, digit:I
    if-ltz v0, :cond_23

    .line 390
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard_obsolete/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 391
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->reportDigit(I)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/keyguard_obsolete/SimPukUnlockScreen;I)V

    goto :goto_23
.end method
