.class Lcom/htc/cscore/restapi/proxy/RestServicesProxy$1;
.super Lcom/htc/gson/reflect/TypeToken;
.source "RestServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->GetFriendRecommendedLikesComments(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/htc/cscore/restapi/proxy/WebClasses$WApplicationStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;


# direct methods
.method constructor <init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/htc/cscore/restapi/proxy/RestServicesProxy$1;->this$0:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    invoke-direct {p0}, Lcom/htc/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
