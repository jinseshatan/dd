package com.baizhiedu.entity;

import java.io.Serializable;

public class Page implements Serializable {

	private int pageIndex = 1;	//当前页
	private int totalPage = 1;	//总页
	private int pageSize = 5;	//每页显示数量
	private int totalRecords = 0;	//数据总数
	private int beginRows = 1;	//开始行数
	private int endRows = 5;	//结束行数
	private boolean isHavePrePage = false;
	private boolean isHaveNextPage = false;
	
	public Page() {
		super();
	}
	
	public Page(Integer pageIndex, Integer totalRecords) {
		this.pageIndex = pageIndex;
		this.totalRecords = totalRecords;
		
		if(this.totalRecords % this.pageSize == 0){
			this.totalPage = this.totalRecords / this.pageSize;
		} else {
			this.totalPage = this.totalRecords / this.pageSize + 1;
		}
		if(this.pageIndex < 1){
			this.pageIndex = 1;
		}
		if(this.pageIndex > this.totalPage){
			this.pageIndex = this.totalPage;
		}
		
		this.beginRows = (this.pageIndex - 1) * this.pageSize + 1;
		if(this.pageIndex == this.totalPage){
			this.endRows = this.totalRecords;
		} else {
			this.endRows = this.pageIndex * this.pageSize;
		}
		
		if(this.pageIndex < this.totalPage){
			this.isHaveNextPage = true;
		}
		if(this.pageIndex > 1){
			this.isHavePrePage = true;
		}
	}

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}

	public int getBeginRows() {
		return beginRows;
	}

	public void setBeginRows(int beginRows) {
		this.beginRows = beginRows;
	}

	public int getEndRows() {
		return endRows;
	}

	public void setEndRows(int endRows) {
		this.endRows = endRows;
	}

	public boolean getIsHavePrePage() {
		return isHavePrePage;
	}

	public void setIsHavePrePage(boolean isHavePrePage) {
		this.isHavePrePage = isHavePrePage;
	}

	public boolean getIsHaveNextPage() {
		return isHaveNextPage;
	}

	public void setIsHaveNextPage(boolean isHaveNextPage) {
		this.isHaveNextPage = isHaveNextPage;
	}

	@Override
	public String toString() {
		return "Page [pageIndex=" + pageIndex + ", totalPage=" + totalPage
				+ ", pageSize=" + pageSize + ", totalRecords=" + totalRecords
				+ ", beginRows=" + beginRows + ", endRows=" + endRows
				+ ", isHavePrePage=" + isHavePrePage + ", isHaveNextPage="
				+ isHaveNextPage + "]";
	}
}
