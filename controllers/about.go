package controllers

import (
	"github.com/astaxie/beego"
//    "beego_blog/models"
)

type AboutController struct {
	beego.Controller
}

func (this *AboutController) Get() {
	this.Data["Name"] = "Elvin Du"
	this.Data["Email"] = "dumanxiang@163.com"
    this.Layout = "index.html"

	this.TplNames = "about.html"
}
