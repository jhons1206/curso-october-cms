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

/* C:\laragon\www\curso-october-cms/themes/maditek/pages/templating.htm */
class __TwigTemplate_7aa4ed93fe6fe3d5181a11f2e9e3aa60ee66db926c06e9614bda8dc5698a4627 extends \Twig\Template
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
        echo $this->extensions['Cms\Twig\DebugExtension']->runDump($this->env, $context);
        echo "

<div class=\"container\">
  <section class=\"about\">
    <h1 class=\"title\">Templating</h1>
    <p>Ejemplo de manipulación de contenido a visualizar.</p>
  </section>
</div>

<section class=\"section\">
    <div class=\"container content\">
        <h3>Ejemplo de condiciones</h3>
        <p>
            ";
        // line 14
        if (($context["isEarly"] ?? null)) {
            // line 15
            echo "                Estamos en la mañana
            ";
        } else {
            // line 17
            echo "                Estamos en la tarde
            ";
        }
        // line 19
        echo "        </p>
        
        <h3>Ejemplo de condiciones (abreviado)</h3>
        <p>
            ";
        // line 23
        echo ((($context["isEarly"] ?? null)) ? ("Estamos en la mañana") : ("Estamos en la tarde"));
        echo "
        </p>
        
        <h3>Concatenación</h3>
        <p>
            ";
        // line 28
        echo twig_escape_filter($this->env, ("Estamos en la " . ((($context["isEarly"] ?? null)) ? ("mañana") : ("tarde"))), "html", null, true);
        echo "
        </p>
        
        <h3>Iteraciones</h3>
        
        <ul>
            ";
        // line 34
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["fruits"] ?? null));
        $context['_iterated'] = false;
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 35
            echo "                <li>";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed($context["item"], 35, $this->source), "html", null, true);
            echo "</li>
            ";
            $context['_iterated'] = true;
        }
        if (!$context['_iterated']) {
            // line 37
            echo "                <li><em>No se han encontrado frutas</em></li>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 39
        echo "        </ul>
        
        <ul>
            ";
        // line 42
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["users"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["user"]) {
            // line 43
            echo "                <li>";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed($context["user"], 43, $this->source), "html", null, true);
            echo "</li>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['user'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 45
        echo "        </ul>
        
        <ul>
            ";
        // line 48
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(range(0, 10));
        foreach ($context['_seq'] as $context["_key"] => $context["i"]) {
            // line 49
            echo "                <li>";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed($context["i"], 49, $this->source), "html", null, true);
            echo "</li>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['i'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 51
        echo "        </ul>
        
        <ul>
            ";
        // line 54
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(range("a", "z"));
        foreach ($context['_seq'] as $context["_key"] => $context["letter"]) {
            // line 55
            echo "                <li>";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed($context["letter"], 55, $this->source), "html", null, true);
            echo "</li>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['letter'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 57
        echo "        </ul>
        
        <ul>
            ";
        // line 60
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(range(twig_upper_filter($this->env, "a"), twig_upper_filter($this->env, "z")));
        foreach ($context['_seq'] as $context["_key"] => $context["letter"]) {
            // line 61
            echo "                <li>";
            echo twig_escape_filter($this->env, $this->sandbox->ensureToStringAllowed($context["letter"], 61, $this->source), "html", null, true);
            echo "</li>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['letter'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 63
        echo "        </ul>
        
        <h3>Funciones > str</h3>
        <h4>Camel case</h4>
        <p>";
        // line 67
        echo call_user_func_array($this->env->getFunction('str_camel')->getCallable(), ["camel", "hola mundo"]);
        echo "</p>
        
        <h4>Snake case</h4>
        <p>";
        // line 70
        echo call_user_func_array($this->env->getFunction('str_snake')->getCallable(), ["snake", "hola mundo", "-"]);
        echo "</p>
        
        <h4>Funciones > HTML</h4>
        <p>";
        // line 73
        echo call_user_func_array($this->env->getFunction('html_limit')->getCallable(), ["limit", "Hola mundo en español", 4]);
        echo "</p>
        
    </div>
</section>";
    }

    public function getTemplateName()
    {
        return "C:\\laragon\\www\\curso-october-cms/themes/maditek/pages/templating.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  198 => 73,  192 => 70,  186 => 67,  180 => 63,  171 => 61,  167 => 60,  162 => 57,  153 => 55,  149 => 54,  144 => 51,  135 => 49,  131 => 48,  126 => 45,  117 => 43,  113 => 42,  108 => 39,  101 => 37,  93 => 35,  88 => 34,  79 => 28,  71 => 23,  65 => 19,  61 => 17,  57 => 15,  55 => 14,  39 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{{ dump() }}

<div class=\"container\">
  <section class=\"about\">
    <h1 class=\"title\">Templating</h1>
    <p>Ejemplo de manipulación de contenido a visualizar.</p>
  </section>
</div>

<section class=\"section\">
    <div class=\"container content\">
        <h3>Ejemplo de condiciones</h3>
        <p>
            {% if isEarly %}
                Estamos en la mañana
            {% else %}
                Estamos en la tarde
            {% endif %}
        </p>
        
        <h3>Ejemplo de condiciones (abreviado)</h3>
        <p>
            {{ isEarly ? \"Estamos en la mañana\" : \"Estamos en la tarde\" }}
        </p>
        
        <h3>Concatenación</h3>
        <p>
            {{ 'Estamos en la ' ~ (isEarly ? 'mañana' : 'tarde') }}
        </p>
        
        <h3>Iteraciones</h3>
        
        <ul>
            {% for item in fruits %}
                <li>{{ item }}</li>
            {% else %}
                <li><em>No se han encontrado frutas</em></li>
            {% endfor %}
        </ul>
        
        <ul>
            {% for user in users %}
                <li>{{ user }}</li>
            {% endfor %}
        </ul>
        
        <ul>
            {% for i in 0..10 %}
                <li>{{ i }}</li>
            {% endfor %}
        </ul>
        
        <ul>
            {% for letter in 'a'..'z' %}
                <li>{{ letter }}</li>
            {% endfor %}
        </ul>
        
        <ul>
            {% for letter in 'a'|upper..'z'|upper %}
                <li>{{ letter }}</li>
            {% endfor %}
        </ul>
        
        <h3>Funciones > str</h3>
        <h4>Camel case</h4>
        <p>{{ str_camel('hola mundo') }}</p>
        
        <h4>Snake case</h4>
        <p>{{ str_snake('hola mundo', '-') }}</p>
        
        <h4>Funciones > HTML</h4>
        <p>{{ html_limit('Hola mundo en español', 4) }}</p>
        
    </div>
</section>", "C:\\laragon\\www\\curso-october-cms/themes/maditek/pages/templating.htm", "");
    }
    
    public function checkSecurity()
    {
        static $tags = array("if" => 14, "for" => 34);
        static $filters = array("escape" => 28, "upper" => 60);
        static $functions = array("dump" => 1, "range" => 48, "str_camel" => 67, "str_snake" => 70, "html_limit" => 73);

        try {
            $this->sandbox->checkSecurity(
                ['if', 'for'],
                ['escape', 'upper'],
                ['dump', 'range', 'str_camel', 'str_snake', 'html_limit']
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
