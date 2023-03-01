//-----------------------------------------------------------------------------
//  (c) Copyright 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------

#include <iostream>
#include <vector>
#include <complex>
#include <cstdlib>
#include <cstring>

#define _USE_MATH_DEFINES

#include <math.h>
#include <fstream> // for debug only

#include "dds_compiler_v6_0_bitacc_cmodel.h"

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

// Set to 1 to enable debug functions/output
#define DEBUG 0

static void msg_print(void* dummy, int error, const char* msg)
{
  std::cout << msg << std::endl;
}

// End of debug functions

//The constants which follow are the configuration parameters of the core.
//Other than capitalization, these are the same as the elements in the configuration record.

int main()
{
  const int number_of_samples = 50;
  int channel;

  // Report the version of the model we are calling
  std::cout << "INFO: C model version = " << xip_dds_v6_0_get_version() << std::endl;

  // Create a configuration structure and set to core defaults.
  // Setting the defaults first means only those parameters for
  // which the desired configuration differs from the default need
  // be set up in the following lines.
  xip_dds_v6_0_config config, config_ret;
  xip_status status = xip_dds_v6_0_default_config(&config);

  // Did we get the default configuration correctly?
  if (status != XIP_STATUS_OK) {
    std::cerr << "ERROR: Could not get C model default configuration" << std::endl;
    return 1;
  }

  //Now modify the configuration as desired for your particular configuration
  config.name                        = "dds_compiler_v6_0";
  config.PartsPresent                = XIP_DDS_PHASE_GEN_AND_SIN_COS_LUT;
  config.DDS_Clock_Rate              = 100.0;
  config.Channels                    = 1;
  config.Mode_of_Operation           = XIP_DDS_MOO_RASTERIZED;
  config.Modulus                     = 3000;
  config.ParameterEntry              = XIP_DDS_HARDWARE_PARAMS;
  config.Spurious_Free_Dynamic_Range = 45.0;
  config.Frequency_Resolution        = 0.4;
  config.Noise_Shaping               = XIP_DDS_NS_NONE;
  config.Phase_Increment             = XIP_DDS_PINCPOFF_FIXED;
  config.Resync                      = XIP_DDS_ABSENT;
  config.Phase_Offset                = XIP_DDS_PINCPOFF_NONE;
  config.Output_Selection            = XIP_DDS_OUT_SIN_AND_COS;
  config.Negative_Sine               = XIP_DDS_ABSENT;
  config.Negative_Cosine             = XIP_DDS_ABSENT;
  config.Amplitude_Mode              = XIP_DDS_FULL_RANGE;
  config.Memory_Type                 = XIP_DDS_MEM_AUTO;
  config.Optimization_Goal           = XIP_DDS_OPTGOAL_AUTO;
  config.DSP48_Use                   = XIP_DDS_DSP_MIN;
  config.Has_TREADY                  = XIP_DDS_ABSENT;
  config.S_CONFIG_Sync_Mode          = XIP_DDS_CONFIG_SYNC_VECTOR;
  config.Output_Form                 = XIP_DDS_OUTPUT_TWOS;
  config.Latency_Configuration       = XIP_DDS_LATENCY_AUTO;
  config.Has_ARESETn                 = XIP_DDS_ABSENT;
  config.PINC[0]                     = 1; // 1101000110110111
  // config.PINC[1]                  = 0;
  // ...
  config.POFF[0]                     = 0;
  // config.POFF[1]                  = 0;
  // ...
  config.Latency                     = 4;
  config.Output_Width                = 8;
  config.Phase_Width                 = 12;

  // Set up some objects to hold state and the configuration data
  // for programmable phase increment and phase offset
  xip_dds_v6_0* pstate;
  xip_dds_v6_0_config_pkt* pinc_poff_config;

  // Create model object with your particular configuration
  pstate = xip_dds_v6_0_create(&config, &msg_print, 0);

  // Can we read back the updated configuration correctly?
  if (xip_dds_v6_0_get_config(pstate, &config_ret) != XIP_STATUS_OK) {
    std::cerr << "ERROR: Could not retrieve C model configuration" << std::endl;
  }

  // Set up some arrays to hold values for programmable phase increment and phase offset
  xip_dds_v6_0_data pinc[XIP_DDS_CHANNELS_MAX];
  xip_dds_v6_0_data poff[XIP_DDS_CHANNELS_MAX];

  //------------------------------------------------------------------------------------
  // Set up fields and reserve memory for data and config packets, for this configuration
  //------------------------------------------------------------------------------------

  //Calculate the number of input fields
  xip_uint no_of_input_fields = 0;
  if (config_ret.PartsPresent == XIP_DDS_SIN_COS_LUT_ONLY) {
    no_of_input_fields++; //Phase_In
  } else {
    if (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_STREAM) {
      no_of_input_fields++; //PINC
      if (config_ret.Resync == XIP_DDS_PRESENT) {
        no_of_input_fields++; //RESYNC
      }
    }
    if (config_ret.Phase_Offset == XIP_DDS_PINCPOFF_STREAM) {
      no_of_input_fields++; //POFF
    }
  }

  //Calculate the number of output fields
  xip_uint no_of_output_fields = 0; //phase output is not optional in the c model.
  if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY) {
    no_of_output_fields = 1; //PHASE_OUT
  }
  if (config_ret.PartsPresent != XIP_DDS_PHASE_GEN_ONLY) {
    if (config_ret.Output_Selection == XIP_DDS_OUT_SIN_ONLY) no_of_output_fields++; //SIN
    if (config_ret.Output_Selection == XIP_DDS_OUT_COS_ONLY) no_of_output_fields++; //COS
    if (config_ret.Output_Selection == XIP_DDS_OUT_SIN_AND_COS) no_of_output_fields += 2; //SIN and COS
  }

  // Create and allocate memory for I/O structures
  // Create request and response structures

  // Create config packet - pass pointer by reference
  if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY && (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_PROG || config_ret.Phase_Offset == XIP_DDS_PINCPOFF_PROG)) {
    if (xip_dds_v6_0_alloc_config_pkt(&pinc_poff_config, config_ret.Channels, config_ret.Channels) == XIP_STATUS_OK) {
      std::cout << "INFO: Reserved memory for config packet" << std::endl;
    } else {
      std::cerr << "ERROR: Unable to reserve memory for config packet" << std::endl;
      exit(1);
    }
  }

  // Create input data packet
  xip_array_real* din = xip_array_real_create();
  xip_array_real_reserve_dim(din,3); //dimensions are (Number of samples, channels, PINC/POFF/Phase)
  din->dim_size = 3;
  din->dim[0] = number_of_samples;
  din->dim[1] = config_ret.Channels;
  din->dim[2] = no_of_input_fields;
  din->data_size = din->dim[0] * din->dim[1] * din->dim[2];
  if (xip_array_real_reserve_data(din,din->data_size) == XIP_STATUS_OK) {
    std::cout << "INFO: Reserved memory for request as [" << number_of_samples << "," << config_ret.Channels << "," << no_of_input_fields << "] array " << std::endl;
  } else {
    std::cout << "ERROR: Unable to reserve memory for input data packet!" << std::endl;
    exit(2);
  }

  // Request memory for output data
  xip_array_real* dout = xip_array_real_create();
  xip_array_real_reserve_dim(dout,3); //dimensions are (Number of samples, channels, PINC/POFF/Phase)
  dout->dim_size = 3;
  dout->dim[0] = number_of_samples;
  dout->dim[1] = config_ret.Channels;
  dout->dim[2] = no_of_output_fields;
  dout->data_size = dout->dim[0] * dout->dim[1] * dout->dim[2];
  if (xip_array_real_reserve_data(dout,dout->data_size) == XIP_STATUS_OK) {
    std::cout << "INFO: Reserved memory for response as [" << number_of_samples << "," << config_ret.Channels << "," << no_of_output_fields << "] array " << std::endl;
  } else {
    std::cout << "ERROR: Unable to reserve memory for output data packet!" << std::endl;
    exit(3);
  }


  //---------------------------------------------------
  // Populate the input structure with example data
  //---------------------------------------------------
  size_t sample = 0;
  size_t field = 0;
  xip_dds_v6_0_data value = 0.0;

  // Set up pinc and poff, and call config routine, if either phase increment or phase offset is programmable
  if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY) {
    if (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_PROG || config_ret.Phase_Offset == XIP_DDS_PINCPOFF_PROG) {

      for (channel = 0; channel < config_ret.Channels; channel++) {
        if (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_PROG) {
          //field is PINC
          if (config_ret.Mode_of_Operation == XIP_DDS_MOO_RASTERIZED) {
              pinc[channel] = rand() % (config_ret.Modulus); // Allow zero too
          } else {
            pinc[channel] = rand() % (1ULL << (config_ret.resPhase_Width)); // Allow zero too
          }
        }
        if (config_ret.Phase_Offset == XIP_DDS_PINCPOFF_PROG) {
          //field is POFF
          if (config_ret.Mode_of_Operation == XIP_DDS_MOO_RASTERIZED) {
            poff[channel] = (channel + 1) % (config_ret.Modulus);
          } else {
            poff[channel] = (channel + 1) % (1ULL << (config_ret.resPhase_Width)); // Allow zero too
          }
        }
      }

      // Copy our local pinc/poff data into the memory we allocated in the config structure
      // If not present, leave the initial values
      if (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_PROG) {
        memcpy(pinc_poff_config->din_pinc, pinc, config_ret.Channels*sizeof(xip_dds_v6_0_data));
      }
      if (config_ret.Phase_Offset == XIP_DDS_PINCPOFF_PROG) {
        memcpy(pinc_poff_config->din_poff, poff, config_ret.Channels*sizeof(xip_dds_v6_0_data));
      }

      // Run the config routine
      if (xip_dds_v6_0_config_do(pstate, pinc_poff_config) == XIP_STATUS_OK) {
        std::cout << "INFO: config_do was successful" << std::endl;
      } else {
        std::cerr << "ERROR: config_packet failed" << std::endl;
        exit(4);
      }

    }
  }

  int resync_sample = rand() % (number_of_samples-2) + 1; // Do a resync randomly in the frame between 2nd and 2nd-last sample
  for(sample = 0; sample < number_of_samples; sample++) {
    for (channel = 0; channel < config_ret.Channels; channel++) {

      field = 0;

      // Phase_In input, for Sin/Cos LUT configuration only
      if (config_ret.PartsPresent == XIP_DDS_SIN_COS_LUT_ONLY) {
        //field is PHASE_IN
        if (config_ret.Mode_of_Operation == XIP_DDS_MOO_RASTERIZED) {
          value = rand() % (config_ret.Modulus); // Allow zero too
        } else {
          value = rand() % (1ULL << (config_ret.resPhase_Width)); // Allow zero too
        }
        xip_dds_v6_0_xip_array_real_set_data(din, value, sample, channel, field);
        field++;
      }

      // Streaming phase increment
      if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY) {
        if (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_STREAM) {
          //field is PINC
          if (config_ret.Mode_of_Operation == XIP_DDS_MOO_RASTERIZED) {
            value = rand() % (config_ret.Modulus); // Allow zero too
          } else {
            value = rand() % (1ULL << (config_ret.resPhase_Width)); // Allow zero too
          }
          xip_dds_v6_0_xip_array_real_set_data(din, value, sample, channel, field);
          field++;
        }
      }

      // Streaming phase offset
      if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY) {
        if (config_ret.Phase_Offset == XIP_DDS_PINCPOFF_STREAM) {
          //field is POFF
          if (config_ret.Mode_of_Operation == XIP_DDS_MOO_RASTERIZED) {
            value = (channel + 1 + sample) % (config_ret.Modulus);
          } else {
            value = (channel + 1 + sample) % (1ULL << (config_ret.resPhase_Width));
          }
          xip_dds_v6_0_xip_array_real_set_data(din, value, sample, channel, field);
          field++;
        }
      }

      // Finally do resync, if required
      if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY) {
        if ((config_ret.Phase_Increment == XIP_DDS_PINCPOFF_STREAM) && (config_ret.Resync == XIP_DDS_PRESENT)){
          //field is Resync
          if (sample == resync_sample) {
            value = 1;
          } else {
            value = 0;
          }
          xip_dds_v6_0_xip_array_real_set_data(din, value, sample, channel, field);
          field++;
        }
      }

    }
  }

  //------------------
  // Simulate the core
  //------------------
  std::cout << "INFO: Running the C model..." << std::endl;

  if (xip_dds_v6_0_data_do(pstate,   //pointer to c model instance
                           din, //pointer to input data structure
                           dout, //pointer to output structure
                           number_of_samples, //first dimension of either data structure
                           config_ret.Channels, //2nd dimension of either data structure
                           no_of_input_fields, //3rd dimension of input
                           no_of_output_fields //3rd dimension of output
                           ) != XIP_STATUS_OK)  {
    std::cerr << "ERROR: C model did not complete successfully" << std::endl;
    xip_array_real_destroy(din);
    xip_array_real_destroy(dout);
    xip_dds_v6_0_destroy(pstate);
    if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY && (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_PROG || config_ret.Phase_Offset == XIP_DDS_PINCPOFF_PROG)) {
      xip_dds_v6_0_free_config_pkt(&pinc_poff_config);
    }
    exit(5);
  }
  else {
    std::cout << "INFO: C model transaction completed successfully" << std::endl;
  }

