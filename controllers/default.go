package controllers

import (
	"github.com/astaxie/beego"
    "beego_blog/models"
)

type MainController struct {
	beego.Controller
}

func (this *MainController) Get() {
    as ,err := models.ArticlesModel().Articles()
    if nil != err{
        beego.Error(err)
        return
    }
	this.Data["articles"] = as
    this.Layout = "index.html"

	this.TplNames = "article.html"
}
