package main

import (
	_ "beego_blog/routers"
	"github.com/astaxie/beego"
)

func init(){
//
    beego.SetLogFuncCall(true)
	//hotfix
//issue55
}

func main() {
	beego.Run()
}

