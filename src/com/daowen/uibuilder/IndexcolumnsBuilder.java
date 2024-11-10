package com.daowen.uibuilder;

import java.text.MessageFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.daowen.entity.Indexcolumns;
import com.daowen.entity.Spcategory;
import com.daowen.service.IndexcolumnsService;
import com.daowen.service.SpcategoryService;
import com.daowen.util.BeansUtil;

public class IndexcolumnsBuilder {

	private IndexcolumnsService icSrv=null;
	private HttpServletRequest request;
	
	private SpcategoryService spcSrv=null;
	public IndexcolumnsBuilder(HttpServletRequest req){
		icSrv=BeansUtil.getBean("indexcolumnsService", IndexcolumnsService.class);
		spcSrv=BeansUtil.getBean("spcategoryService", SpcategoryService.class);
		this.request=req;
	}
 
    
     public String buildColumns(){
		
		int columncontentsize=10;
		StringBuffer sb=new StringBuffer();
		ShangpinBuilder  shangpinbuilder=new ShangpinBuilder(request);
		List<Indexcolumns>  list=icSrv.getEntity("");
		for (Indexcolumns indexcolumns : list) {
			Spcategory spc= spcSrv.load("where id="+indexcolumns.getColid());
			if(spc==null)
				continue;
			sb.append("<div class=\"abbr-panel clearfix\">");
			sb.append(MessageFormat.format("<div class=\"title\">{0}</div>",spc==null?"":spc.getName()));
			sb.append("<div class=\"body clearfix\">");
			sb.append("<div class=\"banner\">");
			sb.append(MessageFormat.format("<a href=\"{0}/e/shangpinlist.jsp?spcid={2}\"><img class=\"img\" src=\"{0}{1}\"/></a>",request.getContextPath(),spc==null?"":spc.getTupian(),spc.getId()));
			sb.append("</div>");//end banner
			sb.append("<div class=\"good-list\">");
			sb.append(shangpinbuilder.buildImageShangpin(indexcolumns.getColid(), columncontentsize));
			sb.append("</div>");//end good-list
			sb.append("</div>");//end body
			
			sb.append("</div>");
			
		}
		return sb.toString();
		
	}
	
	
}
