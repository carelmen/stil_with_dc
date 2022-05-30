# DC Measurements in Patterns
This is the example code from the webinar on inserting DC measurements in STIL patterns. Using the IEEE1450.2 extensions, we are able to insert hook at a given vector and get the tester to perform a DC measurement.

## How to run
*Please note that you need TestInsight's TDL with ATEgen and license to run the converter*
### Command line
ategen -setup ategen_setup_template.py sample_dynamic_dc.stil

### Makefile

- Update the makefile or your PATH to ategen.
- type make

ATEGen will create the entire device directory.


Links