#if(DEBUG)
  // When enabled, this will print the result data to stdout
  for(int sample = 0;sample< number_of_samples;sample++) {
    std::cout << std::endl << "Sample " << sample;
    for(int chan = 0; chan < config_ret.Channels; chan++) {
      std::cout << std::endl << "Channel " << sample;
      field = 0;
      xip_dds_v6_0_xip_array_real_get_data(dout, &value, sample, chan, field);
      std::cout << ":  out phase = " << value;
      field++;
      if(config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY ) {
        if (config_ret.Output_Selection != XIP_DDS_OUT_COS_ONLY) {
          xip_dds_v6_0_xip_array_real_get_data(dout, &value, sample, chan, field);
          std::cout << " out sin = " << value;
          field++;
        }
        if (config_ret.Output_Selection != XIP_DDS_OUT_SIN_ONLY) {
         xip_dds_v6_0_xip_array_real_get_data(dout, &value, sample, chan, field);
         std::cout << " out cos = " << value;
        }
      }
      std::cout << std::endl;
    }
   }
#endif

  //-----------------
  // Reset the core
  // This will clear the phase accumulator state, and any resync input,
  // but leave any programmed phase increment/phase offset values
  // unchanged.
  //-----------------
  if (xip_dds_v6_0_reset(pstate) == XIP_STATUS_OK) {
    std::cout << "INFO: C model reset successfully" << std::endl;
  } else {
    std::cout << "ERROR: C model reset did not complete successfully" << std::endl;
    exit(6);
  }

  //------------------------
  // Simulate the core again
  //------------------------
  std::cout << "INFO: Running the C model again after reset..." << std::endl;

  if (xip_dds_v6_0_data_do(pstate,   //pointer to c model instance
                           din, //pointer to input data structure
                           dout, //pointer to output structure
                           number_of_samples, //first dimension of either data structure
                           config_ret.Channels, //2nd dimension of either data structure
                           no_of_input_fields, //3rd dimension of input
                           no_of_output_fields //3rd dimension of output
                           ) != XIP_STATUS_OK)  {
    std::cerr << "ERROR: C model did not complete successfully" << std::endl;
    xip_array_real_destroy(din);
    xip_array_real_destroy(dout);
    xip_dds_v6_0_destroy(pstate);
    if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY && (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_PROG || config_ret.Phase_Offset == XIP_DDS_PINCPOFF_PROG)) {
      xip_dds_v6_0_free_config_pkt(&pinc_poff_config);
    }
    exit(7);
  }
  else {
    std::cout << "INFO: C model transaction completed successfully" << std::endl;
  }

