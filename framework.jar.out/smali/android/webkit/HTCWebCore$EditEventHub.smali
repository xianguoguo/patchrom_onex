.class Landroid/webkit/HTCWebCore$EditEventHub;
.super Ljava/lang/Object;
.source "HTCWebCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTCWebCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditEventHub"
.end annotation


# static fields
.field static final ALIGN_CENTER:I = 0x203

.field static final ALIGN_JUSTIFIED:I = 0x204

.field static final ALIGN_LEFT:I = 0x205

.field static final ALIGN_RIGHT:I = 0x206

.field static final AUTO_EXTEND_TO_WORD:I = 0x216

.field static final CANCEL_ANCHOR_SPAN:I = 0x223

.field static final COMPOSING_TEXT:I = 0x1f6

.field static final COPY:I = 0x21c

.field static final CUT:I = 0x21d

.field static final DELET_SURROUNDING_TEXT:I = 0x1f7

.field static final DO_SELECTION:I = 0x213

.field static final DO_SELECTION_INDX:I = 0x214

.field static final END_MATCH_PHRASE:I = 0x218

.field static final EXPORT_HTML:I = 0x1fc

.field static final EXPORT_HTML_CALLBACK:I = 0x1fd

.field static final FIND_CONTINOUS_BR_FROM_END:I = 0x221

.field private static final FIRST_MSG:I = 0x1f4

.field static final GET_HTML_STRING:I = 0x1f9

.field static final INFORM_COLOR_CHANGED:I = 0x20a

.field static final INSERT_ANCHOR_SPAN:I = 0x222

.field static final INSERT_HTML:I = 0x1fa

.field static final INSERT_HTML_ANCHOR_SPAN:I = 0x224

.field static final INSERT_HTML_STRING:I = 0x1fb

.field static final INSERT_HTML_TO_THE_END:I = 0x220

.field static final INSERT_IMAGE:I = 0x1fe

.field static final INSERT_TEXT:I = 0x1f5

.field private static final LAST_MSG:I = 0x225

.field static final MATCH_PHRASE:I = 0x217

.field static final MODIFY_SELECTION:I = 0x212

.field static final N_CLICK:I = 0x1f8

.field static final PAINT_CARET:I = 0x20c

.field static final PASTE_LATEST_CONTENT_FROM_CLIPBOARD:I = 0x225

.field static final PASTE_PLAIN_TEXT:I = 0x21f

.field static final PASTE_WITH_STYLE:I = 0x21e

.field static final SELECT_CJKS_WORD:I = 0x215

.field static final SET_BACK_COLOR:I = 0x208

.field static final SET_EDITABLE:I = 0x1f4

.field static final SET_FONT_SIZE:I = 0x209

.field static final SET_FORE_COLOR:I = 0x207

.field static final SET_IMAGE_ATTR:I = 0x20b

.field static final TOGGLE_BOLD:I = 0x1ff

.field static final TOGGLE_ITALIC:I = 0x201

.field static final TOGGLE_STRIKETHROUGH:I = 0x202

.field static final TOGGLE_UNDERLINE:I = 0x200


# instance fields
.field public mLastContentChangedMsg:I

.field private nodePtr:I

.field private nodeText:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/HTCWebCore;


# direct methods
.method constructor <init>(Landroid/webkit/HTCWebCore;)V
    .locals 1
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    .line 385
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    .line 440
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/HTCWebCore$EditEventHub;->mLastContentChangedMsg:I

    return-void
.end method


