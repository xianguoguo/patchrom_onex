.class Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "CarouselHost.java"

# interfaces
.implements Lcom/htc/fragment/widget/CarouselHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private contentView:Landroid/widget/FrameLayout;

.field private dirty:Z

.field private mIntent:Landroid/content/Intent;

.field private final mTag:Ljava/lang/String;

.field private needCheckFakeScreen:Z

.field private tabLabel:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselHost;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1548
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    .line 1552
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->needCheckFakeScreen:Z

    .line 1555
    iput-object p2, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 1558
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1559
    .local v1, component:Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 1560
    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost;->access$1200(Lcom/htc/fragment/widget/CarouselHost;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p3, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1562
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1565
    :cond_0
    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost;->access$1300(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/fragment/widget/CarouselFragment;->getTabContentViewId(Ljava/lang/String;)I

    move-result v2

    .line 1566
    .local v2, containerId:I
    invoke-virtual {p1, v2}, Lcom/htc/fragment/widget/CarouselHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    .line 1567
    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    if-nez v8, :cond_1

    .line 1568
    new-instance v8, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/fragment/app/LocalFragmentManager;->getHost()Landroid/app/Fragment;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;-><init>(Lcom/htc/fragment/widget/CarouselHost;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    .line 1569
    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 1571
    :cond_1
    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1578
    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mHookPanel:Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost;->access$1400(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v9, v10}, Lcom/htc/fragment/widget/Gallery2$HookFrameLayout;->addTab(Ljava/lang/String;Landroid/view/View;)V

    .line 1582
    :cond_2
    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 1583
    .local v4, f:Landroid/app/Fragment;
    if-eqz v4, :cond_5

    .line 1584
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 1585
    .local v3, extras:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 1586
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v3, :cond_4

    .line 1587
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #arguments:Landroid/os/Bundle;
    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1588
    .restart local v0       #arguments:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1589
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 1590
    .local v7, value:Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    const-string v9, "Carousel.UriString://"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1591
    check-cast v7, Ljava/lang/String;

    .end local v7           #value:Ljava/lang/Object;
    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1594
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    :cond_4
    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {p1}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v8

    invoke-virtual {v8, v4, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->setArguments(Landroid/app/Fragment;Landroid/os/Bundle;)V

    .line 1596
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_5
    iput-object p3, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 1597
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/fragment/widget/CarouselHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1543
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;-><init>(Lcom/htc/fragment/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private checkFakeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1792
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->needCheckFakeScreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->tabLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    instance-of v1, v1, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    if-eqz v1, :cond_0

    .line 1793
    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->needCheckFakeScreen:Z

    .line 1795
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->hasFakeView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost$TabContainer;

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->tabLabel:Ljava/lang/String;

    #calls: Lcom/htc/fragment/widget/CarouselHost$TabContainer;->addFakeView(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/fragment/widget/CarouselHost$TabContainer;->access$1600(Lcom/htc/fragment/widget/CarouselHost$TabContainer;Ljava/lang/String;)V

    .line 1803
    sget-boolean v1, Lcom/htc/fragment/widget/CarouselHost;->BACKGROUND_DEBUG:Z

    if-nez v1, :cond_0

    .line 1805
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1806
    .local v0, hostBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 1807
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1810
    :goto_1
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    .line 1809
    :cond_2
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    const v2, 0x2080001

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method compareIntent(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1762
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1763
    .local v2, i1:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1765
    .local v3, i2:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1766
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1767
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1768
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 1771
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1772
    if-eqz v0, :cond_1

    .line 1773
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1774
    .restart local v4       #s:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 1777
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method compareIntent(Ljava/lang/String;)Z
    .locals 3
    .parameter "intentUri"

    .prologue
    const/4 v1, 0x0

    .line 1753
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1758
    :cond_0
    :goto_0
    return v1

    .line 1754
    :catch_0
    move-exception v0

    .line 1756
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    .line 1758
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCacheView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1786
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->checkFakeScreen()V

    .line 1787
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 10

    .prologue
    .line 1639
    iget-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    if-eqz v7, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->tabRemoved()V

    .line 1641
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    .line 1644
    :cond_0
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1645
    .local v2, f:Landroid/app/Fragment;
    if-nez v2, :cond_3

    .line 1646
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1648
    .local v3, fragmentDescription:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1649
    .local v1, extras:Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 1650
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 1651
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #arguments:Landroid/os/Bundle;
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1652
    .restart local v0       #arguments:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1653
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1654
    .local v6, value:Ljava/lang/Object;
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    const-string v8, "Carousel.UriString://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1655
    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/Object;
    const/16 v7, 0x15

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1658
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v7}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1661
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #fragmentDescription:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_4

    .line 1662
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1663
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    const/high16 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setDescendantFocusability(I)V

    .line 1665
    :cond_4
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->checkFakeScreen()V

    .line 1666
    iget-object v7, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->contentView:Landroid/widget/FrameLayout;

    return-object v7
.end method

.method public setLabel(Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    .locals 7
    .parameter "labelRes"

    .prologue
    const/4 v6, 0x0

    .line 1607
    const/4 v3, 0x0

    .line 1609
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v4, v4, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    if-nez v4, :cond_2

    .line 1610
    iget-object v2, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1611
    .local v2, labelPackageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost;->access$1300(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/fragment/widget/CarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1612
    .local v0, activity:Landroid/app/Activity;
    if-eqz v2, :cond_1

    .line 1613
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1615
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1628
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #labelPackageName:Ljava/lang/String;
    :goto_0
    iget-object v4, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->setLabel(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;

    move-result-object v4

    return-object v4

    .line 1616
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v2       #labelPackageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1617
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get resource \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' of package \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1620
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_0

    .line 1623
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_0

    .line 1626
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #labelPackageName:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v3, v4, Lcom/htc/fragment/widget/CarouselHost;->eresources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;
    .locals 0
    .parameter "label"

    .prologue
    .line 1601
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->tabLabel:Ljava/lang/String;

    .line 1602
    return-object p0
.end method

.method public sync(Lcom/htc/fragment/widget/TaskInfo;)V
    .locals 4
    .parameter "taskInfo"

    .prologue
    .line 1734
    :try_start_0
    iget-object v2, p1, Lcom/htc/fragment/widget/TaskInfo;->intentUri:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1741
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->compareIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1742
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    .line 1743
    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1745
    :catch_0
    move-exception v0

    .line 1747
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 1

    .prologue
    .line 1678
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    if-eqz v0, :cond_0

    .line 1679
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->tabRemoved()V

    .line 1680
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    .line 1682
    :cond_0
    return-void
.end method

.method public tabOnPaused()V
    .locals 2

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchPause(Z)V

    .line 1707
    return-void
.end method

.method public tabOnResume()V
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/app/LocalFragmentManager;->dispatchResume()V

    .line 1715
    return-void
.end method

.method public tabRemoved()V
    .locals 3

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mLocalFragmentManager:Lcom/htc/fragment/app/LocalFragmentManager;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1000(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/app/LocalFragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->removeFragment(Ljava/lang/String;Z)V

    .line 1697
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1500(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->decorViewHash:Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1500(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;
    invoke-static {v2}, Lcom/htc/fragment/widget/CarouselHost;->access$1300(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselFragment;->getGId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselHost$DecorHashMap;->removeHash(Ljava/lang/String;)V

    .line 1699
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentContentStrategy[mTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
