package com.example.springboottest1.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class userLoginInterceptor implements HandlerInterceptor {
    /*
	 * 视图渲染之后的操作
	 */
    @Override
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3) throws Exception {

        System.out.println("执行到了afterCompletion方法");
    }

    /*
     * 处理请求完成后,视图渲染之前的处理操作
     * 通过ModelAndView参数改变显示的视图，或发往视图的方法
     */
    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3) throws Exception {

        System.out.println("执行到了postHandle方法");
    }

    /*
     * 进入controller层之前拦截请求
     * 返回值：表示是否将当前的请求拦截下来  false：拦截请求，请求别终止。true：请求不被拦截，继续执行
     * Object obj:表示被拦的请求的目标对象（controller中方法）
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {

        System.out.println("执行到了preHandle方法");
        System.out.println(obj);

        if(request.getSession().getAttribute("session_user") == null){

            //当被拦截器拦截时，页面跳转
            response.sendRedirect("/user/loginHtml");
            return false;
        }

        return true;
    }
}
