.class Lcom/android/CSDFunctionG/audiotest$2;
.super Ljava/lang/Object;
.source "audiotest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/CSDFunctionG/audiotest;->PassorFail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/audiotest;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/audiotest;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/CSDFunctionG/audiotest$2;->this$0:Lcom/android/CSDFunctionG/audiotest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 350
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_Instruct:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 352
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$2;->this$0:Lcom/android/CSDFunctionG/audiotest;

    iget v0, v0, Lcom/android/CSDFunctionG/audiotest;->g_mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$2;->this$0:Lcom/android/CSDFunctionG/audiotest;

    #getter for: Lcom/android/CSDFunctionG/audiotest;->run1btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/audiotest;->access$100(Lcom/android/CSDFunctionG/audiotest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$2;->this$0:Lcom/android/CSDFunctionG/audiotest;

    #getter for: Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/audiotest;->access$200(Lcom/android/CSDFunctionG/audiotest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 356
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$2;->this$0:Lcom/android/CSDFunctionG/audiotest;

    iget v0, v0, Lcom/android/CSDFunctionG/audiotest;->g_mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 360
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$2;->this$0:Lcom/android/CSDFunctionG/audiotest;

    #getter for: Lcom/android/CSDFunctionG/audiotest;->run2btn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/CSDFunctionG/audiotest;->access$200(Lcom/android/CSDFunctionG/audiotest;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 361
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->recbtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$2;->this$0:Lcom/android/CSDFunctionG/audiotest;

    iget v0, v0, Lcom/android/CSDFunctionG/audiotest;->g_mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/CSDFunctionG/audiotest$2;->this$0:Lcom/android/CSDFunctionG/audiotest;

    invoke-virtual {v0}, Lcom/android/CSDFunctionG/audiotest;->finish()V

    .line 368
    sget-object v0, Lcom/android/CSDFunctionG/audiotest;->tv_NextStep:Landroid/widget/TextView;

    const v1, 0x7f060007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
