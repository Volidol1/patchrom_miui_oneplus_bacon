.class Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaDisabledWithScanState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 519
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 520
    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    .line 521
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    .line 587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDisabledTimestamp:J

    sub-long v1, v3, v5

    .line 588
    .local v1, delaySoFar:J
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 589
    const/4 v3, 0x0

    .line 600
    :goto_0
    return v3

    .line 592
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiController msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deferred for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/wifi/WifiController;->access$3500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 596
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 597
    .local v0, deferredMsg:Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 598
    iget v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 599
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mReEnableDelayMillis:J
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$2100(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 600
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 526
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setOperationalMode(I)V

    .line 528
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDisabledTimestamp:J

    .line 531
    iget v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    .line 533
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 537
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 583
    :goto_0
    return v0

    .line 539
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 541
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_0

    .line 543
    iget v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    .line 545
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mHaveDeferredEnable:Z

    :cond_2
    :goto_1
    move v0, v1

    .line 583
    goto :goto_0

    .line 548
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mDeviceIdle:Z
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$600(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 549
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #calls: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceActive()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1300(Lcom/android/server/wifi/WifiController;)V

    goto :goto_1

    .line 551
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #calls: Lcom/android/server/wifi/WifiController;->checkLocksAndTransitionWhenDeviceIdle()V
    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->access$1400(Lcom/android/server/wifi/WifiController;)V

    goto :goto_1

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 558
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$2900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 561
    :cond_5
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3000(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 567
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_2

    .line 568
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;Landroid/os/Message;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v2

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 573
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->mDeferredEnableSerialNumber:I

    if-eq v0, v2, :cond_6

    .line 574
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "DEFERRED_TOGGLE ignored due to serial mismatch"

    #calls: Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto :goto_1

    .line 577
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v2, "DEFERRED_TOGGLE handled"

    #calls: Lcom/android/internal/util/StateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->access$3400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v2, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 537
    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
