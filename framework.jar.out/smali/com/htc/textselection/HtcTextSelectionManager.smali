.class public Lcom/htc/textselection/HtcTextSelectionManager;
.super Ljava/lang/Object;
.source "HtcTextSelectionManager.java"

# interfaces
.implements Landroid/text/method/MovementMethod;
.implements Landroid/text/method/TextSelectionMovementMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;
    }
.end annotation


# static fields
.field public static final ENABLED:Z = true

.field public static final FLAG_END_BY_OUTSIDE_TOUCH:I = 0x8

.field public static final FLAG_INPUT_TYPE_NULL_SELECTION:I = 0x4

.field public static final FLAG_NON_EDITABLE_SELECTION:I = 0x1

.field public static final FLAG_SHOW_QUICK_ACTION:I = 0x10

.field public static final FLAG_TRIGGER_BY_LONG_CLICK:I = 0x2

.field private static HTC_SKIN_ENABLED:Z = false

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_LOOKUP:I = 0x54d

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SHARE:I = 0x54e

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static icon_copy:Landroid/graphics/drawable/Drawable;

.field private static icon_cut:Landroid/graphics/drawable/Drawable;

.field private static icon_ime_switch:Landroid/graphics/drawable/Drawable;

.field private static icon_lookup:Landroid/graphics/drawable/Drawable;

.field private static icon_open_link:Landroid/graphics/drawable/Drawable;

.field private static icon_paste:Landroid/graphics/drawable/Drawable;

.field private static icon_select:Landroid/graphics/drawable/Drawable;

.field private static icon_select_all:Landroid/graphics/drawable/Drawable;

.field private static icon_share:Landroid/graphics/drawable/Drawable;

.field private static isPasteWindow:Z

.field private static mAnchorBar:Landroid/graphics/drawable/Drawable;

.field private static mAnchorBarTop:Landroid/graphics/drawable/Drawable;

.field private static mAutoScroller:Lcom/htc/textselection/AutoScroller;

.field private static mMagnifier:Lcom/htc/textselection/Magnifier;

.field private static mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

.field private static mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

.field private static mSkinName:Ljava/lang/String;

.field private static sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

.field private static str_lookup:Ljava/lang/String;


# instance fields
.field private ACTION_BAR_HEIGHT:I

.field private final MSG_FLY_POST_ANCHOR_TO_END:I

.field private final MSG_FLY_PRIOR_ANCHOR_TO_START:I

.field private STATUS_BAR_HEIGHT:I

.field private mCurrentView:Landroid/widget/TextView;

.field private mPreMenuSize:I

.field private mPrivateHandler:Landroid/os/Handler;

.field private mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWindowManager:Landroid/view/WindowManager;

