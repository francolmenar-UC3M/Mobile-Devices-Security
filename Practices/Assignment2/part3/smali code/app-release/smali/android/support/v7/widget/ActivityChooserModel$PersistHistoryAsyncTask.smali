.class final Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserModel;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 11

    const/4 v0, 0x0

    aget-object v1, p1, v0

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iget-object v4, v4, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/d/a/c;

    move-result-object v4

    :try_start_1
    invoke-interface {v4, p1, v3}, Lorg/d/a/c;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v5, "UTF-8"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "historical-records"

    invoke-interface {v4, v3, v5}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    const-string v8, "historical-record"

    invoke-interface {v4, v3, v8}, Lorg/d/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    const-string v8, "activity"

    iget-object v9, v7, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v8, v9}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    const-string v8, "time"

    iget-wide v9, v7, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v3, v8, v9}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    const-string v8, "weight"

    iget v7, v7, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v8, v7}, Lorg/d/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    const-string v7, "historical-record"

    invoke-interface {v4, v3, v7}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "historical-records"

    invoke-interface {v4, v3, v0}, Lorg/d/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/d/a/c;

    invoke-interface {v4}, Lorg/d/a/c;->a()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iput-boolean v2, v0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing historical record file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iput-boolean v2, v0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v1, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing historical record file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iput-boolean v2, v0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    sget-object v1, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing historical record file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iput-boolean v2, v0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :catch_3
    :cond_1
    :goto_2
    return-object v3

    :goto_3
    iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    iput-boolean v2, v1, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz p1, :cond_2

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :catch_4
    :cond_2
    throw v0

    :catch_5
    move-exception v0

    sget-object v1, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error writing historical record file: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method