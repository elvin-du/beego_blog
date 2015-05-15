package models

import (
//	"github.com/astaxie/beego"
	"time"
)

type articlesModel struct{}

var _article = articlesModel{}

func ArticlesModel() *articlesModel {
	return &_article
}

func (this *articlesModel) Article(id uint) (*Articles, error) {
	var article Articles
	article.Title = `i love you`
	article.Content = `u are my sun`

	return &article, nil
}

func (this *articlesModel) Articles() ([]*Articles, error) {
	var article Articles
	article.Title = `i love you`
	article.Content = `u are my sun`
	article.CreatedAt = time.Now().Unix()
	article.CreatedAtStr = time.Unix(article.CreatedAt, 0).Format("2006-01-02 15:04:05.999999999")

	as := make([]*Articles, 0, 4)

	as = append(as, &article)
	as = append(as, &article)
	as = append(as, &article)
	as = append(as, &article)

	return as, nil
}
