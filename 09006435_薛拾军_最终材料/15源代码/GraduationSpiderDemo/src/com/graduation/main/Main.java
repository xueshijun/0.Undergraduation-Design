package com.graduation.main;

import java.io.File;
import java.util.Date;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.graduation.entity.EntityJingDong;
import com.graduation.sql.SqlServer;
import com.grduation.image.OCR;
import com.grduation.image.SaveInternetImage;

public class Main {

//	public static void main(String[] args) throws Exception {
//
//		// int count = 100001;
//		// int count = 110273;
//		// 110274
//		// 111978
//		// 141824
//		for (int count = 141825; count < 99999999; count++) {
//			EntityJingDong entityJingDong = jingDong(count);
//			if (entityJingDong != null) {
//				entityJingDong.print();
//				new SqlServer().insert(entityJingDong);
//				System.err.println(count + "DONE!");
//			}
//			System.out.println(count + "");
//		}
//
//	}

	public static EntityJingDong jingDong(int count) throws Exception {
		EntityJingDong entityJingDong = new EntityJingDong();
		try {

			String url = "http://www.360buy.com/product/" + count + ".html";
			entityJingDong.setUrl(url);
			Document doc = Jsoup.connect(url).get();
			Elements links = doc.select("body>div.w");
			if (links != null && links.text().length() != 0) {

				Elements link_categorys = links.select("div.breadcrumb>span>a");
				String temp = "";
				for (Element link_category : link_categorys) {
					temp += link_category.text();
				}
				entityJingDong.setCategory(temp);
				Element link_title = links.select("div#product-intro>div#name")
						.first();
				entityJingDong.setTitle(link_title.text());
				Element link_id = links
						.select(
								"div#product-intro>div.clearfix>ul#summary>li#summary-market>div.dd")
						.first();
				entityJingDong.setNum(link_id.text() == null ? "" : link_id
						.text());
				Element link_price = links
						.select(
								"div#product-intro>div.clearfix>ul#summary>li#summary-price>div.dd>strong.p-price>img")
						.first();
				String photoUrl = link_price.attr("src");
				
				String fileName = photoUrl
						.substring(photoUrl.lastIndexOf("/") + 1);
				String filePath = "D:" + File.separator + "images"
						+ File.separator;
				if (SaveInternetImage.saveUrlAs(photoUrl, filePath + fileName)) {
					// System.out.println("Run ok!\n Get URL file ");
					System.out.println("=============BEGIN================");
					Date beginTime = new Date();
					String valCode = new OCR().recognizeText(new File(filePath
							+ fileName), "png");
					entityJingDong.setPrice(valCode.trim().replace("Y", ""));
					Date endTime = new Date();
					long timeOfSearch = endTime.getTime() - beginTime.getTime();
					System.out.println(timeOfSearch
							+ "ms\n=============END================");

				}
			}
		} catch (Exception ex) {
			return null;
		}
		return entityJingDong;
	}
}
//
// public void tmall() throws IOException {
// System.out.println("BEGIN");
// String url =
// "http://list.tmall.com/search_product.htm?spm=3.1000473.295283.54.kOo8eI&3.357790.295283&active=1&area_code=330100&vmarket=0&wwonline=1&style=g&sort=s&start_price=20&n=60&s=0&cat=50026391";
// // String
// //
// url="http://list.tmall.com/search_product.htm?pic_detail=1&search_condition=24&cat=50025135&sort=s&sort=120&n=100";
// ArrayList<String> list = new ArrayList<String>();
// list.addAll(Arrays.asList(url.split("[?|&]")));
// // System.out.println(list);
// Connection connection = Jsoup.connect(url);
// for (int i = 1; i < list.size(); i++) {
// String[] arr = list.get(i).split("=");
// connection.data(arr[0], arr[1]);
// }
// Document doc = connection.userAgent("Mozilla").post();
// //
// Elements links = doc
// .select("body>div.page>div.main.hasAld>div.container.clearfix>div#J_ItemList>div.product>div.product-iWrap");
// int id = 0;
// for (Element link : links) {
// System.out.println("============ID============" + id++);
// Element link_productImg = link.select("div.productImg-wrap")
// .first();
// Element link_productImg_a = link.select(
// "div.productImg-wrap>a.productImg").first();
// Element link_productImg_img = link.select(
// "div.productImg-wrap>a.productImg>img").first();
//
// System.out.println("照片" + link_productImg_img);
//
// Element link_productThumb = link
// .select("div.productThumb.clearfix").first();
//
// Element link_productPrice_em = link.select("p.productPrice>em")
// .first();
// Element link_productPrice_del = link.select("p.productPrice>del")
// .first();
// System.out.println("价格" + link_productPrice_em.toString() + "原价:"
// + link_productPrice_del.toString());
//
// Element link_productTitle_a = link.select("p.productTitle>a")
// .first();
// System.out.println("标题:" + link_productTitle_a.text());
//
// Element link_productStatus_salemonth = link.select(
// "p.productStatus>em").first();
// Element link_productStatus_comments = link.select(
// "p.productStatus>a").first();
// System.out.println("月销售" + link_productStatus_salemonth.toString()
// + "评价数" + link_productStatus_comments.toString());
//
// Element link_productShop = link.select("div.productShop>a").first();
// System.out.println("商店：" + link_productShop.toString());
//
// Elements link_productAttrs = link.select("p.productAttrs>span>a");
// for (Element element : link_productAttrs) {
// System.out.println("属性：" + element.toString());
// }
// // System.out.println("=====================================");
// }
// System.out.println("END");
// }
//
// }
