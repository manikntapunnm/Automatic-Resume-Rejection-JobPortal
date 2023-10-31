@echo off
for %%A in (
    admin-rejection.html admin-view-cand.html admin-view-postjob.html
    applied-candidates.html admin-cand-feedbk-analy.html admin-viewde-jb.html
    company-index.html company-mangjob-edit.html company-mang-jobs.html
    company-postjob.html give-feedback.html hired-cand.html
    resume-rejection.html shortlisted-cand.html admin-all-comp.html
    admin-login.html company-register.html candidate-login.html
    candidate-register.html company-login.html contact.html
    candidate-feedback.html main-index.html candidate-profile.html
    candidate-myjobs.html candidate-jobs.html candidate-job-details.html
    candidate-index.html candidate-apply-job.html about.html admin-index.html
    admin-cand-feedbk.html admin-comp-feedbk.html admin-comp-feedbk-analy.html
    admin-man-postjob.html admin-pending-comp.html
) do (
    ren "%%A" "%%~nA.jsp"
)
