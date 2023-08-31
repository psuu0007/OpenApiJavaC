package com.edu.util;

import java.io.Serializable;

public class Paging implements Serializable{

	public static final int PAGE_SCALE = 5;
	public static final int BLOCK_SCALE = 3;
	
	private int curPage;
	
	private int totPage;
	private int totBlock;
	
	private int curBlock;
	
	private int prevBlock;
	private int nextBlock;
	
	private int pageBegin;
	private int pageEnd;
	
	private int blockBegin;
	private int blockEnd;
	
	public Paging(int count, int curPage) {
		this.curBlock = 1;
		this.curPage = curPage;
		
		
	}
	
	public void setPageRange() {
		pageBegin = (curPage - 1) * PAGE_SCALE + 1;
		pageEnd = pageBegin + PAGE_SCALE - 1;
	}
	
	public void setBlockRange() {
//		curBlock = (int)Math.ceil(BLOCK_SCALE)
	}
	
}
