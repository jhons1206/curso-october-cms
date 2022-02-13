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

/* C:\laragon\www\curso-october-cms/themes/maditek/pages/contacto.htm */
class __TwigTemplate_89a425fb7267de2cbc24ff501881944a19e36c21461acb4cd78a0e487c38e4d3 extends \Twig\Template
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
        echo "<section class=\"container\">
  <h1 class=\"title\">Contacto</h1>
  <p>Puede enviar su consulta a nuestro equipo encargado, para ello solo debe rellenar el siguiente formulario.</p>

  <div class=\"container pt-5\">
    <div class=\"field\">
      <label class=\"label\">Nombre</label>
      <div class=\"control\">
        <input class=\"input\" type=\"text\" placeholder=\"Text input\">
      </div>
      <div class=\"field\">
        <label class=\"label\">Email</label>
        <div class=\"control has-icons-left has-icons-right\">
          <input class=\"input\" type=\"email\" placeholder=\"Email input\" value=\"hello@\">
          <span class=\"icon is-small is-left\">
            <i class=\"fas fa-envelope\"></i>
          </span>
          <span class=\"icon is-small is-right\">
            <i class=\"fas fa-exclamation-triangle\"></i>
          </span>
        </div>
      </div>

      <div class=\"field\">
        <label class=\"label\">Mensaje</label>
        <div class=\"control\">
          <textarea class=\"textarea\" placeholder=\"Textarea\"></textarea>
        </div>
      </div>

      <div class=\"field is-grouped\">
        <div class=\"control\">
          <button class=\"button is-link\" id=\"btn-enviar\">Enviar</button>
        </div>
        <div class=\"control\">
          <button class=\"button is-link is-light\">Cancelar</button>
        </div>
      </div>
    </div>
</section>

";
        // line 42
        echo $this->env->getExtension('Cms\Twig\Extension')->startBlock('styles'        );
        // line 43
        echo "<!-- <style>
body {
    background: red;
}
</style> -->
";
        // line 42
        echo $this->env->getExtension('Cms\Twig\Extension')->endBlock(true        );
    }

    public function getTemplateName()
    {
        return "C:\\laragon\\www\\curso-october-cms/themes/maditek/pages/contacto.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  91 => 42,  84 => 43,  82 => 42,  39 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("<section class=\"container\">
  <h1 class=\"title\">Contacto</h1>
  <p>Puede enviar su consulta a nuestro equipo encargado, para ello solo debe rellenar el siguiente formulario.</p>

  <div class=\"container pt-5\">
    <div class=\"field\">
      <label class=\"label\">Nombre</label>
      <div class=\"control\">
        <input class=\"input\" type=\"text\" placeholder=\"Text input\">
      </div>
      <div class=\"field\">
        <label class=\"label\">Email</label>
        <div class=\"control has-icons-left has-icons-right\">
          <input class=\"input\" type=\"email\" placeholder=\"Email input\" value=\"hello@\">
          <span class=\"icon is-small is-left\">
            <i class=\"fas fa-envelope\"></i>
          </span>
          <span class=\"icon is-small is-right\">
            <i class=\"fas fa-exclamation-triangle\"></i>
          </span>
        </div>
      </div>

      <div class=\"field\">
        <label class=\"label\">Mensaje</label>
        <div class=\"control\">
          <textarea class=\"textarea\" placeholder=\"Textarea\"></textarea>
        </div>
      </div>

      <div class=\"field is-grouped\">
        <div class=\"control\">
          <button class=\"button is-link\" id=\"btn-enviar\">Enviar</button>
        </div>
        <div class=\"control\">
          <button class=\"button is-link is-light\">Cancelar</button>
        </div>
      </div>
    </div>
</section>

{% put styles %}
<!-- <style>
body {
    background: red;
}
</style> -->
{% endput %}", "C:\\laragon\\www\\curso-october-cms/themes/maditek/pages/contacto.htm", "");
    }
    
    public function checkSecurity()
    {
        static $tags = array("put" => 42);
        static $filters = array();
        static $functions = array();

        try {
            $this->sandbox->checkSecurity(
                ['put'],
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
