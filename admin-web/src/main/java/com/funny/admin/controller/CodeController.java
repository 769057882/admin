package com.funny.admin.controller;

import java.awt.image.BufferedImage;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.code.kaptcha.Producer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by fangli@autohome.com.cn on 2016/6/28.
 */
@Controller
public class CodeController {
    @Resource
   private Producer captchaProducer;

    /**
     * 生成登陆验证码
     *
     * @param request
     * @param response
     * @return
     * @throws Exception
     * @author
     */
    @RequestMapping(value = "/code", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String mark=request.getParameter("mark");
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");
        String capText = captchaProducer.createText();
        request.getSession().setAttribute(mark, capText);
        request.getSession().setAttribute("kaptchatime", System.currentTimeMillis());
        BufferedImage bi = captchaProducer.createImage(capText);
        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
        return null;
    }
}
