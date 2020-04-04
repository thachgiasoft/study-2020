from django.views.generic import TemplateView

class HomePageView(TemplateView):
  template_name = 'homepage.html'

class SamplePageView(TemplateView):
  template_name = 'sample.html'

class ExtendsPageView(TemplateView):
  template_name = 'extends.html'