import 'package:infyhms_flutter/utils/image_utils.dart';
import 'package:infyhms_flutter/utils/string_utils.dart';

class ListUtils {
  static List<Map<String, dynamic>> drawerList = [
    {
      "icon": ImageUtils.appointmentsIcon,
      "title": StringUtils.appointment,
    },
    {
      "icon": ImageUtils.billsIcon,
      "title": StringUtils.bills,
    },
    {
      "icon": ImageUtils.diagnosisTestIcon,
      "title": StringUtils.diagnosisTests,
    },
    {
      "icon": ImageUtils.documentIcon,
      "title": StringUtils.documents,
    },
    {
      "icon": ImageUtils.noticeIcon,
      "title": StringUtils.noticeBoards,
    },
    {
      "icon": ImageUtils.invoiceIcon,
      "title": StringUtils.invoices,
    },
    {
      "icon": ImageUtils.liveConsIcon,
      "title": StringUtils.liveConsultations,
    },
    {
      "icon": ImageUtils.patientCaseIcon,
      "title": StringUtils.patientsCases,
    },
    {
      "icon": ImageUtils.patientAdmissionIcon,
      "title": StringUtils.patientAdmissions,
    },
    {
      "icon": ImageUtils.prescriptionIcon,
      "title": StringUtils.prescriptions,
    },
    {
      "icon": ImageUtils.vaccinatedIcon,
      "title": StringUtils.vaccinatedPatients,
    },
  ];
  static List<Map<String, dynamic>> doctorDrawerList = [
    {
      "icon": ImageUtils.appointmentsIcon,
      "title": StringUtils.appointment,
    },
    {
      "icon": ImageUtils.bedAssignIcon,
      "title": StringUtils.bedAssign,
    },
    {
      "icon": ImageUtils.bedStatusIcon,
      "title": StringUtils.bedStatus,
    },
    {
      "icon": ImageUtils.doctorsIcon,
      "title": StringUtils.doctorDrawer,
    },
    {
      "icon": ImageUtils.schedulesIcon,
      "title": StringUtils.schedules,
    },
    {
      "icon": ImageUtils.prescriptionIcon,
      "title": StringUtils.prescriptions,
    },
    {
      "icon": ImageUtils.documentIcon,
      "title": StringUtils.documents,
    },
    {
      "icon": ImageUtils.diagnosisTestIcon,
      "title": StringUtils.diagnosisTests,
    },
    {
      "icon": ImageUtils.noticeIcon,
      "title": StringUtils.noticeBoards,
    },
    {
      "icon": ImageUtils.liveConsIcon,
      "title": StringUtils.liveConsultations,
    },
    {
      "icon": ImageUtils.myPayrollIcon,
      "title": StringUtils.myPayRoll,
    },
    {
      "icon": ImageUtils.admissionIconForDoctor,
      "title": StringUtils.patientAdmissionInDoctor,
    },
    {
      "icon": ImageUtils.reportsIcon,
      "title": StringUtils.reports,
    },
  ];
}
