from django.shortcuts import get_object_or_404, redirect, render
from .models import Job

# Create your views here.


def jobs(request):
    jobs = Job.objects.order_by('-created_date')
    # returns distinct array with field 'developer_type' from model
    developer_type_search = Job.objects.values_list(
        'developer_type', flat=True).distinct()
    level_type_search = Job.objects.values_list(
        'level_type', flat=True).distinct()
    job_type_search = Job.objects.values_list(
        'job_type', flat=True).distinct()

    data = {
        'jobs': jobs,
        'developer_type_search': developer_type_search,
        'level_type_search': level_type_search,
        'job_type_search': job_type_search,
    }

    return render(request, 'jobs/jobs.html', data)


# def job_form(request):
#     pass


def job_detail(request, id):
    job = get_object_or_404(Job, pk=id)
    # skill = get_object_or_404(Skill)
    data = {
        'job': job,
        # 'skill': skill
    }
    return render(request, 'jobs/job_detail.html', data)


def jobs_search(request):
    jobs = Job.objects.order_by('-created_date')
    # returns distinct array with field 'developer_type' from model
    developer_type_search = Job.objects.values_list(
        'developer_type', flat=True).distinct()
    level_type_search = Job.objects.values_list(
        'level_type', flat=True).distinct()
    job_type_search = Job.objects.values_list(
        'job_type', flat=True).distinct()

    if 'keyword' in request.GET:
        keyword = request.GET['keyword']
        if keyword:
            jobs = jobs.filter(description__icontains=keyword)

    if 'developer_type' in request.GET:
        developer_type = request.GET['developer_type']
        if developer_type:
            jobs = jobs.filter(
                developer_type__iexact=developer_type)  # exact match

    if 'level_type' in request.GET:
        level_type = request.GET['level_type']
        if level_type:
            jobs = jobs.filter(
                level_type__iexact=level_type)  # exact match

    if 'job_type' in request.GET:
        job_type = request.GET['job_type']
        if job_type:
            jobs = jobs.filter(job_type__iexact=job_type)  # exact match

    data = {
        'jobs': jobs,
        'developer_type_search': developer_type_search,
        'level_type_search': level_type_search,
        'job_type_search': job_type_search,
    }
    return render(request, 'jobs/jobs_search.html', data)


def job_form(request):
    if request.method == 'POST':
        title = request.POST['title']
        company_name = request.POST['company_name']
        company_location = request.POST['company_location']
        company_phone = request.POST['company_phone']
        developer_type = request.POST['developertype']
        job_type = request.POST['jobtype']
        level_type = request.POST['leveltype']
        company_email = request.POST['company_email']
        skills = request.POST['skills']
        description = request.POST['description']
        photo = request.FILES['photo']
        deadline = request.POST['deadline']
        salary = request.POST['salary']
        no_of_vacancies = request.POST['no_of_vacancies']

        job = Job(title=title,
                  company_name=company_name, company_location=company_location, company_email=company_email, level_type=level_type,
                  developer_type=developer_type, job_type=job_type,
                  description=description, skills=skills, photo=photo, deadline=deadline,
                  salary=salary, no_of_vacancies=no_of_vacancies, company_phone=company_phone
                  )
        job.save()
        return redirect('jobs')
