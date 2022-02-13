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

/* C:\laragon\www\curso-october-cms/themes/maditek/layouts/layout.htm */
class __TwigTemplate_fff9f692b5c2d296b1f0bf74e781c09fb0b5836e9b3b5b9ca4a92054d2a17a79 extends \Twig\Template
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
        echo "<!DOCTYPE html>
<html lang=\"es\">
<head>
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <title>";
        // line 6
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, true, 6), "title", [], "any", false, false, true, 6), 6, $this->source), "html", null, true);
        echo "</title>
  <meta \"description\" content=\"";
        // line 7
        echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["this"] ?? null), "page", [], "any", false, false, true, 7), "meta_description", [], "any", false, false, true, 7), 7, $this->source), "html", null, true);
        echo "\">
  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css\">
  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js\"></script>
  
  ";
        // line 11
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('css');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('styles');
        // line 12
        echo "</head>
<body>

    ";
        // line 15
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("header"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 16
        echo "    
    ";
        // line 17
        echo $this->env->getExtension('Cms\Twig\Extension')->pageFunction();
        // line 18
        echo "    
    ";
        // line 19
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('Cms\Twig\Extension')->partialFunction("footer"        , $context['__cms_partial_params']        , true        );
        unset($context['__cms_partial_params']);
        // line 20
        echo "    
    ";
        // line 21
        echo $this->env->getExtension('Cms\Twig\Extension')->assetsFunction('js');
        echo $this->env->getExtension('Cms\Twig\Extension')->displayBlock('scripts');
        // line 22
        echo "</body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\laragon\\www\\curso-october-cms/themes/maditek/layouts/layout.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  87 => 22,  84 => 21,  81 => 20,  77 => 19,  74 => 18,  72 => 17,  69 => 16,  65 => 15,  60 => 12,  57 => 11,  50 => 7,  46 => 6,  39 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<!DOCTYPE html>
<html lang=\"es\">
<head>
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <title>{{ this.page.title }}</title>
  <meta \"description\" content=\"{{ this.page.meta_description}}\">
  <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css\">
  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js\"></script>
  
  {% styles %}
</head>
<body>

    {% partial 'header' %}
    
    {% page %}
    
    {% partial 'footer' %}
    
    {% scripts %}
</body>
</html>", "C:\\laragon\\www\\curso-october-cms/themes/maditek/layouts/layout.htm", "");
    }
    
    public function checkSecurity()
    {
        static $tags = array("styles" => 11, "partial" => 15, "page" => 17, "scripts" => 21);
        static $filters = array("escape" => 6);
        static $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['styles', 'partial', 'page', 'scripts'],
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
