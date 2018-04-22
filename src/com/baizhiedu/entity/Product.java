package com.baizhiedu.entity;

import java.io.Serializable;
import java.util.Date;

public class Product implements Serializable {
	
	private Integer productId;
	private String productName;
	private String productAuthor;
	private String productPublish;
	private Date productPublishTime;
	private Integer productEdition;
	private Date productPrintingTime;
	private Integer productImpression;
	private String productIsbn;
	private Integer productWord;
	private Integer productPage;
	private String productSize;
	private String productPapaer;
	private String productPack;
	private Double productPrice;
	private Double productDprice;
	private String productPic;
	private String productRecommend;
	private String productComtentIntro;
	private String productAuthorIntro;
	private String productCatolog;
	private String productComment;
	private Integer productSalesVolume;
	private Date productReleaseTime;
	private Integer productInventory;
	private Integer categoryId;
	private Integer productScore;
	private Integer productPV;
	
	public Product() {
		super();
	}

	public Product(Integer productId, String productName, String productAuthor,
			String productPublish, Date productPublishTime,
			Integer productEdition, Date productPrintingTime,
			Integer productImpression, String productIsbn, Integer productWord,
			Integer productPage, String productSize, String productPapaer,
			String productPack, Double productPrice, Double productDprice,
			String productPic, String productRecommend,
			String productComtentIntro, String productAuthorIntro,
			String productCatolog, String productComment,
			Integer productSalesVolume, Date productReleaseTime,
			Integer productInventory, Integer categoryId, Integer productScore,
			Integer productPV) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productAuthor = productAuthor;
		this.productPublish = productPublish;
		this.productPublishTime = productPublishTime;
		this.productEdition = productEdition;
		this.productPrintingTime = productPrintingTime;
		this.productImpression = productImpression;
		this.productIsbn = productIsbn;
		this.productWord = productWord;
		this.productPage = productPage;
		this.productSize = productSize;
		this.productPapaer = productPapaer;
		this.productPack = productPack;
		this.productPrice = productPrice;
		this.productDprice = productDprice;
		this.productPic = productPic;
		this.productRecommend = productRecommend;
		this.productComtentIntro = productComtentIntro;
		this.productAuthorIntro = productAuthorIntro;
		this.productCatolog = productCatolog;
		this.productComment = productComment;
		this.productSalesVolume = productSalesVolume;
		this.productReleaseTime = productReleaseTime;
		this.productInventory = productInventory;
		this.categoryId = categoryId;
		this.productScore = productScore;
		this.productPV = productPV;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductAuthor() {
		return productAuthor;
	}

	public void setProductAuthor(String productAuthor) {
		this.productAuthor = productAuthor;
	}

	public String getProductPublish() {
		return productPublish;
	}

	public void setProductPublish(String productPublish) {
		this.productPublish = productPublish;
	}

	public Date getProductPublishTime() {
		return productPublishTime;
	}

	public void setProductPublishTime(Date productPublishTime) {
		this.productPublishTime = productPublishTime;
	}

	public Integer getProductEdition() {
		return productEdition;
	}

	public void setProductEdition(Integer productEdition) {
		this.productEdition = productEdition;
	}

	public Date getProductPrintingTime() {
		return productPrintingTime;
	}

	public void setProductPrintingTime(Date productPrintingTime) {
		this.productPrintingTime = productPrintingTime;
	}

	public Integer getProductImpression() {
		return productImpression;
	}

	public void setProductImpression(Integer productImpression) {
		this.productImpression = productImpression;
	}

	public String getProductIsbn() {
		return productIsbn;
	}

	public void setProductIsbn(String productIsbn) {
		this.productIsbn = productIsbn;
	}

	public Integer getProductWord() {
		return productWord;
	}

	public void setProductWord(Integer productWord) {
		this.productWord = productWord;
	}

	public Integer getProductPage() {
		return productPage;
	}

	public void setProductPage(Integer productPage) {
		this.productPage = productPage;
	}

	public String getProductSize() {
		return productSize;
	}

	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}

	public String getProductPapaer() {
		return productPapaer;
	}

	public void setProductPapaer(String productPapaer) {
		this.productPapaer = productPapaer;
	}

	public String getProductPack() {
		return productPack;
	}

	public void setProductPack(String productPack) {
		this.productPack = productPack;
	}

	public Double getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Double productPrice) {
		this.productPrice = productPrice;
	}

	public Double getProductDprice() {
		return productDprice;
	}

	public void setProductDprice(Double productDprice) {
		this.productDprice = productDprice;
	}

	public String getProductPic() {
		return productPic;
	}

	public void setProductPic(String productPic) {
		this.productPic = productPic;
	}

	public String getProductRecommend() {
		return productRecommend;
	}

	public void setProductRecommend(String productRecommend) {
		this.productRecommend = productRecommend;
	}

	public String getProductComtentIntro() {
		return productComtentIntro;
	}

	public void setProductComtentIntro(String productComtentIntro) {
		this.productComtentIntro = productComtentIntro;
	}

	public String getProductAuthorIntro() {
		return productAuthorIntro;
	}

	public void setProductAuthorIntro(String productAuthorIntro) {
		this.productAuthorIntro = productAuthorIntro;
	}

	public String getProductCatolog() {
		return productCatolog;
	}

	public void setProductCatolog(String productCatolog) {
		this.productCatolog = productCatolog;
	}

	public String getProductComment() {
		return productComment;
	}

	public void setProductComment(String productComment) {
		this.productComment = productComment;
	}

	public Integer getProductSalesVolume() {
		return productSalesVolume;
	}

	public void setProductSalesVolume(Integer productSalesVolume) {
		this.productSalesVolume = productSalesVolume;
	}

	public Date getProductReleaseTime() {
		return productReleaseTime;
	}

	public void setProductReleaseTime(Date productReleaseTime) {
		this.productReleaseTime = productReleaseTime;
	}

	public Integer getProductInventory() {
		return productInventory;
	}

	public void setProductInventory(Integer productInventory) {
		this.productInventory = productInventory;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public Integer getProductScore() {
		return productScore;
	}

	public void setProductScore(Integer productScore) {
		this.productScore = productScore;
	}

	public Integer getProductPV() {
		return productPV;
	}

	public void setProductPV(Integer productPV) {
		this.productPV = productPV;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName="
				+ productName + ", productAuthor=" + productAuthor
				+ ", productPublish=" + productPublish
				+ ", productPublishTime=" + productPublishTime
				+ ", productEdition=" + productEdition
				+ ", productPrintingTime=" + productPrintingTime
				+ ", productImpression=" + productImpression + ", productIsbn="
				+ productIsbn + ", productWord=" + productWord
				+ ", productPage=" + productPage + ", productSize="
				+ productSize + ", productPapaer=" + productPapaer
				+ ", productPack=" + productPack + ", productPrice="
				+ productPrice + ", productDprice=" + productDprice
				+ ", productPic=" + productPic + ", productRecommend="
				+ productRecommend + ", productComtentIntro="
				+ productComtentIntro + ", productAuthorIntro="
				+ productAuthorIntro + ", productCatolog=" + productCatolog
				+ ", productComment=" + productComment
				+ ", productSalesVolume=" + productSalesVolume
				+ ", productReleaseTime=" + productReleaseTime
				+ ", productInventory=" + productInventory + ", categoryId="
				+ categoryId + ", productScore=" + productScore
				+ ", productPV=" + productPV + "]";
	}

}
