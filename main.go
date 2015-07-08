package main

import (
	_ "beego_blog/routers"
	"github.com/astaxie/beego"
)

func init(){
//
    beego.SetLogFuncCall(true)
}

func main() {
	beego.Run()
}

