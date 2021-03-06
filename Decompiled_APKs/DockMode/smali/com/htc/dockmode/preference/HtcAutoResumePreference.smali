.class public final Lcom/htc/dockmode/preference/HtcAutoResumePreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAutoResumePreference.java"


# static fields
.field private static final DEFAULT_VALUE:Z = false

.field private static final DESKDOCK_AUTO_RESUME:Ljava/lang/String; = "deskdock_auto_resume"

.field public static final KEY:Ljava/lang/String; = "AUTO_RESUME"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->initialize(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->initialize(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 64
    const-string v1, "AUTO_RESUME"

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->setKey(Ljava/lang/String;)V

    .line 66
    :cond_0
    const v1, 0x7f08002a

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->setTitle(I)V

    .line 67
    const v1, 0x7f08002b

    invoke-virtual {p0, v1}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->setSummary(I)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->setPersistent(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "deskdock_auto_resume"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    .local v0, value:Z
    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->setChecked(Z)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/htc/preference/HtcCheckBoxPreference;->onClick()V

    .line 81
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "deskdock_auto_resume"

    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcAutoResumePreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 83
    return-void
.end method
