.class final Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;
.super Ljava/lang/Object;
.source "Alarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DaysOfWeek"
.end annotation


# static fields
.field private static DAY_MAP:[I

.field private static DAY_TO_BIT_MASK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 273
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_2a

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->DAY_MAP:[I

    .line 284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->DAY_TO_BIT_MASK:Ljava/util/HashMap;

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->DAY_MAP:[I

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 287
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->DAY_TO_BIT_MASK:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 289
    :cond_29
    return-void

    .line 273
    :array_2a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(I)V
    .registers 2
    .parameter "days"

    .prologue
    .line 294
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    .line 296
    return-void
.end method

.method private isSet(I)Z
    .registers 5
    .parameter "day"

    .prologue
    const/4 v0, 0x1

    .line 346
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private toString(Landroid/content/Context;ZZ)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "showNever"
    .parameter "forAccessibility"

    .prologue
    const/4 v8, 0x1

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v5, ret:Ljava/lang/StringBuilder;
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    if-nez v6, :cond_1b

    .line 311
    if-eqz p2, :cond_18

    const v6, 0x20500f3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 342
    :goto_17
    return-object v6

    .line 311
    :cond_18
    const-string v6, ""

    goto :goto_17

    .line 316
    :cond_1b
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2d

    .line 317
    const v6, 0x20500f2

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_17

    .line 321
    :cond_2d
    const/4 v0, 0x0

    .local v0, dayCount:I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    .line 322
    .local v2, days:I
    :goto_30
    if-lez v2, :cond_3b

    .line 323
    and-int/lit8 v6, v2, 0x1

    if-ne v6, v8, :cond_38

    add-int/lit8 v0, v0, 0x1

    .line 324
    :cond_38
    shr-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 328
    :cond_3b
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 329
    .local v3, dfs:Ljava/text/DateFormatSymbols;
    if-nez p3, :cond_44

    if-gt v0, v8, :cond_6d

    :cond_44
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, dayList:[Ljava/lang/String;
    :goto_48
    const/4 v4, 0x0

    .local v4, i:I
    :goto_49
    const/4 v6, 0x7

    if-ge v4, v6, :cond_72

    .line 335
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    shl-int v7, v8, v4

    and-int/2addr v6, v7

    if-eqz v6, :cond_6a

    .line 336
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v6, v6, v4

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v0, v0, -0x1

    .line 338
    if-lez v0, :cond_6a

    const v6, 0x20500f4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 334
    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 329
    .end local v1           #dayList:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_6d
    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    .line 342
    .restart local v1       #dayList:[Ljava/lang/String;
    .restart local v4       #i:I
    :cond_72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_17
.end method


# virtual methods
.method public getBooleanArray()[Z
    .registers 5

    .prologue
    const/4 v3, 0x7

    .line 388
    new-array v1, v3, [Z

    .line 389
    .local v1, ret:[Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v3, :cond_f

    .line 390
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 392
    :cond_f
    return-object v1
.end method

.method public getCoded()I
    .registers 2

    .prologue
    .line 373
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    return v0
.end method

.method public getNextAlarm(Ljava/util/Calendar;)I
    .registers 7
    .parameter "c"

    .prologue
    const/4 v4, 0x7

    .line 404
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    if-nez v3, :cond_7

    .line 405
    const/4 v1, -0x1

    .line 418
    :cond_6
    return v1

    .line 408
    :cond_7
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x7

    .line 410
    .local v2, today:I
    const/4 v0, 0x0

    .line 411
    .local v0, day:I
    const/4 v1, 0x0

    .line 412
    .local v1, dayCount:I
    :goto_11
    if-ge v1, v4, :cond_6

    .line 413
    add-int v3, v2, v1

    rem-int/lit8 v0, v3, 0x7

    .line 414
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public getSetDays()Ljava/util/HashSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 378
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1d

    .line 379
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 380
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->DAY_MAP:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 383
    :cond_1d
    return-object v1
.end method

.method public isRepeatSet()Z
    .registers 2

    .prologue
    .line 396
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public set(IZ)V
    .registers 5
    .parameter "day"
    .parameter "set"

    .prologue
    const/4 v1, 0x1

    .line 361
    if-eqz p2, :cond_a

    .line 362
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    .line 366
    :goto_9
    return-void

    .line 364
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    goto :goto_9
.end method

.method public set(Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;)V
    .registers 3
    .parameter "dow"

    .prologue
    .line 369
    iget v0, p1, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    .line 370
    return-void
.end method

.method public setDayOfWeek(IZ)V
    .registers 6
    .parameter "dayOfWeek"
    .parameter "set"

    .prologue
    .line 356
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->DAY_TO_BIT_MASK:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 357
    .local v0, bitIndex:I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->set(IZ)V

    .line 358
    return-void
.end method

.method public toAccessibilityString(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DaysOfWeek{mDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->mDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "showNever"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->toString(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
