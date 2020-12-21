package pl.coderslab.charity;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.entity.Institution;
import pl.coderslab.charity.repository.InstitutionRepository;

import java.util.List;
import java.util.Optional;


@Controller
public class HomeController {

    private InstitutionRepository institutionRepository;

    public HomeController(InstitutionRepository institutionRepository) {
        this.institutionRepository = institutionRepository;
    }

    @RequestMapping("/")
    public String homeAction(Model model){
        model.addAttribute("institutions", institutionRepository.findAll());
        return "index";
    }

}
