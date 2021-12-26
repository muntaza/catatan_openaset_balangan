from peralatanmesin.models import PeralatanMesin
from gedungbangunan.clone_object import clone_object

def penggandaan1():
    clone_object(PeralatanMesin.objects.get(pk=100741))
    clone_object(PeralatanMesin.objects.get(pk=112735))
    clone_object(PeralatanMesin.objects.get(pk=15719))
    clone_object(PeralatanMesin.objects.get(pk=15721))
    clone_object(PeralatanMesin.objects.get(pk=2217))
    clone_object(PeralatanMesin.objects.get(pk=2512))
    clone_object(PeralatanMesin.objects.get(pk=275))
