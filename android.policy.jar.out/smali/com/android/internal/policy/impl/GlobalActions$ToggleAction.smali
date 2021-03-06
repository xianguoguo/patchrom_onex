.class abstract Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field protected mHtcResource:Z

.field protected mMessageResId:I

.field protected mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIIIZ)V
    .locals 1
    .parameter "enabledIconResId"
    .parameter "disabledIconResid"
    .parameter "essage"
    .parameter "enabledStatusMessageResId"
    .parameter "disabledStatusMessageResId"
    .parameter "htcResource"

    .prologue
    .line 967
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 941
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 968
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 969
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 970
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    .line 971
    iput p4, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 972
    iput p5, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 973
    iput-boolean p6, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mHtcResource:Z

    .line 975
    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 1
    .parameter "buttonOn"

    .prologue
    .line 1142
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1143
    return-void

    .line 1142
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 31
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 979
    const/16 v25, 0x0

    .line 980
    .local v25, v:Landroid/view/View;
    const/4 v11, 0x0

    .line 981
    .local v11, icon:Landroid/widget/ImageView;
    const/4 v15, 0x0

    .line 982
    .local v15, messageView:Landroid/widget/TextView;
    const/16 v22, 0x0

    .line 993
    .local v22, statusView:Landroid/widget/TextView;
    const v27, 0x10900d6

    const/16 v28, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v27

    move-object/from16 v2, p3

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 995
    const v27, 0x1020348

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #icon:Landroid/widget/ImageView;
    check-cast v11, Landroid/widget/ImageView;

    .line 996
    .restart local v11       #icon:Landroid/widget/ImageView;
    const v27, 0x1020342

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #messageView:Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 997
    .restart local v15       #messageView:Landroid/widget/TextView;
    const v27, 0x1020345

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .end local v22           #statusView:Landroid/widget/TextView;
    check-cast v22, Landroid/widget/TextView;

    .line 1013
    .restart local v22       #statusView:Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v9

    .line 1014
    .local v9, enabled:Z
    const-string v27, "GlobalActions"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "enabled = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", this = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_9

    :cond_0
    const/16 v16, 0x1

    .line 1020
    .local v16, on:Z
    :goto_0
    const/4 v14, 0x0

    .line 1021
    .local v14, messageText:Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 1022
    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .line 1024
    .local v21, statusText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mHtcResource:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 1025
    const/16 v17, 0x0

    .line 1027
    .local v17, r:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string v28, "com.htc"

    invoke-virtual/range {v27 .. v28}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 1032
    :goto_1
    if-eqz v17, :cond_1

    .line 1033
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1034
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    move/from16 v27, v0

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1035
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    move/from16 v27, v0

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 1056
    .end local v17           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_4
    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    .line 1057
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1058
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1061
    :cond_2
    if-eqz v11, :cond_3

    if-eqz v8, :cond_3

    .line 1062
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1063
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1066
    :cond_3
    if-eqz v22, :cond_4

    if-eqz v21, :cond_4

    .line 1067
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1069
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1072
    :cond_4
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 1075
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1077
    .local v5, am:Landroid/app/IActivityManager;
    :try_start_1
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1078
    .local v7, config:Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1080
    .local v20, skinPackage:Ljava/lang/String;
    sget-object v27, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    .line 1081
    .local v26, version:F
    const/high16 v27, 0x4080

    cmpl-float v27, v26, v27

    if-ltz v27, :cond_6

    .line 1083
    const-string v27, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    const-string v27, "default"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 1084
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1085
    .local v18, res:Landroid/content/res/Resources;
    const-string v27, "common_list_item_background"

    const-string v28, "drawable"

    const-string v29, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1086
    .local v4, BGId:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1093
    .end local v18           #res:Landroid/content/res/Resources;
    .local v13, listItemBG:Landroid/graphics/drawable/Drawable;
    :goto_5
    if-eqz v25, :cond_6

    if-eqz v13, :cond_6

    .line 1094
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    .line 1095
    .local v12, leftPadding:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingTop()I

    move-result v24

    .line 1096
    .local v24, topPadding:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    .line 1097
    .local v19, rightPadding:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 1098
    .local v6, bottomPadding:I
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1099
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v12, v1, v2, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1109
    .end local v4           #BGId:I
    .end local v6           #bottomPadding:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v12           #leftPadding:I
    .end local v13           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v19           #rightPadding:I
    .end local v20           #skinPackage:Ljava/lang/String;
    .end local v24           #topPadding:I
    .end local v26           #version:F
    :cond_6
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const-string v28, "list_primary_m"

    const-string v29, "style"

    const-string v30, "com.htc"

    invoke-virtual/range {v27 .. v30}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1110
    .local v10, fontStyle:I
    if-eqz v10, :cond_7

    if-eqz v15, :cond_7

    if-eqz p1, :cond_7

    .line 1111
    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1112
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const-string v28, "list_secondary_m"

    const-string v29, "style"

    const-string v30, "com.htc"

    invoke-virtual/range {v27 .. v30}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1113
    if-eqz v10, :cond_8

    if-eqz v22, :cond_8

    if-eqz p1, :cond_8

    .line 1114
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1116
    :cond_8
    return-object v25

    .line 1016
    .end local v5           #am:Landroid/app/IActivityManager;
    .end local v8           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #fontStyle:I
    .end local v14           #messageText:Ljava/lang/CharSequence;
    .end local v16           #on:Z
    .end local v21           #statusText:Ljava/lang/CharSequence;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1034
    .restart local v8       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v14       #messageText:Ljava/lang/CharSequence;
    .restart local v16       #on:Z
    .restart local v17       #r:Landroid/content/res/Resources;
    .restart local v21       #statusText:Ljava/lang/CharSequence;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    move/from16 v27, v0

    goto/16 :goto_2

    .line 1035
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    move/from16 v27, v0

    goto/16 :goto_3

    .line 1038
    .end local v17           #r:Landroid/content/res/Resources;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mMessageResId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 1039
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledIconResId:I

    move/from16 v27, v0

    :goto_7
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    move/from16 v27, v0

    :goto_8
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    goto/16 :goto_4

    .line 1039
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledIconResid:I

    move/from16 v27, v0

    goto :goto_7

    .line 1040
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    move/from16 v27, v0

    goto :goto_8

    .line 1088
    .restart local v5       #am:Landroid/app/IActivityManager;
    .restart local v7       #config:Landroid/content/res/Configuration;
    .restart local v20       #skinPackage:Ljava/lang/String;
    .restart local v26       #version:F
    :cond_f
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v23

    .line 1089
    .local v23, themeres:Landroid/content/res/Resources;
    const-string v27, "common_list_item_background"

    const-string v28, "drawable"

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1090
    .restart local v4       #BGId:I
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v13

    .restart local v13       #listItemBG:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_5

    .line 1103
    .end local v4           #BGId:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v13           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v20           #skinPackage:Ljava/lang/String;
    .end local v23           #themeres:Landroid/content/res/Resources;
    .end local v26           #version:F
    :catch_0
    move-exception v27

    goto/16 :goto_6

    .line 1028
    .end local v5           #am:Landroid/app/IActivityManager;
    .restart local v17       #r:Landroid/content/res/Resources;
    :catch_1
    move-exception v27

    goto/16 :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPress()V
    .locals 3

    .prologue
    .line 1121
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    const-string v1, "GlobalActions"

    const-string v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->On:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1127
    .local v0, nowOn:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 1128
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 1126
    .end local v0           #nowOn:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 1150
    return-void
.end method
