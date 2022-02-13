<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* C:\laragon\www\october/themes/maditek/partials/header.htm */
class __TwigTemplate_357688272777db0d927a3d5dcce42ce949c0b9a65c1d2674fa74e673ca2a938c extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
        $this->sandbox = $this->env->getExtension('\Twig\Extension\SandboxExtension');
        $this->checkSecurity();
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo "<div class=\"container\">
    <nav class=\"navbar\" role=\"navigation\" aria-label=\"main navigation\">
      <div class=\"navbar-brand\">
        <a class=\"navbar-item\" href=\"";
        // line 4
        echo $this->extensions['System\Twig\Extension']->appFilter("/");
        echo "\">
          <img src=\"";
        // line 5
        echo $this->extensions['Cms\Twig\Extension']->themeFilter("assets/images/logo-repositorio-peb.png");
        echo "\" width=\"112\" height=\"28\">
        </a>
    
        <a role=\"button\" class=\"navbar-burger\" aria-label=\"menu\" aria-expanded=\"false\" data-target=\"navbarBasicExample\">
          <span aria-hidden=\"true\"></span>
          <span aria-hidden=\"true\"></span>
          <span aria-hidden=\"true\"></span>
        </a>
      </div>
    
      <div id=\"navbarBasicExample\" class=\"navbar-menu\">
        <div class=\"navbar-start\">
          <a href=\"";
        // line 17
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("acerca");
        echo "\" class=\"navbar-item\">
            Acerca
          </a>
    
          <a href=\"";
        // line 21
        echo $this->extensions['Cms\Twig\Extension']->pageFilter("contacto");
        echo "\" class=\"navbar-item\">
            Contacto
          </a>
        </div>
      </div>
    </nav>
</div>

<section class=\"hero notification is-primary\">
  <div class=\"hero-body p-4\">
      <div class=\"container\">
          <h1 class=\"title\">Maditek Labs</h1>
          <p class=\"subtitle\">Diseño y desarrollo web responsive</p>
      </div>
  </div>
</section>";
    }

    public function getTemplateName()
    {
        return "C:\\laragon\\www\\october/themes/maditek/partials/header.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  70 => 21,  63 => 17,  48 => 5,  44 => 4,  39 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"container\">
    <nav class=\"navbar\" role=\"navigation\" aria-label=\"main navigation\">
      <div class=\"navbar-brand\">
        <a class=\"navbar-item\" href=\"{{ '/'|app }}\">
          <img src=\"{{ 'assets/images/logo-repositorio-peb.png'|theme }}\" width=\"112\" height=\"28\">
        </a>
    
        <a role=\"button\" class=\"navbar-burger\" aria-label=\"menu\" aria-expanded=\"false\" data-target=\"navbarBasicExample\">
          <span aria-hidden=\"true\"></span>
          <span aria-hidden=\"true\"></span>
          <span aria-hidden=\"true\"></span>
        </a>
      </div>
    
      <div id=\"navbarBasicExample\" class=\"navbar-menu\">
        <div class=\"navbar-start\">
          <a href=\"{{ 'acerca'|page }}\" class=\"navbar-item\">
            Acerca
          </a>
    
          <a href=\"{{ 'contacto'|page }}\" class=\"navbar-item\">
            Contacto
          </a>
        </div>
      </div>
    </nav>
</div>

<section class=\"hero notification is-primary\">
  <div class=\"hero-body p-4\">
      <div class=\"container\">
          <h1 class=\"title\">Maditek Labs</h1>
          <p class=\"subtitle\">Diseño y desarrollo web responsive</p>
      </div>
  </div>
</section>", "C:\\laragon\\www\\october/themes/maditek/partials/header.htm", "");
    }
    
    public function checkSecurity()
    {
        static $tags = array();
        static $filters = array("app" => 4, "theme" => 5, "page" => 17);
        static $functions = array();

        try {
            $this->sandbox->checkSecurity(
                [],
                ['app', 'theme', 'page'],
                []
            );
        } catch (SecurityError $e) {
            $e->setSourceContext($this->source);

            if ($e instanceof SecurityNotAllowedTagError && isset($tags[$e->getTagName()])) {
                $e->setTemplateLine($tags[$e->getTagName()]);
            } elseif ($e instanceof SecurityNotAllowedFilterError && isset($filters[$e->getFilterName()])) {
                $e->setTemplateLine($filters[$e->getFilterName()]);
            } elseif ($e instanceof SecurityNotAllowedFunctionError && isset($functions[$e->getFunctionName()])) {
                $e->setTemplateLine($functions[$e->getFunctionName()]);
            }

            throw $e;
        }

    }
}