# virtual methods
.method handleMessage(Landroid/os/Message;)V
    .locals 49
    .parameter "msg"

    .prologue
    .line 449
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x1fa

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v4, 0x20c

    if-eq v3, v4, :cond_0

    .line 450
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->mLastContentChangedMsg:I

    .line 452
    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 811
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 454
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 455
    .local v21, callback:Landroid/os/Message;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    .line 456
    .local v28, htmlString:Ljava/lang/String;
    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 457
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeInsertHtmlToTheEnd(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 463
    .end local v21           #callback:Landroid/os/Message;
    .end local v28           #htmlString:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/webkit/HTCWebCore;->nativeFindContinuousBRFromEnd(I)I

    move-result v37

    .line 464
    .local v37, pos:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Message;

    .line 465
    .local v22, callbackMsg:Landroid/os/Message;
    move/from16 v0, v37

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 466
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 469
    .end local v22           #callbackMsg:Landroid/os/Message;
    .end local v37           #pos:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    const/4 v3, 0x1

    :goto_1
    #calls: Landroid/webkit/HTCWebCore;->nativeModifySelection(Z)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$000(Landroid/webkit/HTCWebCore;Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 472
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/graphics/Point;

    .line 473
    .local v38, posPt:Landroid/graphics/Point;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v38

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v38

    iget v7, v0, Landroid/graphics/Point;->y:I

    #calls: Landroid/webkit/HTCWebCore;->nativeDoWordSelection(II)V
    invoke-static {v3, v4, v7}, Landroid/webkit/HTCWebCore;->access$100(Landroid/webkit/HTCWebCore;II)V

    goto :goto_0

    .line 476
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v38

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v38

    iget v8, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v3, v9, :cond_4

    const/4 v3, 0x1

    :goto_2
    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelection(IIZ)V
    invoke-static {v4, v7, v8, v3}, Landroid/webkit/HTCWebCore;->access$200(Landroid/webkit/HTCWebCore;IIZ)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 481
    .end local v38           #posPt:Landroid/graphics/Point;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v30, v3

    check-cast v30, [I

    .line 482
    .local v30, indexes:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x0

    aget v7, v30, v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    aget v9, v30, v9

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v4, v7, v8, v9}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto/16 :goto_0

    .line 486
    .end local v30           #indexes:[I
    :pswitch_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 487
    .local v35, pnode:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v41, v0

    .line 489
    .local v41, start:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    move/from16 v0, v35

    if-eq v3, v0, :cond_5

    .line 490
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, -0x1

    const/4 v7, -0x1

    move/from16 v0, v35

    move/from16 v1, v35

    invoke-virtual {v3, v0, v4, v1, v7}, Landroid/webkit/HTCWebCore;->nativeGetTextBetween(IIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    .line 494
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 495
    .local v46, text:Ljava/lang/String;
    if-eqz v46, :cond_1

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v41, :cond_1

    .line 499
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v41

    if-lt v0, v3, :cond_6

    .line 500
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v41, v3, -0x1

    .line 503
    :cond_6
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCWebCore;->access$400(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 504
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    .line 517
    :cond_7
    :goto_3
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 507
    :cond_8
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const-string v4, "1"

    move-object/from16 v0, v46

    move/from16 v1, v41

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v40

    .line 509
    .local v40, s_e:[I
    const/4 v3, 0x0

    aget v3, v40, v3

    const/4 v4, 0x1

    aget v4, v40, v4

    if-eq v3, v4, :cond_9

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, 0x0

    aget v4, v40, v4

    const/4 v7, 0x1

    aget v7, v40, v7

    move/from16 v0, v35

    move/from16 v1, v35

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v0, v4, v1, v7}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto :goto_3

    .line 513
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    add-int/lit8 v4, v41, 0x1

    move/from16 v0, v35

    move/from16 v1, v41

    move/from16 v2, v35

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v0, v1, v2, v4}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto :goto_3

    .line 521
    .end local v35           #pnode:I
    .end local v40           #s_e:[I
    .end local v41           #start:I
    .end local v46           #text:Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 522
    .local v5, cur:I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 523
    .local v6, tar:I
    sub-int v3, v6, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v24

    .line 524
    .local v24, dist:I
    if-le v6, v5, :cond_a

    const/16 v32, 0x1

    .line 526
    .local v32, isExtendEnd:Z
    :goto_4
    const/4 v3, 0x2

    move/from16 v0, v24

    if-gt v0, v3, :cond_c

    .line 527
    if-eqz v32, :cond_b

    .end local v24           #dist:I
    :goto_5
    add-int v5, v5, v24

    .line 533
    :goto_6
    if-eqz v32, :cond_e

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v4, v7, v8, v5}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    .line 539
    :goto_7
    if-eq v5, v6, :cond_1

    .line 540
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mWebCore:Landroid/webkit/WebViewCore;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$500(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebViewCore;

    move-result-object v3

    const/16 v4, 0x216

    const/4 v7, 0x0

    const-wide/16 v8, 0x21

    invoke-virtual/range {v3 .. v9}, Landroid/webkit/WebViewCore;->sendMessageDelayed(IIILjava/lang/Object;J)V

    goto/16 :goto_0

    .line 524
    .end local v32           #isExtendEnd:Z
    .restart local v24       #dist:I
    :cond_a
    const/16 v32, 0x0

    goto :goto_4

    .line 527
    .restart local v32       #isExtendEnd:Z
    :cond_b
    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    goto :goto_5

    .line 529
    :cond_c
    move/from16 v0, v24

    int-to-float v3, v0

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 530
    .local v33, offset:I
    if-eqz v32, :cond_d

    .end local v33           #offset:I
    :goto_8
    add-int v5, v5, v33

    goto :goto_6

    .restart local v33       #offset:I
    :cond_d
    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    goto :goto_8

    .line 536
    .end local v24           #dist:I
    .end local v33           #offset:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v4, v5, v7, v8}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto :goto_7

    .line 545
    .end local v5           #cur:I
    .end local v6           #tar:I
    .end local v32           #isExtendEnd:Z
    :pswitch_8
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-nez v3, :cond_f

    .line 546
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/HTCWebCore;->access$400(Landroid/webkit/HTCWebCore;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    .line 548
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 549
    .restart local v35       #pnode:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v41, v0

    .line 551
    .restart local v41       #start:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    move/from16 v0, v35

    if-eq v3, v0, :cond_10

    .line 552
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HTCWebCore$EditEventHub;->nodePtr:I

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, -0x1

    const/4 v7, -0x1

    move/from16 v0, v35

    move/from16 v1, v35

    invoke-virtual {v3, v0, v4, v1, v7}, Landroid/webkit/HTCWebCore;->nativeGetTextBetween(IIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    .line 556
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HTCWebCore$EditEventHub;->nodeText:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 557
    .restart local v46       #text:Ljava/lang/String;
    if-eqz v46, :cond_1

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-ltz v41, :cond_1

    .line 561
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v41

    if-lt v0, v3, :cond_11

    .line 562
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v41, v3, -0x1

    .line 566
    :cond_11
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    .line 569
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const-string v4, "1"

    move-object/from16 v0, v46

    move/from16 v1, v41

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    move-result-object v40

    .line 571
    .restart local v40       #s_e:[I
    const/4 v3, 0x0

    aget v3, v40, v3

    const/4 v4, 0x1

    aget v4, v40, v4

    if-eq v3, v4, :cond_1

    .line 573
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    const/4 v4, 0x0

    aget v4, v40, v4

    const/4 v7, 0x1

    aget v7, v40, v7

    move/from16 v0, v35

    move/from16 v1, v35

    #calls: Landroid/webkit/HTCWebCore;->nativeDoSelectionByIndex(IIII)V
    invoke-static {v3, v0, v4, v1, v7}, Landroid/webkit/HTCWebCore;->access$300(Landroid/webkit/HTCWebCore;IIII)V

    goto/16 :goto_0

    .line 582
    .end local v35           #pnode:I
    .end local v40           #s_e:[I
    .end local v41           #start:I
    .end local v46           #text:Ljava/lang/String;
    :pswitch_9
    sget-object v3, Landroid/webkit/HTCWebCore;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 586
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_12

    const/4 v3, 0x1

    :goto_9
    #calls: Landroid/webkit/HTCWebCore;->nativeSetEditable(Z)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$600(Landroid/webkit/HTCWebCore;Z)V

    goto/16 :goto_0

    :cond_12
    const/4 v3, 0x0

    goto :goto_9

    .line 589
    :pswitch_b
    new-instance v39, Landroid/graphics/Rect;

    invoke-direct/range {v39 .. v39}, Landroid/graphics/Rect;-><init>()V

    .line 590
    .local v39, ret:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeGetVSbound(Landroid/graphics/Rect;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_13

    const/4 v3, 0x1

    :goto_a
    #calls: Landroid/webkit/HTCWebCore;->nativeShouldPaintingCaret(Z)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$700(Landroid/webkit/HTCWebCore;Z)V

    .line 592
    const/4 v3, -0x5

    const/4 v4, -0x5

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->nativeContentInvalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 591
    :cond_13
    const/4 v3, 0x0

    goto :goto_a

    .line 599
    .end local v39           #ret:Landroid/graphics/Rect;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeInsert(ILjava/lang/String;)V
    invoke-static {v4, v7, v3}, Landroid/webkit/HTCWebCore;->access$800(Landroid/webkit/HTCWebCore;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 602
    :pswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 603
    .local v20, c:I
    if-nez v20, :cond_14

    .line 604
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    #calls: Landroid/webkit/HTCWebCore;->nativeComposing(ILjava/lang/String;IIII)V
    invoke-static/range {v7 .. v13}, Landroid/webkit/HTCWebCore;->access$900(Landroid/webkit/HTCWebCore;ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 607
    :cond_14
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 608
    .local v13, ca:I
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 609
    .local v10, cr:I
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 610
    .local v11, cg:I
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 611
    .local v12, cb:I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeComposing(ILjava/lang/String;IIII)V
    invoke-static/range {v7 .. v13}, Landroid/webkit/HTCWebCore;->access$900(Landroid/webkit/HTCWebCore;ILjava/lang/String;IIII)V

    goto/16 :goto_0

    .line 616
    .end local v10           #cr:I
    .end local v11           #cg:I
    .end local v12           #cb:I
    .end local v13           #ca:I
    .end local v20           #c:I
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [I

    move-object/from16 v30, v3

    check-cast v30, [I

    .line 617
    .restart local v30       #indexes:[I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    aget v16, v30, v3

    const/4 v3, 0x1

    aget v17, v30, v3

    const/4 v3, 0x2

    aget v18, v30, v3

    const/4 v3, 0x3

    aget v19, v30, v3

    #calls: Landroid/webkit/HTCWebCore;->nativeDeleteSurrounding(IIIII)V
    invoke-static/range {v14 .. v19}, Landroid/webkit/HTCWebCore;->access$1000(Landroid/webkit/HTCWebCore;IIIII)V

    goto/16 :goto_0

    .line 623
    .end local v30           #indexes:[I
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetHtmlString()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1100(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v26

    .line 624
    .local v26, html:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 625
    .restart local v21       #callback:Landroid/os/Message;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 630
    .end local v21           #callback:Landroid/os/Message;
    .end local v26           #html:Ljava/lang/String;
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/lang/String;

    .line 631
    .local v31, insert_html:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v31

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertHtmlString(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Landroid/webkit/HTCWebCore;->access$1200(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 636
    .end local v31           #insert_html:Ljava/lang/String;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeExportHtml(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$1300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 639
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Message;

    .line 640
    .restart local v21       #callback:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v21

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeExportHtml(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$1300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    .line 641
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 645
    .end local v21           #callback:Landroid/os/Message;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertHtml(Ljava/lang/String;)Z
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$1400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 649
    :pswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/webkit/EditableWebView$ImageInfo;

    .line 650
    .local v29, imageInfo:Landroid/webkit/EditableWebView$ImageInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_src:Ljava/lang/String;

    move-object/from16 v0, v29

    iget v7, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_width:I

    move-object/from16 v0, v29

    iget v8, v0, Landroid/webkit/EditableWebView$ImageInfo;->m_height:I

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertImage(Ljava/lang/String;II)V
    invoke-static {v3, v4, v7, v8}, Landroid/webkit/HTCWebCore;->access$1500(Landroid/webkit/HTCWebCore;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 655
    .end local v29           #imageInfo:Landroid/webkit/EditableWebView$ImageInfo;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeInformColorChanged()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1600(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 658
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeCopy()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1700(Landroid/webkit/HTCWebCore;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetCopiedPlainText()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1800(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v34

    .line 660
    .local v34, plainText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetCopiedStyleText()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1900(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v45

    .line 661
    .local v45, styledText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_17

    if-eqz v45, :cond_17

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_17

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v34, :cond_15

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    :cond_15
    const-string v34, ""

    .end local v34           #plainText:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v34

    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v23

    .line 667
    .local v23, clip:Landroid/content/ClipData;
    new-instance v3, Landroid/content/ClipData$Item;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 670
    .end local v23           #clip:Landroid/content/ClipData;
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->setCopiedStyleText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    .end local v45           #styledText:Ljava/lang/String;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeCut()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2100(Landroid/webkit/HTCWebCore;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetCopiedPlainText()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1800(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v34

    .line 676
    .restart local v34       #plainText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeGetCopiedStyleText()Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$1900(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v45

    .line 677
    .restart local v45       #styledText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_1a

    if-eqz v45, :cond_1a

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTC_MODIFIED_CLIPDATA="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v34, :cond_18

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    const-string v34, ""

    .end local v34           #plainText:Ljava/lang/String;
    :cond_19
    move-object/from16 v0, v34

    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v23

    .line 683
    .restart local v23       #clip:Landroid/content/ClipData;
    new-instance v3, Landroid/content/ClipData$Item;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 686
    .end local v23           #clip:Landroid/content/ClipData;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Landroid/webkit/HTCWebCore;->setCopiedStyleText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 690
    .end local v45           #styledText:Ljava/lang/String;
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1b

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v4}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 693
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v23

    .line 696
    .restart local v23       #clip:Landroid/content/ClipData;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    .line 697
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v46

    .line 698
    .local v46, text:Ljava/lang/CharSequence;
    if-eqz v46, :cond_1

    invoke-interface/range {v46 .. v46}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 700
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v42

    .line 701
    .local v42, str:Ljava/lang/String;
    const-string v3, "\n"

    const-string v4, "<br>"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 702
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v42

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 705
    .end local v42           #str:Ljava/lang/String;
    .end local v46           #text:Ljava/lang/CharSequence;
    :cond_1c
    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 706
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v46

    .line 707
    .restart local v46       #text:Ljava/lang/CharSequence;
    if-eqz v46, :cond_1

    invoke-interface/range {v46 .. v46}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 708
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    .end local v23           #clip:Landroid/content/ClipData;
    .end local v46           #text:Ljava/lang/CharSequence;
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mCopiedStyleText:Ljava/lang/String;
    invoke-static {v4}, Landroid/webkit/HTCWebCore;->access$2200(Landroid/webkit/HTCWebCore;)Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v23

    .line 719
    .restart local v23       #clip:Landroid/content/ClipData;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 720
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v46

    .line 721
    .restart local v46       #text:Ljava/lang/CharSequence;
    if-eqz v46, :cond_1

    invoke-interface/range {v46 .. v46}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 722
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePastePlainText(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 723
    .end local v46           #text:Ljava/lang/CharSequence;
    :cond_1e
    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 724
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v46

    .line 725
    .restart local v46       #text:Ljava/lang/CharSequence;
    if-eqz v46, :cond_1

    invoke-interface/range {v46 .. v46}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePasteWithStyle(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2300(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 731
    .end local v23           #clip:Landroid/content/ClipData;
    .end local v46           #text:Ljava/lang/CharSequence;
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 733
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #getter for: Landroid/webkit/HTCWebCore;->mClipboard:Landroid/content/ClipboardManager;
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2000(Landroid/webkit/HTCWebCore;)Landroid/content/ClipboardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v23

    .line 734
    .restart local v23       #clip:Landroid/content/ClipData;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 735
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v46

    .line 736
    .restart local v46       #text:Ljava/lang/CharSequence;
    if-eqz v46, :cond_1

    invoke-interface/range {v46 .. v46}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/webkit/HTCWebCore;->nativePastePlainText(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$2400(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 742
    .end local v23           #clip:Landroid/content/ClipData;
    .end local v46           #text:Ljava/lang/CharSequence;
    :pswitch_1b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    #setter for: Landroid/webkit/HTCWebCore;->mAnchorSpanCallback:Landroid/os/Message;
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$2502(Landroid/webkit/HTCWebCore;Landroid/os/Message;)Landroid/os/Message;

    .line 747
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Ljava/lang/String;

    .line 748
    .local v47, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v47

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertAnchorSpan(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/webkit/HTCWebCore;->access$2600(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 752
    .end local v47           #title:Ljava/lang/String;
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeCancelAnchorSpan()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2700(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 755
    :pswitch_1d
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 759
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v27, v3

    check-cast v27, Ljava/lang/String;

    .line 760
    .local v27, htmlContainsAnchorSpan:Ljava/lang/String;
    const-string v3, "KENLOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<MSG> INSERT_HTML_ANCHOR_SPAN: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v27

    #calls: Landroid/webkit/HTCWebCore;->nativeInsertHtmlContainsAnchorSpan(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Landroid/webkit/HTCWebCore;->access$2800(Landroid/webkit/HTCWebCore;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 765
    .end local v27           #htmlContainsAnchorSpan:Ljava/lang/String;
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeToggleBold()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$2900(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 768
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeToggleUnderline()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3000(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 771
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeToggleItalic()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3100(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 774
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeToggleStrikethrough()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3200(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 777
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeAlignCenter()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3300(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 780
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeAlignJustified()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3400(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 783
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeAlignLeft()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3500(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 786
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    #calls: Landroid/webkit/HTCWebCore;->nativeAlignRight()V
    invoke-static {v3}, Landroid/webkit/HTCWebCore;->access$3600(Landroid/webkit/HTCWebCore;)V

    goto/16 :goto_0

    .line 789
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeSetForeColor(Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$3700(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #calls: Landroid/webkit/HTCWebCore;->nativeSetBackColor(Ljava/lang/String;)V
    invoke-static {v4, v3}, Landroid/webkit/HTCWebCore;->access$3800(Landroid/webkit/HTCWebCore;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 795
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/HTCWebCore;->nativeSetFontSize(I)V
    invoke-static {v3, v4}, Landroid/webkit/HTCWebCore;->access$3900(Landroid/webkit/HTCWebCore;I)V

    goto/16 :goto_0

    .line 800
    :pswitch_29
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v48, v0

    .line 801
    .local v48, width:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v25, v0

    .line 802
    .local v25, height:I
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 803
    .local v36, pointer:I
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v44

    .line 804
    .local v44, strWidth:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    .line 805
    .local v43, strHeight:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkit/HTCWebCore$EditEventHub;->this$0:Landroid/webkit/HTCWebCore;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    move/from16 v2, v36

    invoke-virtual {v3, v0, v1, v2}, Landroid/webkit/HTCWebCore;->nativeSetImageAttr(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_13
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_15
        :pswitch_29
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_1
        :pswitch_2
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_18
    .end packed-switch
.end method

.method isEditMessage(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 444
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x225

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
