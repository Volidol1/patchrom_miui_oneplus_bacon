.class Lcom/android/internal/app/PlatLogoActivity$3;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x0

    .line 170
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "egg_mode"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "egg_mode"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 178
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x10808000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_cm"

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #getter for: Lcom/android/internal/app/PlatLogoActivity;->mIsCM:Z
    invoke-static {v4}, Lcom/android/internal/app/PlatLogoActivity;->access$000(Lcom/android/internal/app/PlatLogoActivity;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.internal.category.PLATLOGO"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$3;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 188
    const/4 v1, 0x1

    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "PlatLogoActivity"

    const-string v2, "Couldn\'t catch a break."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
