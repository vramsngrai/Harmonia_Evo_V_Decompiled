.class public Lcom/android/internal/telephony/IccCardStatus;
.super Ljava/lang/Object;
.source "IccCardStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardStatus$PinState;,
        Lcom/android/internal/telephony/IccCardStatus$CardState;
    }
.end annotation


# static fields
.field static final CARD_MAX_APPS:I = 0x8


# instance fields
.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IccCardApplication;",
            ">;"
        }
    .end annotation
.end field

.field private mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

.field private mCdmaSubscriptionAppIndex:I

.field private mGsmUmtsSubscriptionAppIndex:I

.field private mImsSubscriptionAppIndex:I

.field private mNumApplications:I

.field private mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addApplication(Lcom/android/internal/telephony/IccCardApplication;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getApplication(I)Lcom/android/internal/telephony/IccCardApplication;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mApplications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccCardApplication;

    return-object v0
.end method

.method public getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    return-object v0
.end method

.method public getCdmaSubscriptionAppIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    return v0
.end method

.method public getGsmUmtsSubscriptionAppIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    return v0
.end method

.method public getImsSubscriptionAppIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    return v0
.end method

.method public getNumApplications()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    return v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/IccCardStatus$PinState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    return-object v0
.end method

.method public setCardState(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_CardState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    :goto_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_NOT_INITIALIZED:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCdmaSubscriptionAppIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    return-void
.end method

.method public setGsmUmtsSubscriptionAppIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    return-void
.end method

.method public setImsSubscriptionAppIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    return-void
.end method

.method public setNumApplications(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    return-void
.end method

.method public setUniversalPinState(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_PinState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    :goto_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccCardState {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mCardState:Lcom/android/internal/telephony/IccCardStatus$CardState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mUniversalPinState:Lcom/android/internal/telephony/IccCardStatus$PinState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",num_apps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mNumApplications:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",gsm_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    if-ge v2, v4, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, ",cmda_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    if-ge v2, v4, :cond_3

    iget v2, p0, Lcom/android/internal/telephony/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "null"

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v2, ",ism_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccCardStatus;->mImsSubscriptionAppIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method