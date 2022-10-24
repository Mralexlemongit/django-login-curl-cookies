from django.http import JsonResponse
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import ensure_csrf_cookie

@login_required
def hm(request):
    return JsonResponse({"Ya esta": "logueado"})