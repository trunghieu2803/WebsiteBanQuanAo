/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.*;
import entity.*;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;

/**
 *
 * @author Hieu.Nguyxn
 */
@WebServlet(name = "DanhMucSanPhamControl", urlPatterns = {"/danhmucsanpham"})
public class DanhMucSanPhamControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DaoSanPham daoSP = new DaoSanPham();
        DaoDanhMucSanPham daoDMSP = new DaoDanhMucSanPham();

        String cid = request.getParameter("test");
        String spId = request.getParameter("spId");
        List<SanPham> ListSP = daoSP.getAllSanPhamByDMSP(cid);
        request.setAttribute("ListSP", ListSP);
        
        SanPham sp = daoSP.getAllSanPhamByMSP(spId);
        
        
        

        List<DanhMucSanPham> ListDMSP = daoDMSP.getAllDanhMucSanPham();
        request.setAttribute("ListDMSP", ListDMSP);

        PrintWriter out = response.getWriter();
        for (SanPham o : ListSP) {
            out.println("<div class=\"col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women\">\n"
                    + "                            <!-- Block2 -->\n"
                    + "\n"
                    + "                            <div class=\"block2\">\n"
                    + "                                <div class=\"block2-pic hov-img0\">\n"
                    + "                                    <img src=\"images/" + o.getAnh() + "\" alt=\"IMG-PRODUCT\">\n"
                    + "\n"
                    + "                                    <button onclick=\"ShowQuickView("+o.getSanPhamid()+")\" class=\"block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04 js-show-modal1\"> \n"
                    + "                                        Quick View\n"
                    + "                                    </button>\n"
                    + "                                </div>\n"
                    + "\n"
                    + "                                <div class=\"block2-txt flex-w flex-t p-t-14\">\n"
                    + "                                    <div class=\"block2-txt-child1 flex-col-l \">\n"
                    + "                                        <a href=\"product-detail.html\" class=\"stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6\">\n"
                    + "                                            " + o.getTensanpham() + "\n"
                    + "                                        </a>\n"
                    + "\n"
                    + "                                        <span class=\"stext-105 cl3\">\n"
                    + "                                            " + o.getGiatien() + "\n"
                    + "                                        </span>\n"
                    + "                                    </div>\n"
                    + "\n"
                    + "                                    <div class=\"block2-txt-child2 flex-r p-t-3\">\n"
                    + "                                        <a href=\"#\" class=\"btn-addwish-b2 dis-block pos-relative js-addwish-b2\">\n"
                    + "                                            <img class=\"icon-heart1 dis-block trans-04\" src=\"images/icons/icon-heart-01.png\" alt=\"ICON\">\n"
                    + "                                            <img class=\"icon-heart2 dis-block trans-04 ab-t-l\" src=\"images/icons/icon-heart-02.png\" alt=\"ICON\">\n"
                    + "                                        </a>\n"
                    + "                                    </div>\n"
                    + "                                </div>\n"
                    + "                            </div>\n"
                    + "                        </div>");
        }

        if (spId != null) {
            out.println("<div class=\"wrap-modal1 js-modal1 p-t-60 p-b-20 show-modal1\">\n"
                    + "		<div onclick=\"closeQuickView()\" class=\"overlay-modal1 js-hide-modal1\"></div>\n"
                    + "\n"
                    + "		<div class=\"container\">\n"
                    + "			<div class=\"bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent\">\n"
                    + "				<button onclick=\"closeQuickView()\" class=\"how-pos3 hov3 trans-04 js-hide-modal1\">\n"
                    + "					<img src=\"images/icons/icon-close.png\" alt=\"CLOSE\">\n"
                    + "				</button>\n"
                    + "\n"
                    + "				<div class=\"row\">\n"
                    + "					<div class=\"col-md-6 col-lg-7 p-b-30\">\n"
                    + "						<div class=\"p-l-25 p-r-30 p-lr-0-lg\">\n"
                    + "							<div class=\"wrap-slick3 flex-sb flex-w\">\n"
                    + "								<div class=\"slick3 gallery-lb\">\n"
                    + "									<div class=\"item-slick3\" data-thumb=\"images/product-detail-01.jpg\">\n"
                    + "										<div class=\"wrap-pic-w pos-relative\">\n"
                    + "											<img src=\"images/"+sp.getAnh()+"\" alt=\"IMG-PRODUCT\">\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>\n"
                    + "					</div>\n"
                    + "					\n"
                    + "					<div class=\"col-md-6 col-lg-5 p-b-30\">\n"
                    + "						<div class=\"p-r-50 p-t-5 p-lr-0-lg\">\n"
                    + "							<h4 class=\"mtext-105 cl2 js-name-detail p-b-14\">\n"
                    + "								"+sp.getTensanpham()+"\n"
                    + "							</h4>\n"
                    + "\n"
                    + "							<span class=\"mtext-106 cl2\">\n"
                    + "								"+sp.getGiatien()+"\n"
                    + "							</span>\n"
                    + "\n"
                    + "							<p class=\"stext-102 cl3 p-t-23\">\n"
                    + "								"+sp.getMotasanpham()+"\n"
                    + "							</p>\n"
                    + "							\n"
                    + "							<!--  -->\n"
                    + "							<div class=\"p-t-33\">\n"
                    + "								<div class=\"flex-w flex-r-m p-b-10\">\n"
                    + "									<div class=\"size-203 flex-c-m respon6\">\n"
                    + "										Chọn size\n"
                    + "									</div>\n"
                    + "\n"
                    + "									<div class=\"size-204 respon6-next\">\n"
                    + "										<div class=\"rs1-select2 bor8 bg0\">\n"
                    + "											<select class=\"js-select2\" name=\"time\">\n"
                    + "												<option>Choose an option</option>\n"
                    + "												<option>"+sp.getSize()+"</option>\n"
                    + "											</select>\n"
                    + "											<div class=\"dropDownSelect2\"></div>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "\n"
                    + "								<div class=\"flex-w flex-r-m p-b-10\">\n"
                    + "									<div class=\"size-204 flex-w flex-m respon6-next\">\n"
                    + "										<div class=\"wrap-num-product flex-w m-r-20 m-tb-10\">\n"
                    + "											<div onclick=\"BtnProductDown()\" class=\"btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m\">\n"
                    + "												<i class=\"fs-16 zmdi zmdi-minus\"></i>\n"
                    + "											</div>\n"
                    + "\n"
                    + "											<input class=\"mtext-104 cl3 txt-center num-product\" type=\"number\" name=\"num-product\" value=\"1\">\n"
                    + "\n"
                    + "											<div onclick=\"BtnProductUp()\" class=\"btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m\">\n"
                    + "												<i class=\"fs-16 zmdi zmdi-plus\"></i>\n"
                    + "											</div>\n"
                    + "										</div>\n"
                    + "\n"
                    + "										<button class=\"flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail\">\n"
                    + "											Add to cart\n"
                    + "										</button>\n"
                    + "									</div>\n"
                    + "								</div>	\n"
                    + "							</div>\n"
                    + "\n"
                    + "							<!--  -->\n"
                    + "							<div class=\"flex-w flex-m p-l-100 p-t-40 respon7\">\n"
                    + "								<div class=\"flex-m bor9 p-r-10 m-r-11\">\n"
                    + "									<a href=\"#\" class=\"fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100\" data-tooltip=\"Add to Wishlist\">\n"
                    + "										<i class=\"zmdi zmdi-favorite\"></i>\n"
                    + "									</a>\n"
                    + "								</div>\n"
                    + "\n"
                    + "								<a href=\"#\" class=\"fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100\" data-tooltip=\"Facebook\">\n"
                    + "									<i class=\"fa fa-facebook\"></i>\n"
                    + "								</a>\n"
                    + "\n"
                    + "								<a href=\"#\" class=\"fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100\" data-tooltip=\"Twitter\">\n"
                    + "									<i class=\"fa fa-twitter\"></i>\n"
                    + "								</a>\n"
                    + "\n"
                    + "								<a href=\"#\" class=\"fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100\" data-tooltip=\"Google Plus\">\n"
                    + "									<i class=\"fa fa-google-plus\"></i>\n"
                    + "								</a>\n"
                    + "							</div>\n"
                    + "						</div>\n"
                    + "					</div>\n"
                    + "				</div>\n"
                    + "			</div>\n"
                    + "		</div>\n"
                    + "	</div>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
