package br.com.fiap.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.fiap.model.ProdutoModel;
import br.com.fiap.repository.ProdutoRepository;

@Controller
public class ProdutoController {

	ProdutoRepository produtoReposiory;

	@RequestMapping(value = { "/produto", "/" }, method = RequestMethod.GET)
	public String getProduto(Model model) {

		produtoReposiory = new ProdutoRepository();
		List<ProdutoModel> produtoList = produtoReposiory.getAll();

		model.addAttribute("abacaxi", produtoList);
		return "produto";
	}

	@RequestMapping(value = { "/produto/{id}" }, method = RequestMethod.GET)
	public String getById(@PathVariable("id") long id, Model model) {
		produtoReposiory = new ProdutoRepository();
		model.addAttribute("produtoDetalhe", produtoReposiory.getById(id));
		return "produto-detalhe";
	}
}
