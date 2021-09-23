from django.urls import path
from django.conf.urls import include
from django.contrib import admin

urlpatterns = [
    path("admin/", admin.site.urls),
    path("blog/", include("blog.urls")),
    path("search/", include("search.urls"))
    # Here add your URL's
]
