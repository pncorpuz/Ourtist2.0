package edu.ourtist.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.ourtist.javabean.Artworks;
import edu.ourtist.services.ArtworksService;

/**
 * Servlet implementation class DisplayArtworksServlet
 */
@WebServlet("/DisplayArtworksServlet")
public class DisplayArtworksServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DisplayArtworksServlet() {
		super();
		// TODO Auto-generated constructor stub

		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ArtworksService ArtworksService = new ArtworksService();
		ArrayList<Artworks> artworks = ArtworksService.getAllArtworks();
		
		request.setAttribute("artworkslists", artworks);
		
		request.getRequestDispatcher("viewartworks.jsp").forward(request,response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