#if(DEBUG)
  // When enabled, this will print the result data to stdout
  const int SCALE_FACTOR = sizeof(int)*CHAR_BIT - config_ret.Output_Width;
  for(int sample = 0;sample< number_of_samples;sample++) {
    std::cout << std::endl << "Sample " << sample;
    for(int chan = 0; chan < config_ret.Channels; chan++) {
      std::cout << std::endl << "Channel " << sample;
      field = 0;
      xip_dds_v6_0_xip_array_real_get_data(dout, &value, sample, chan, field);
      std::cout << ":  out phase = " << value;
      field++;
      if(config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY ) {
        if (config_ret.Output_Selection != XIP_DDS_OUT_COS_ONLY) {
          xip_dds_v6_0_xip_array_real_get_data(dout, &value, sample, chan, field);
          std::cout << " out sin = " << (((int)value << SCALE_FACTOR) >> SCALE_FACTOR);
          field++;
        }
        if (config_ret.Output_Selection != XIP_DDS_OUT_SIN_ONLY) {
         xip_dds_v6_0_xip_array_real_get_data(dout, &value, sample, chan, field);
         std::cout << " out cos = " << (((int)value << SCALE_FACTOR) >> SCALE_FACTOR);
        }
      }
      std::cout << std::endl;
    }
   }
#endif

  //------------------------------
  // Call destructors, free memory
  //------------------------------
  xip_array_real_destroy(din);
  xip_array_real_destroy(dout);
  std::cout << "INFO: C model input and output data freed" << std::endl;
  if (config_ret.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY && (config_ret.Phase_Increment == XIP_DDS_PINCPOFF_PROG || config_ret.Phase_Offset == XIP_DDS_PINCPOFF_PROG)) {
    xip_dds_v6_0_free_config_pkt(&pinc_poff_config);
    std::cout << "INFO: C model config packet data freed" << std::endl;
  }
  xip_dds_v6_0_destroy(pstate);
  std::cout << "INFO: C model destroyed" << std::endl;

  // We will already have returned if there was an error
  return 0;
}
