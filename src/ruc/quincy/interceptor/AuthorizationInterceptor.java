package ruc.quincy.interceptor;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import ruc.quincy.domain.User;

public class AuthorizationInterceptor implements HandlerInterceptor{
	
	//不拦截login,register
	private static final String[] IGNORE_URI={"/login","/register"};
	// 该方法用于请求完成之后执行，主要用于清理资源
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("AuthorizationInterceptor afterCompletion--->");
		
	}
	
	// 该方法可以在Controller的方法调用之后执行，方法中可以对ModelView进行操作
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		System.out.println("AuthorizationInterceptor postHandle--->");
		
	}
	
	// preHandle是进行处理拦截器用的，该方法将在Controller处理之前进行调用
	//该方法返回值为true时拦截器才会继续往下执行，该方法返回值为false时，整个请求将会结束
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		//设置flag,用于判断用户是否登录，默认为false
		boolean flag=false;
		//获取请求的路径进行判断
		String servletPath=request.getServletPath();
		//判断请求是否需要拦截
		for(String uri: IGNORE_URI){
			if(servletPath.contains(uri)){
				flag=true;
				break;
			}
		}
		//拦截请求
		if(!flag){
			//1.获取session用户
			User user=(User)request.getSession().getAttribute("user");
			//2.判断用户是否已经登录
			if(user==null){
				//如果用户没登录。、调转到登录页面
				System.out.println("AuthorizationInterceptor拦截请求：");
				request.setAttribute("message", "请先登录再访问主页");
				request.getRequestDispatcher("login").forward(request, response);
			}else{
				//如果用户登录，则验证通过，放行
				System.out.println("AuthorizationInterceptor 放行请求：");
				flag=true;
			}
		}
		return flag;
	}
}
