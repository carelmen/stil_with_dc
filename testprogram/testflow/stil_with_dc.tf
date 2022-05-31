hp93000,testflow,0.1
language_revision = 1;

information
    device_revision = "1";
end
------------------------------------------------------------
flags
OOC_sample_size               = 1;
OOC_watch                     = 1;
buffer_testflow_log           = 0;
calib_age_monitor             = 1;
check_testmethod_api          = 0;
current_monitor               = 1;
datalog_formatter             = 0;
datalog_sample_size           = 1;
datalog_to_file               = 1;
datalog_to_printer            = 0;
datalog_to_report_win         = 0;
debug_analog                  = 0;
debug_mode                    = 0;
diag_monitor                  = 1;
global_hold                   = 0;
global_overon                 = 0;
graphic_result_displa         = 1;
hold_on_fail                  = 0;
ink_wafer                     = 0;
limits_enable                 = 0;
log_cycles_after              = 0;
log_cycles_before             = 0;
log_events_enable             = 0;
max_reprobes                  = 1;
optimized_mode                = 1;
parallel_mode                 = 1;
print_wafermap                = 0;
report_to_file                = 1;
report_to_printer             = 0;
rf_cal_enable                 = 1;
rf_cal_interp                 = 0;
rf_dembedCal_enable           = 0;
set_bypass_level              = 0;
set_fail_level                = 0;
set_pass_level                = 0;
sqst_mode                     = 0;
state_display                 = 0;
temp_monitor                  = 1;
test_num_col_offset           = 3;
test_number_enable            = 1;
test_number_inc               = 1;
test_number_manager           = 0;
unburst_mode                  = 0;
use_hw_dsp                    = 0;
warn_as_fail                  = 1;
end
------------------------------------------------------------
testmethodparameters
tm_1:
  "testName" = "sample_dynamic_dc";
end

testmethodlimits
tm_1:
  "Functional" = "":"NA":"":"NA":"":"":"";
end

testmethods
tm_1:
  testmethod_class = "ac_tml.AcTest.FunctionalTest";
end
------------------------------------------------------------
test_suites

sample_dynamic_dc:
   override = 1;
   override_tim_equ_set = 1;
   override_lev_equ_set = 1;
   override_tim_spec_set = 1;
   override_lev_spec_set = 1;
   override_timset = 1;
   override_levset = 1;
   override_seqlbl = "sample_dynamic_dc_burst";
   override_testf = tm_1;
   local_flags  = frg_single_shot;
   site_control = "parallel:";

end
------------------------------------------------------------
test_flow

   run_and_branch(sample_dynamic_dc) then
   {
   }
   else
   {
      stop_bin "10","sample_dynamic_dc",,bad,noreprobe,red, 10, over_on;
   }

   stop_bin "1", "Good", , good,noreprobe,green, 1, over_on;

end
------------------------------------------------------------
binning

   otherwise bin = "db", "", , bad,noreprobe,red, , not_over_on;

end

------------------------------------------------------------

oocrule

end


------------------------------------------------------------
context

context_config_file = "stil_with_dc.cha";
context_levels_file = "stil_with_dc.lvl";
context_timing_file = "stil_with_dc.tim";
context_vector_file = "stil_with_dc.pmfl";
context_attrib_file = "";
context_analog_control_file = "";
context_waveform_file = "";
context_routing_file = "";

end
