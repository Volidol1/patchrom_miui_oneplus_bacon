.class public Lcom/android/stk/ToneDialog;
.super Landroid/app/Activity;
.source "ToneDialog.java"


# instance fields
.field mIsResponseSent:Z

.field private mSlotId:I

.field mToneStopper:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field player:Lcom/android/stk/TonePlayer;

.field settings:Lcom/android/internal/telephony/cat/ToneSettings;

.field toneMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 41
    iput-object v0, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 42
    iput-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    .line 43
    iput-boolean v1, p0, Lcom/android/stk/ToneDialog;->mIsResponseSent:Z

    .line 44
    iput v1, p0, Lcom/android/stk/ToneDialog;->mSlotId:I

    .line 49
    new-instance v0, Lcom/android/stk/ToneDialog$1;

    invoke-direct {v0, p0}, Lcom/android/stk/ToneDialog$1;-><init>(Lcom/android/stk/ToneDialog;)V

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/stk/ToneDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 130
    :cond_0
    const-string v0, "TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 131
    const-string v0, "TONE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v0, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 132
    const-string v0, "slot_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/stk/ToneDialog;->mSlotId:I

    .line 133
    return-void
.end method

.method private sendResponse(I)V
    .locals 3
    .parameter

    .prologue
    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v1, "slot_id"

    iget v2, p0, Lcom/android/stk/ToneDialog;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/stk/StkAppService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/stk/ToneDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/ToneDialog;->mIsResponseSent:Z

    .line 142
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string v4, "vibrator"

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    .line 72
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/stk/ToneDialog;->initFromIntent(Landroid/content/Intent;)V

    .line 75
    const v4, 0x1020016

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, title:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const v4, 0x7f030006

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->setContentView(I)V

    .line 80
    const v4, 0x7f070018

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, tv:Landroid/widget/TextView;
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/android/stk/ToneDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .local v0, iv:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 86
    const v4, 0x10803c6

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :goto_0
    new-instance v4, Lcom/android/stk/TonePlayer;

    invoke-direct {v4}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v4, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    .line 93
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    iget-object v5, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v4, v5}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/cat/Tone;)V

    .line 94
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v4}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v1

    .line 95
    .local v1, timeout:I
    if-nez v1, :cond_0

    .line 96
    const/16 v1, 0x7d0

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v5, 0xda

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->settings:Lcom/android/internal/telephony/cat/ToneSettings;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v4, :cond_1

    .line 100
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 102
    :cond_1
    return-void

    .line 88
    .end local v1           #timeout:I
    :cond_2
    iget-object v4, p0, Lcom/android/stk/ToneDialog;->toneMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 107
    iget-boolean v0, p0, Lcom/android/stk/ToneDialog;->mIsResponseSent:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mToneStopper:Landroid/os/Handler;

    const/16 v1, 0xda

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->stop()V

    .line 111
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->player:Lcom/android/stk/TonePlayer;

    invoke-virtual {v0}, Lcom/android/stk/TonePlayer;->release()V

    .line 112
    iget-object v0, p0, Lcom/android/stk/ToneDialog;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 113
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 119
    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/android/stk/ToneDialog;->sendResponse(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/stk/ToneDialog;->finish()V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
