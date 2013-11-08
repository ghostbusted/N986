.class public final Lcom/android/internal/policy/impl/keyguard/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;,
        Lcom/android/internal/policy/impl/keyguard/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PowerOffAlarm"


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

.field public enabled:Z

.field public hour:I

.field public id:I

.field public label:Ljava/lang/String;

.field public minutes:I

.field public silent:Z

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Alarm$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Alarm$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    .line 232
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->hour:I

    .line 233
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->minutes:I

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->vibrate:Z

    .line 235
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    .line 236
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    .line 237
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    .line 238
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 9
    .parameter "c"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    .line 191
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_5e

    move v1, v2

    :goto_14
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->enabled:Z

    .line 192
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->hour:I

    .line 193
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->minutes:I

    .line 194
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    .line 195
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    .line 196
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3d

    move v3, v2

    :cond_3d
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->vibrate:Z

    .line 197
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    .line 198
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, alertString:Ljava/lang/String;
    const-string v1, "silent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 200
    const-string v1, "PowerOffAlarm"

    const-string v3, "Alarm is marked as silent"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->silent:Z

    .line 214
    :cond_5d
    :goto_5d
    return-void

    .end local v0           #alertString:Ljava/lang/String;
    :cond_5e
    move v1, v3

    .line 191
    goto :goto_14

    .line 203
    .restart local v0       #alertString:Ljava/lang/String;
    :cond_60
    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6e

    .line 204
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    .line 209
    :cond_6e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_5d

    .line 210
    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    goto :goto_5d
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .parameter "p"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_52

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->enabled:Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->hour:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->minutes:I

    .line 221
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_54

    move v0, v1

    :goto_38
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->vibrate:Z

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_56

    :goto_4f
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->silent:Z

    .line 227
    return-void

    :cond_52
    move v0, v2

    .line 218
    goto :goto_12

    :cond_54
    move v0, v2

    .line 223
    goto :goto_38

    :cond_56
    move v1, v2

    .line 226
    goto :goto_4f
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 254
    instance-of v2, p1, Lcom/android/internal/policy/impl/keyguard/Alarm;

    if-nez v2, :cond_6

    .line 256
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 255
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/Alarm;

    .line 256
    .local v0, other:Lcom/android/internal/policy/impl/keyguard/Alarm;
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 242
    :cond_c
    const v0, 0x20500f5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    goto :goto_13
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 249
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm{alert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daysOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", silent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->silent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->enabled:Z

    if-eqz v0, :cond_41

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->daysOfWeek:Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->time:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->vibrate:Z

    if-eqz v0, :cond_43

    move v0, v1

    :goto_2c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/Alarm;->silent:Z

    if-eqz v0, :cond_45

    :goto_3d
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void

    :cond_41
    move v0, v2

    .line 57
    goto :goto_c

    :cond_43
    move v0, v2

    .line 62
    goto :goto_2c

    :cond_45
    move v1, v2

    .line 65
    goto :goto_3d
.end method
