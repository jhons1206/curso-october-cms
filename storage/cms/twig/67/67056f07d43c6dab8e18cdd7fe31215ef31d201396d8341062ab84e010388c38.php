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

/* C:\laragon\www\curso-october-cms/themes/maditek/pages/acerca.htm */
class __TwigTemplate_1e59634788d19bd4345f1fc27cbf88dc4dffd681cf7df931ff57a4cb274f244d extends \Twig\Template
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
  <section class=\"about\">
    <h1 class=\"title\">Nosotros</h1>
    <p>Somos especialistas en el diseño y desarrollo de sitios web, e-commerce, intranets, marketing digital, diseño gráfico y mantenimiento web. Cualquiera sea tu necesidad en la era digital, Maditek Labs es la solución que estás buscando para una presencia en Internet exitosa y rentable.</p>
  </section>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\laragon\\www\\curso-october-cms/themes/maditek/pages/acerca.htm";
    }

    public function getDebugInfo()
    {
        return array (  39 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<div class=\"container\">
  <section class=\"about\">
    <h1 class=\"title\">Nosotros</h1>
    <p>Somos especialistas en el diseño y desarrollo de sitios web, e-commerce, intranets, marketing digital, diseño gráfico y mantenimiento web. Cualquiera sea tu necesidad en la era digital, Maditek Labs es la solución que estás buscando para una presencia en Internet exitosa y rentable.</p>
  </section>
</div>", "C:\\laragon\\www\\curso-october-cms/themes/maditek/pages/acerca.htm", "");
    }
    
    public function checkSecurity()
    {
        static $tags = array();
        static $filters = array();
        static $functions = array();

        try {
            $this->sandbox->checkSecurity(
                [],
                [],
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
