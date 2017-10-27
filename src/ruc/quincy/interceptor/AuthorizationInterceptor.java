package ruc.quincy.interceptor;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import ruc.quincy.domain.User;

public class AuthorizationInterceptor implements HandlerInterceptor{
	
	//������login,register
	private static final String[] IGNORE_URI={"/login","/register"};
	// �÷��������������֮��ִ�У���Ҫ����������Դ
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		System.out.println("AuthorizationInterceptor afterCompletion--->");
		
	}
	
	// �÷���������Controller�ķ�������֮��ִ�У������п��Զ�ModelView���в���
	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		System.out.println("AuthorizationInterceptor postHandle--->");
		
	}
	
	// preHandle�ǽ��д����������õģ��÷�������Controller����֮ǰ���е���
	//�÷�������ֵΪtrueʱ�������Ż��������ִ�У��÷�������ֵΪfalseʱ���������󽫻����
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		//����flag,�����ж��û��Ƿ��¼��Ĭ��Ϊfalse
		boolean flag=false;
		//��ȡ�����·�������ж�
		String servletPath=request.getServletPath();
		//�ж������Ƿ���Ҫ����
		for(String uri: IGNORE_URI){
			if(servletPath.contains(uri)){
				flag=true;
				break;
			}
		}
		//��������
		if(!flag){
			//1.��ȡsession�û�
			User user=(User)request.getSession().getAttribute("user");
			//2.�ж��û��Ƿ��Ѿ���¼
			if(user==null){
				//����û�û��¼������ת����¼ҳ��
				System.out.println("AuthorizationInterceptor��������");
				request.setAttribute("message", "���ȵ�¼�ٷ�����ҳ");
				request.getRequestDispatcher("login").forward(request, response);
			}else{
				//����û���¼������֤ͨ��������
				System.out.println("AuthorizationInterceptor ��������");
				flag=true;
			}
		}
		return flag;
	}
}
