package com.how2java.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.how2java.mapper.BlogMapper;
import com.how2java.pojo.Blog;
import com.how2java.pojo.Tag;
import com.how2java.pojo.User;
import com.how2java.service.BlogService;
import com.how2java.service.TagService;
import com.how2java.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class BlogController {
	
	@Autowired
	BlogService blogService;
	@Autowired
	TagService tagService;
	@Autowired
	UserService userService;
	
	@RequestMapping("blog-add")
	public void blogadd(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 接受request数据
		BufferedReader reader = request.getReader();
		String readerStr = "";// 接收用户端传来的JSON字符串
		String line;
		while ((line = reader.readLine()) != null) {
			readerStr = readerStr.concat(line);
		}
		@SuppressWarnings("rawtypes")
		HashMap map = JSONObject.parseObject(readerStr, HashMap.class);
		String content = (String) map.get("content");
		String title = URLDecoder.decode(request.getParameter("title"),"UTF-8");
		String subtitle = URLDecoder.decode(request.getParameter("subtitle"),"UTF-8");
		String username = "admin";
		String id1 = URLDecoder.decode(request.getParameter("id1"),"UTF-8");
		String id2 = URLDecoder.decode(request.getParameter("id2"),"UTF-8");
		String id3 = URLDecoder.decode(request.getParameter("id3"),"UTF-8");
		String category = URLDecoder.decode(request.getParameter("category"),"UTF-8");
		String top = URLDecoder.decode(request.getParameter("top"),"UTF-8");
		
		// 处理数据
		UUID uuid = UUID.randomUUID();
		String id = uuid.toString();
		Date curTime = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date = sdf.format(curTime);
		Blog blog = new Blog();
		blog.setId(id);
		blog.setTitle(title);
		blog.setSubtitle(subtitle);
		blog.setUsername(username);
		blog.setArticle("article");
		blog.setState("publish");
		blog.setDate(date);
		blog.setContent(content);
		blog.setViews(0);
		blog.setCategory(category);
		blog.setTop(top);
		Tag tag = new Tag();
		tag.setId1(id1);
		tag.setId2(id2);
		tag.setId3(id3);
		tag.setUserid(id);
		tagService.add(tag);
		// 返回json值
		String json = "";
		Gson gson = new GsonBuilder().disableHtmlEscaping().create();
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		response.setStatus(HttpServletResponse.SC_OK);
			try {
			    blogService.add(blog);
				json = "{\"result\":\"success\"}";
				json = gson.toJson(json);
				out.write(json);
			} catch (Exception e) {
				json = "{\"result\":\"fail\"}";
				json = gson.toJson(json);
				out.write(json);
			}
		
	}
	
	@RequestMapping("blog-list")
	public ModelAndView bloglist(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int current;
		if (request.getParameter("pagenum") == null) {
			current = 1;
		} else {
			current = Integer.parseInt(request.getParameter("pagenum"));
		}
		ModelAndView mav = new ModelAndView();
		List<Blog> cs = blogService.list();
		List<Blog> newblog;
		int total = cs.size() / 10;
		if (total * 10 != cs.size()) {
			total = total + 1;
		}
		if (current != total) {
			newblog = cs.subList((current - 1) * 10, (current) * 10);
		} else {
			newblog = cs.subList((current - 1) * 10, cs.size());
		}
		mav.addObject("cs", newblog);
		mav.setViewName("blog/blog-list");
		mav.addObject("count", cs.size());
		HttpSession session = request.getSession();
		session.setAttribute("pagenum", current);
		session.setAttribute("count", cs.size());
		return mav;
	}
	
	@RequestMapping("blog-delete")
	public ModelAndView blogdel(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		blogService.delete(id);
		return new ModelAndView("redirect:" + "/blog-list");
	}
	
	@RequestMapping("blog-search")
	public ModelAndView blogsearch(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		if (!request.getParameter("id").equals("")) {
			String id = request.getParameter("id");
			List<Blog> cs = blogService.getById(id);
			mav.addObject("cs", cs);
			mav.setViewName("blog/blog-search");
			mav.addObject("count", cs.size());
			return mav;
		} else {
			return new ModelAndView("redirect:" + "/blog-list");
		}
	}

	@RequestMapping("blog-getdata")
	public ModelAndView bloggetdata(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		List<Blog> cs = blogService.getById(id);
		mav.addObject("cs", cs);
		mav.addObject("content", cs.get(0).getContent());
		mav.setViewName("blog/blog-edit");
		return mav;
	}
	
	@RequestMapping("blog-edit")
	public void blogedit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 接受request数据
		BufferedReader reader = request.getReader();
		String readerStr = "";// 接收用户端传来的JSON字符串
		String line;
		while ((line = reader.readLine()) != null) {
			readerStr = readerStr.concat(line);
		}

		@SuppressWarnings("rawtypes")
		HashMap map = JSONObject.parseObject(readerStr, HashMap.class);
		String content = (String) map.get("content");
		String title = URLDecoder.decode(request.getParameter("title"),"UTF-8");
		String subtitle = URLDecoder.decode(request.getParameter("subtitle"),"UTF-8");
		String id = URLDecoder.decode(request.getParameter("id"),"UTF-8");
		String top = URLDecoder.decode(request.getParameter("top"),"UTF-8");
		String category = URLDecoder.decode(request.getParameter("category"),"UTF-8");
		
		
		// 处理数据
		Blog blog = new Blog();
		blog.setId(id);
		blog.setTitle(title);
		blog.setSubtitle(subtitle);
		blog.setUsername("admin");
		blog.setArticle("article");
		blog.setCategory(category);
		blog.setTop(top);
		blog.setState("publish");
		blog.setContent(content);


		// 返回json值
		String json = "";
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		response.setStatus(HttpServletResponse.SC_OK);
		Gson gson = new GsonBuilder().disableHtmlEscaping().create();
			try {
			    blogService.update(blog);
				json = "{\"result\":\"success\"}";
				json = gson.toJson(json);
				out.write(json);
			} catch (Exception e) {
				json = "{\"result\":\"fail\"}";
				json = gson.toJson(json);
				out.write(json);
			}
		
	}
	
	@RequestMapping("frontend")
	public ModelAndView frontend(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		String current  = (String) request.getParameter("current");
		int currentpage = 0;
		if(current == null) {
			currentpage = 1;
		}else {
			currentpage = Integer.parseInt(current);
		}
		int pages;
		List<Blog> cs = blogService.list();
		if(cs.isEmpty()) {
			pages = 1;
		}else {
			if(cs.size()%10 != 0) {
		pages = (cs.size()/10) + 1;
		}else {
			pages = cs.size()/10;
		}
		}
		if(currentpage == pages){
			cs = cs.subList((currentpage-1)*10, cs.size());
		}else {
			cs = cs.subList((currentpage-1)*10, currentpage*10-1);
		}
		List<User> cs2 = userService.list();
		mav.addObject("articlecount", cs.size());
		mav.addObject("usercount", cs2.size());
		mav.addObject("cs", cs);
		mav.setViewName("frontend/frontend");
		request.setAttribute("current", currentpage);
		request.setAttribute("pages", pages);
		return mav;
	}
	
	@RequestMapping("userweb")
	public ModelAndView userweb(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		ModelAndView mav = new ModelAndView();
		String current  = (String) request.getAttribute("current");
		int currentpage = 0;
		if(current == null) {
			currentpage = 1;
		}else {
			currentpage = Integer.parseInt(current);
		}
		int pages;
		List<Blog> cs = blogService.getBlogByUsername(username);
		List<Blog> newblog;
		if(cs.isEmpty()) {
			pages = 1;
		}else {
			if(cs.size()%10 != 0) {
		pages = (cs.size()/10) + 1;
		}else {
			pages = cs.size()/10;
		}
		}
		if(currentpage == pages){
			newblog = cs.subList((currentpage-1)*10, cs.size());
		}else {
			newblog = cs.subList((currentpage-1)*10, currentpage*10-1);
		}
		List<User> cs2 = userService.list();
		mav.addObject("articlecount", cs.size());
		mav.addObject("usercount", cs2.size());
		mav.addObject("cs", newblog);
		mav.setViewName("frontend/userweb");
		request.setAttribute("current", currentpage);
		request.setAttribute("pages", pages);
		return mav;
	}
	
	@RequestMapping("detail")
	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView();
		String id = request.getParameter("id");
		List<Blog> cs = blogService.getById(id);
		Blog blog = new Blog();
		blog.setId(id);
		String category = cs.get(0).getCategory();
		int views = cs.get(0).getViews();
		views++;
		blog.setViews(views);
		blogService.updateViews(blog); 
		mav.addObject("cs", cs);
		List<User> cs2 = userService.list();
		List<Blog> cs3 = blogService.list();
		mav.addObject("articlecount", cs3.size());
		mav.addObject("usercount", cs2.size());
		mav.addObject("title", cs.get(0).getTitle());
		request.setAttribute("category", category);
		mav.setViewName("frontend/detail");
		return mav;
	}
	
	@RequestMapping("search")
	public ModelAndView search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		String current  = (String) request.getParameter("current");
		String content  = (String) request.getParameter("content");
		int currentpage = 0;
		if(current == null) {
			currentpage = 1;
		}else {
			currentpage = Integer.parseInt(current);
		}
		int pages;
		List<Blog> cs = blogService.searchlike(content);
		if(cs.isEmpty()) {
			pages = 1;
		}else {
			if(cs.size()%10 != 0) {
		pages = (cs.size()/10) + 1;
		}else {
			pages = cs.size()/10;
		}
		}
		if(currentpage == pages){
			cs = cs.subList((currentpage-1)*10, cs.size());
		}else {
			cs = cs.subList((currentpage-1)*10, currentpage*10-1);
		}
		List<User> cs2 = userService.list();
		mav.addObject("articlecount", cs.size());
		mav.addObject("usercount", cs2.size());
		mav.addObject("search", content);
		mav.addObject("cs", cs);
		mav.setViewName("frontend/search");
		request.setAttribute("current", currentpage);
		request.setAttribute("pages", pages);
		return mav;
	}
	
	//category
	@RequestMapping("cate")
	public ModelAndView cate(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mav = new ModelAndView();
		String current  = (String) request.getParameter("current");
		String category  = (String) request.getParameter("category");
		int currentpage = 0;
		if(current == null) {
			currentpage = 1;
		}else {
			currentpage = Integer.parseInt(current);
		}
		int pages;
		List<Blog> cs = blogService.getBlogByCategory(category);
		if(cs.isEmpty()) {
			pages = 1;
		}else {
			if(cs.size()%10 != 0) {
		pages = (cs.size()/10) + 1;
		}else {
			pages = cs.size()/10;
		}
		}
		if(currentpage == pages){
			cs = cs.subList((currentpage-1)*10, cs.size());
		}else {
			cs = cs.subList((currentpage-1)*10, currentpage*10-1);
		}
		List<User> cs2 = userService.list();
		mav.addObject("articlecount", cs.size());
		mav.addObject("usercount", cs2.size());
		request.setAttribute("category", category);
		mav.addObject("cs", cs);
		mav.setViewName("frontend/category");
		request.setAttribute("current", currentpage);
		request.setAttribute("pages", pages);
		return mav;
	}
}