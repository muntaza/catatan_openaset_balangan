from peralatanmesin.models import PeralatanMesin
from gedungbangunan.clone_object import clone_object

def pm_perkim_ke_badan_keuangan():
    clone_object(PeralatanMesin.objects.get(pk=71059))
    clone_object(PeralatanMesin.objects.get(pk=71064))
    clone_object(PeralatanMesin.objects.get(pk=89022))
    clone_object(PeralatanMesin.objects.get(pk=89023))
