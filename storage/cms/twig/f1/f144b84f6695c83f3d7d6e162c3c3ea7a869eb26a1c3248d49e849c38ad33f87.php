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

/* C:\laragon\www\curso-october-cms/themes/maditek/pages/maditek-demo.htm */
class __TwigTemplate_e005cfb1fb0a4a81b5c8a6ef3541e2c402a3a04556d67782e5b9d3247db7545b extends \Twig\Template
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
        $context["subtitle"] = "Tu proyecto nuestra meta.";
        // line 2
        echo "
<div class=\"container\">
    <h1 class=\"title\">";
        // line 4
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(($context["welcome"] ?? null), 4, $this->source), "html", null, true);
        echo "</h1>
    <h2 class=\"subtitle\">";
        // line 5
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(($context["subtitle"] ?? null), 5, $this->source), "html", null, true);
        echo "</h2>
</div>";
    }

    public function getTemplateName()
    {
        return "C:\\laragon\\www\\curso-october-cms/themes/maditek/pages/maditek-demo.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  49 => 5,  45 => 4,  41 => 2,  39 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set subtitle = 'Tu proyecto nuestra meta.' %}

<div class=\"container\">
    <h1 class=\"title\">{{ welcome }}</h1>
    <h2 class=\"subtitle\">{{ subtitle}}</h2>
</div>", "C:\\laragon\\www\\curso-october-cms/themes/maditek/pages/maditek-demo.htm", "");
    }
    
    public function checkSecurity()
    {
        static $tags = array("set" => 1);
        static $filters = array("escape" => 4);
        static $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['set'],
                ['escape'],
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
