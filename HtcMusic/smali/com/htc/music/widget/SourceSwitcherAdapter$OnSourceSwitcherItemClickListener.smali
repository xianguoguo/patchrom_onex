.class public Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;
.super Ljava/lang/Object;
.source "SourceSwitcherAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/widget/SourceSwitcherAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSourceSwitcherItemClickListener"
.end annotation


# instance fields
.field mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

.field mContext:Landroid/content/Context;

.field mHistoryManager:Lcom/htc/music/util/HistoryManager;

.field mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)V
    .locals 1
    .parameter "context"
    .parameter "sourceSwitcherAdapter"

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;-><init>(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;Lcom/htc/music/util/HistoryManager;)V
    .locals 2
    .parameter "context"
    .parameter "sourceSwitcherAdapter"
    .parameter "categorySwitcherAdapter"
    .parameter "historyManager"

    .prologue
    const/4 v0, 0x0

    .line 270
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mContext:Landroid/content/Context;

    .line 259
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 260
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 261
    iput-object v0, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 271
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "context and sourceSwitcherAdapter shouldn\'t be null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    iput-object p1, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mContext:Landroid/content/Context;

    .line 276
    iput-object p2, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    .line 277
    iput-object p3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    .line 278
    iput-object p4, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    .line 279
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v7, 0x1

    .line 284
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    if-eqz v3, :cond_0

    .line 292
    if-ltz p3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v3, v3, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    array-length v3, v3

    if-gt v3, p3, :cond_3

    .line 293
    :cond_2
    const-string v3, "[SourceSwitcherAdapter]"

    const-string v4, "click position out of bound!!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_3
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;

    iget-object v3, v3, Lcom/htc/music/widget/SourceSwitcherAdapter;->mSources:[Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;

    aget-object v1, v3, p3

    .line 298
    .local v1, redirectSource:Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;
    move-object v2, v1

    .line 299
    .local v2, source:Lcom/htc/music/util/SourceItem;
    iget-boolean v3, v1, Lcom/htc/music/widget/SourceSwitcherAdapter$RedirectSourceItem;->mRedirect:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    if-eqz v3, :cond_4

    .line 302
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v4, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;

    invoke-virtual {v3, v4, v5}, Lcom/htc/music/util/HistoryManager;->getLastCategoryItem(Landroid/content/Context;Lcom/htc/music/widget/CategorySwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v2

    .line 305
    :cond_4
    iget-object v3, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v4, "StartNewActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 306
    .local v0, forceStartNewActivity:Z
    if-eqz v0, :cond_5

    .line 307
    iget-object v3, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const-string v4, "ShowActivityTitle"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 312
    :cond_5
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v3, :cond_6

    .line 313
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v5, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;IZ)V

    goto :goto_0

    .line 319
    :cond_6
    iget-object v3, p0, Lcom/htc/music/widget/SourceSwitcherAdapter$OnSourceSwitcherItemClickListener;->mContext:Landroid/content/Context;

    iget-object v4, v2, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