.field suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    .line 370
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->HTC_SKIN_ENABLED:Z

    .line 372
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    .line 636
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->MSG_FLY_PRIOR_ANCHOR_TO_START:I

    .line 637
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->MSG_FLY_POST_ANCHOR_TO_END:I

    .line 651
    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager$2;

    invoke-direct {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager$2;-><init>(Lcom/htc/textselection/HtcTextSelectionManager;)V

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/htc/textselection/AutoScroller;

    invoke-direct {v0}, Lcom/htc/textselection/AutoScroller;-><init>()V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    .line 92
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/textselection/HtcTextSelectionManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkSkinChanged(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 374
    sget-boolean v2, Lcom/htc/textselection/HtcTextSelectionManager;->HTC_SKIN_ENABLED:Z

    if-nez v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v1

    .line 376
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 377
    .local v0, currentSkin:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    invoke-virtual {p0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 379
    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 380
    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    .line 381
    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    .line 382
    sput-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    .line 383
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doCJKSelection(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 6
    .parameter "tv"
    .parameter "sp"

    .prologue
    const/4 v5, 0x1

    .line 622
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 623
    .local v2, start:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 625
    .local v0, end:I
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 626
    sub-int v3, v0, v2

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    const-string v3, "1"

    invoke-direct {p0, p1, v2, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->findChineseWord(Landroid/widget/TextView;ILjava/lang/String;)[I

    move-result-object v1

    .line 631
    .local v1, ret:[I
    if-eqz v1, :cond_0

    .line 632
    const/4 v3, 0x0

    aget v3, v1, v3

    aget v4, v1, v5

    invoke-static {p2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 634
    .end local v1           #ret:[I
    :cond_0
    return-void
.end method

.method private findChineseWord(Landroid/widget/TextView;ILjava/lang/String;)[I
    .locals 4
    .parameter "view"
    .parameter "offset"
    .parameter "lang"

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 603
    .local v1, text:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 605
    const/4 v0, 0x0

    .line 606
    .local v0, ret:[I
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v2, v1, p2, p3}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/CharSequence;ILjava/lang/String;)[I

    move-result-object v0

    .line 611
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    if-ne v2, v3, :cond_0

    .line 612
    const/4 v0, 0x0

    .line 615
    :cond_0
    iget-object v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 617
    return-object v0
.end method

.method public static getInstance()Lcom/htc/textselection/HtcTextSelectionManager;
    .locals 1

    .prologue
    .line 445
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-direct {v0}, Lcom/htc/textselection/HtcTextSelectionManager;-><init>()V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    .line 448
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    return-object v0
.end method

.method public static getInstanceIfExist()Lcom/htc/textselection/HtcTextSelectionManager;
    .locals 1

    .prologue
    .line 452
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->sInstance:Lcom/htc/textselection/HtcTextSelectionManager;

    return-object v0
.end method

.method private getOutsideTouchListener()Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;
    .locals 1

    .prologue
    .line 581
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/htc/textselection/HtcTextSelectionManager$1;

    invoke-direct {v0, p0}, Lcom/htc/textselection/HtcTextSelectionManager$1;-><init>(Lcom/htc/textselection/HtcTextSelectionManager;)V

    sput-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    .line 594
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    return-object v0
.end method

.method private loadIconDrawable(Landroid/content/Context;)V
    .locals 7
    .parameter "ctx"

    .prologue
    const v6, 0x208025d

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 141
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x2080248

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    .line 142
    const v5, 0x2080257

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    .line 143
    const v5, 0x2080249

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    .line 144
    const v5, 0x208025a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    .line 145
    const v5, 0x20800e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select:Landroid/graphics/drawable/Drawable;

    .line 147
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    .line 148
    const v5, 0x2080253

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_ime_switch:Landroid/graphics/drawable/Drawable;

    .line 151
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string/jumbo v6, "http:"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .local v4, target:Landroid/content/Intent;
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 157
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 158
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->icon_open_link:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    .end local v1           #mainActivitiesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #target:Landroid/content/Intent;
    :cond_0
    :goto_0
    const v5, 0x1040478

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    .line 166
    return-void

    .line 160
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private prepareMagnifier(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 98
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-nez v2, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    :cond_0
    new-instance v2, Lcom/htc/textselection/Magnifier;

    invoke-direct {v2, v0}, Lcom/htc/textselection/Magnifier;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->STATUS_BAR_HEIGHT:I

    .line 107
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 108
    .local v1, heightValue:Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10102eb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 110
    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    iput v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->ACTION_BAR_HEIGHT:I

    .line 115
    .end local v0           #ctx:Landroid/content/Context;
    .end local v1           #heightValue:Landroid/util/TypedValue;
    :cond_1
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2}, Lcom/htc/textselection/Magnifier;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2, p1}, Lcom/htc/textselection/Magnifier;->isParentView(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 118
    sget-object v2, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v2}, Lcom/htc/textselection/Magnifier;->dismiss()V

    .line 120
    :cond_2
    return-void
.end method

.method private prepareSelectionWindow(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 123
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 128
    :cond_0
    new-instance v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v1, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 129
    invoke-direct {p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->loadIconDrawable(Landroid/content/Context;)V

    .line 131
    .end local v0           #ctx:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v1, p1, :cond_2

    .line 134
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 136
    :cond_2
    return-void
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public canUpdateQuickAction(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 291
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkAutoScroll(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 353
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/textselection/AutoScroller;->checkAutoScroll(FF)V

    .line 354
    return-void
.end method

.method public dismissMagnifier()V
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    .line 339
    :cond_0
    return-void
.end method

.method public dismissQuickAction(Z)V
    .locals 1
    .parameter "fakeDismiss"

    .prologue
    .line 320
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    if-eqz p1, :cond_1

    .line 322
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    goto :goto_0
.end method

.method public findScrollableView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "anchoredView"

    .prologue
    .line 349
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0, p1}, Lcom/htc/textselection/AutoScroller;->findScrollableView(Landroid/widget/TextView;)V

    .line 350
    return-void
.end method

.method public flyToEnd(Landroid/widget/TextView;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 640
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 644
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 642
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 643
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x19

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public flyToStart(Landroid/widget/TextView;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 646
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 650
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 648
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 649
    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPrivateHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x19

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public getAnchorBarDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const v7, 0x2080302

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 391
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 392
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 394
    .local v2, res:Landroid/content/res/Resources;
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 395
    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    .line 410
    :goto_0
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 413
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 399
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 400
    .local v3, themeres:Landroid/content/res/Resources;
    const-string/jumbo v4, "text_anchor_bar"

    const-string v5, "drawable"

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 402
    .end local v3           #themeres:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 403
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcCheckableImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No skin package matches with the given name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 406
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 407
    .local v1, idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBar:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getAnchorBarDrawableTop(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const v7, 0x2080303

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 419
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 420
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_2

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 422
    .local v2, res:Landroid/content/res/Resources;
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 423
    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    .line 438
    :goto_0
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 441
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_2
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 427
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 428
    .local v3, themeres:Landroid/content/res/Resources;
    const-string/jumbo v4, "text_anchor_bar_top"

    const-string v5, "drawable"

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 430
    .end local v3           #themeres:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 431
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "HtcCheckableImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No skin package matches with the given name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->mSkinName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 434
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 435
    .local v1, idNotFoundEx:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mAnchorBarTop:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getCurrentView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMagnifier()Lcom/htc/textselection/Magnifier;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    return-object v0
.end method

.method public getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "ctx"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 366
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 541
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 549
    :cond_0
    :goto_0
    return v2

    .line 543
    :cond_1
    iget-object v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 544
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 545
    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 546
    .local v1, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    .line 549
    .end local v1           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget v2, p0, Lcom/htc/textselection/HtcTextSelectionManager;->STATUS_BAR_HEIGHT:I

    goto :goto_0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0
    .parameter "widget"
    .parameter "text"

    .prologue
    .line 456
    if-eqz p2, :cond_0

    .line 457
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 458
    :cond_0
    return-void
.end method

.method public isAutoScrolling()Z
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0}, Lcom/htc/textselection/AutoScroller;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public isPasteWindow()Z
    .locals 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    return v0
.end method

.method public onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .parameter "tv"
    .parameter "sp"

    .prologue
    .line 521
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    .line 522
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 523
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_1

    .line 524
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;->onEndSelect(Landroid/widget/TextView;)V

    .line 527
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    .line 528
    return-void
.end method

.method public onFocusChanged(Landroid/widget/TextView;ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "tv"
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 569
    return-void
.end method

.method public onGenericMotionEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 471
    const/4 v0, 0x0

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 556
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    .line 557
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 558
    :cond_0
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hideControllers()V

    .line 563
    :cond_2
    return-void
.end method

.method public onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1
    .parameter "tv"
    .parameter "sp"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    .line 511
    invoke-virtual {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;->onStartSelect(Landroid/widget/TextView;)V

    .line 516
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/htc/textselection/HtcTextSelectionManager;->doCJKSelection(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 518
    return-void
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .locals 0
    .parameter "widget"
    .parameter "text"
    .parameter "direction"

    .prologue
    .line 484
    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Landroid/widget/TextView;Z)V
    .locals 0
    .parameter "tv"
    .parameter "hasWindowFocus"

    .prologue
    .line 574
    return-void
.end method

.method public prepareHtcPasteWindow(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZ)V
    .locals 5
    .parameter "view"
    .parameter "listener"
    .parameter "context"
    .parameter "canPaste"
    .parameter "showSelectAll"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 176
    sput-boolean v1, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, mMenuSize:I
    if-eqz p4, :cond_5

    move v0, v1

    .line 180
    :goto_0
    if-eqz p5, :cond_6

    :goto_1
    add-int/2addr v0, v1

    .line 181
    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-nez v1, :cond_1

    .line 182
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 183
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 185
    :cond_1
    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    .line 187
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_2

    .line 188
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    .line 189
    :cond_2
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 191
    if-eqz p5, :cond_3

    .line 192
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x102001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000d

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 193
    :cond_3
    if-eqz p4, :cond_4

    .line 194
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000b

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 195
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 179
    goto :goto_0

    :cond_6
    move v1, v2

    .line 180
    goto :goto_1
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/Menu;Landroid/view/View$OnClickListener;)V
    .locals 8
    .parameter "view"
    .parameter "menu"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 237
    sput-boolean v5, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    .line 239
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v3

    .line 240
    .local v3, size:I
    iget v4, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-ge v3, v4, :cond_0

    .line 241
    invoke-virtual {p0, v5}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 242
    const/4 v4, 0x0

    sput-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 244
    :cond_0
    iput v3, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    .line 247
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v4, :cond_1

    .line 248
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    .line 249
    :cond_1
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 252
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 253
    .local v2, item:Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 254
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 255
    .local v1, id:I
    sparse-switch v1, :sswitch_data_0

    .line 251
    .end local v1           #id:I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .restart local v1       #id:I
    :sswitch_0
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    :sswitch_1
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :sswitch_2
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 266
    :sswitch_3
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :sswitch_4
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :sswitch_5
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_open_link:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :sswitch_6
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_ime_switch:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :sswitch_7
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 279
    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, p3, v7}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    :sswitch_8
    sget-object v5, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, p3, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 288
    .end local v1           #id:I
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_3
    return-void

    .line 255
    :sswitch_data_0
    .sparse-switch
        0x54d -> :sswitch_7
        0x54e -> :sswitch_8
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_3
        0x1020022 -> :sswitch_4
        0x1020023 -> :sswitch_5
        0x1020024 -> :sswitch_6
        0x1020028 -> :sswitch_1
    .end sparse-switch
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;ZZZZZ)V
    .locals 5
    .parameter "view"
    .parameter "listener"
    .parameter "context"
    .parameter "canSelectText"
    .parameter "canCut"
    .parameter "canCopy"
    .parameter "canPaste"
    .parameter "isSelectableTextView"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 200
    sput-boolean v2, Lcom/htc/textselection/HtcTextSelectionManager;->isPasteWindow:Z

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, mMenuSize:I
    if-eqz p4, :cond_9

    move v0, v1

    .line 204
    :goto_0
    if-eqz p5, :cond_a

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 205
    if-eqz p6, :cond_b

    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    .line 206
    if-eqz p7, :cond_c

    :goto_3
    add-int/2addr v0, v1

    .line 207
    if-eqz p8, :cond_d

    const/4 v1, 0x2

    :goto_4
    add-int/2addr v0, v1

    .line 208
    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    if-nez v1, :cond_1

    .line 209
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/textselection/HtcTextSelectionManager;->dismissQuickAction(Z)V

    .line 210
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 212
    :cond_1
    iput v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mPreMenuSize:I

    .line 215
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_2

    .line 216
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    .line 217
    :cond_2
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 219
    if-eqz p4, :cond_3

    .line 220
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x102001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_select_all:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000d

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 221
    :cond_3
    if-eqz p5, :cond_4

    .line 222
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_cut:Landroid/graphics/drawable/Drawable;

    const v4, 0x1040003

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 223
    :cond_4
    if-eqz p6, :cond_5

    .line 224
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_copy:Landroid/graphics/drawable/Drawable;

    const v4, 0x1040001

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 225
    :cond_5
    if-eqz p7, :cond_6

    .line 226
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const v2, 0x1020022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_paste:Landroid/graphics/drawable/Drawable;

    const v4, 0x104000b

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 227
    :cond_6
    if-eqz p8, :cond_8

    .line 228
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 229
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/16 v2, 0x54d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_lookup:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/htc/textselection/HtcTextSelectionManager;->str_lookup:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 230
    :cond_7
    sget-object v1, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/16 v2, 0x54e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/htc/textselection/HtcTextSelectionManager;->icon_share:Landroid/graphics/drawable/Drawable;

    const v4, 0x20401ab

    invoke-virtual {p3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p2, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 232
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 203
    goto/16 :goto_0

    :cond_a
    move v3, v2

    .line 204
    goto/16 :goto_1

    :cond_b
    move v3, v2

    .line 205
    goto/16 :goto_2

    :cond_c
    move v1, v2

    .line 206
    goto/16 :goto_3

    :cond_d
    move v1, v2

    .line 207
    goto/16 :goto_4
.end method

.method public setFineTune(Z)V
    .locals 1
    .parameter "needFineTune"

    .prologue
    .line 315
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setFineTune(Z)V

    .line 317
    :cond_0
    return-void
.end method

.method public setSelectionWatcher(Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 722
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/HtcTextSelectionManager$TextSelectionWatcher;

    .line 723
    return-void
.end method

.method public showMagnifier(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V
    .locals 6
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "offset"
    .parameter "mode"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareMagnifier(Landroid/view/View;)V

    .line 332
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/Magnifier;->show(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V

    .line 334
    :cond_0
    return-void
.end method

.method public showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "parent"
    .parameter "r"
    .parameter "flags"

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/textselection/HtcTextSelectionManager;->checkSkinChanged(Landroid/content/Context;)Z

    .line 301
    invoke-direct {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->prepareSelectionWindow(Landroid/view/View;)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/htc/textselection/HtcTextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    .line 303
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_1

    .line 304
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {p0}, Lcom/htc/textselection/HtcTextSelectionManager;->getOutsideTouchListener()Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V

    .line 308
    :goto_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 306
    :cond_1
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V

    goto :goto_1
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/htc/textselection/HtcTextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0}, Lcom/htc/textselection/AutoScroller;->stopScroll()V

    .line 358
    return-void
.end method

.method public updateCurrentView(Landroid/widget/TextView;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 531
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_1

    .line 532
    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    if-nez p1, :cond_0

    .line 535
    iput-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    .line 536
    iput-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method
