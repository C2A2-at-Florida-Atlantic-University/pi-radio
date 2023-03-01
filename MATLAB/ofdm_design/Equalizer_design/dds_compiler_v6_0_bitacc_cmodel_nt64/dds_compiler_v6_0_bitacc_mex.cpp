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
//
//  Note the following:
//   * In MEX functions mxMalloc/mxCalloc/mxRealloc will not return if the allocation fails,
//       hence checks for null pointers are unnecessary
//   * Matlab performs automatic garbage collection of non-persistent memory and arrays within MEX functions,
//       hence calls to mxFree are generally not required

#include "mex.h"
#include "dds_compiler_v6_0_bitacc_cmodel.h"
#include <stdlib.h>
#include <string.h>
#include <sstream>

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//mxarray helper functions

//True if mx can be interpreted as a real numeric scalar
bool is_real_scalar(const mxArray* mx)
{
  return mx && mxGetNumberOfElements(mx)==1 && mxIsNumeric(mx) && !mxIsComplex(mx) && !mxIsSparse(mx);
}

//True if mx can be interpreted as a real numeric vector
bool is_numeric_vector(const mxArray* mx)
{
  return mx && mxIsNumeric(mx) && !mxIsSparse(mx);
}

//True if mx can be interpreted as a single string
bool is_string(const mxArray* mx)
{
  return mx && mxIsChar(mx) && mxGetM(mx)==1 && mxGetN(mx)==mxGetNumberOfElements(mx);
}

//Concatenate two C style strings in an mxMalloc allocated area of memory
char* mxmalloc_strcat(const char* s1,const char* s2)
{
  size_t s1len;
  size_t s2len;
  char* res;

  s1len=strlen(s1);
  s2len=strlen(s2);
  res=(char*)mxMalloc(s1len+s2len+1);

  strcpy(res      ,s1);
  strcpy(res+s1len,s2);

  return res;
}

//Convert an mxArray to a C-style string
char* mxarray_to_string(const mxArray* mx)
{
  char* res;
  unsigned int res_len;

  if (!is_string(mx)) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_string","ERROR:dds_compiler_v6_0_bitacc_mex:Expecting string");

  res_len=(unsigned int)mxGetNumberOfElements(mx)+1;
  res=(char*)mxMalloc(res_len);

  if (mxGetString(mx,res,res_len)) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_call","ERROR:dds_compiler_v6_0_bitacc_mex:Unexpected failure of mxGetString");
  return res;
}

//Convert a numeric real scalar mxArray to an int
int mxarray_to_int(const mxArray* mx)
{
  if (is_real_scalar(mx))
  {
    double x=mxGetScalar(mx);
    return (int)(x);
  }
  else if (mxIsLogicalScalar(mx))
  {
    //Convert logical to 0 or 1
    return (mxIsLogicalScalarTrue(mx) ? 1 : 0);
  }

  mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_scalar","ERROR:dds_compiler_v6_0_bitacc_mex:Expecting real numeric or logical scalar (mxarray_to_int)");
  return 0;  //Will not return
}

//Convert a numeric real scalar mxArray to an unsigned int
unsigned int mxarray_to_uint(const mxArray* mx)
{
  if (is_real_scalar(mx))
  {
    double x=mxGetScalar(mx);
    if (x>=0.0) return (unsigned int)(x);
  }
  else if (mxIsLogicalScalar(mx))
  {
    //Convert logical to 0 or 1
    return (mxIsLogicalScalarTrue(mx) ? 1 : 0);
  }

  mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_scalar","ERROR:dds_compiler_v6_0_bitacc_mex:Expecting unsigned real numeric or logical scalar (mxarray_to_uint)");
  return 0;  //Will not return
}

//Convert a numeric real scalar mxArray to a float
float mxarray_to_float(const mxArray* mx)
{
  if (is_real_scalar(mx))
  {
    double x=mxGetScalar(mx);
    return (float)(x);
  }
  else if (mxIsLogicalScalar(mx))
  {
    //Convert logical to 0 or 1
    return (mxIsLogicalScalarTrue(mx) ? 1 : 0);
  }

  mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_scalar","ERROR:dds_compiler_v6_0_bitacc_mex:Expecting real numeric or logical scalar (mxarray_to_float)");
  return 0;  //Will not return
}

//Convert a numeric real scalar mxArray to a double
double mxarray_to_double(const mxArray* mx)
{
  if (is_real_scalar(mx))
  {
    double x=mxGetScalar(mx);
    return (double)(x);
  }
  else if (mxIsLogicalScalar(mx))
  {
    //Convert logical to 0 or 1
    return (mxIsLogicalScalarTrue(mx) ? 1 : 0);
  }

  mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_scalar","ERROR:dds_compiler_v6_0_bitacc_mex:Expecting real numeric or logical scalar (mxarray_to_double)");
  return 0;  //Will not return
}

//Create a real numeric scalar with the given value
mxArray* mxarray_create_scalar(double value)
{
  mxArray* res=mxCreateDoubleScalar(value);
  if (!res) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_scalar","ERROR:dds_compiler_v6_0_bitacc_mex:Could not create numeric scalar");
  return res;
}

//Create an empty scalar structure
mxArray* mxstruct_create()
{
  const char* FIELDNAMES[]={""};
  mxArray* res=mxCreateStructMatrix(1,1,0,FIELDNAMES);
  if (!res) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_struct","ERROR:dds_compiler_v6_0_bitacc_mex:Could not create empty structure");
  return res;
}

//Add a string field to an mxarray struct
void mxstruct_add_field_string(mxArray* mx, const char* fieldname, const char* value)
{
  int ix=mxAddField(mx,fieldname);
  if (ix==-1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_field","ERROR:dds_compiler_v6_0_bitacc_mex:Could not add field %s",fieldname);
  mxSetFieldByNumber(mx,0,ix,mxCreateString(value));
}

//Add an integer field to an mxarray struct
void mxstruct_add_field_int(mxArray* mx, const char* fieldname, int value)
{
  int ix=mxAddField(mx,fieldname);
  if (ix==-1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_field","ERROR:dds_compiler_v6_0_bitacc_mex:Could not add field %s",fieldname);
  mxSetFieldByNumber(mx,0,ix,mxCreateDoubleScalar((double)value));
}

//Add an unsigned integer field to an mxarray struct
void mxstruct_add_field_uint(mxArray* mx, const char* fieldname, unsigned int value)
{
  int ix=mxAddField(mx,fieldname);
  if (ix==-1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_field","ERROR:dds_compiler_v6_0_bitacc_mex:Could not add field %s",fieldname);
  mxSetFieldByNumber(mx,0,ix,mxCreateDoubleScalar((double)value));
}

//Add a float field to an mxarray struct
void mxstruct_add_field_float(mxArray* mx, const char* fieldname, float value)
{
  int ix=mxAddField(mx,fieldname);
  if (ix==-1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_field","ERROR:dds_compiler_v6_0_bitacc_mex:Could not add field %s",fieldname);
  mxSetFieldByNumber(mx,0,ix,mxCreateDoubleScalar((double)value));
}

//Add a double field to an mxarray struct
void mxstruct_add_field_double(mxArray* mx, const char* fieldname, double value)
{
  int ix=mxAddField(mx,fieldname);
  if (ix==-1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_field","ERROR:dds_compiler_v6_0_bitacc_mex:Could not add field %s",fieldname);
  mxSetFieldByNumber(mx,0,ix,mxCreateDoubleScalar((double)value));
}

//Add a mxarray field to an mxarray struct
void mxstruct_add_field_mxarray(mxArray* mx, const char* fieldname, const mxArray* mx_value)
{
  int ix=mxAddField(mx,fieldname);
  if (ix==-1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_field","ERROR:dds_compiler_v6_0_bitacc_mex:Could not add field %s",fieldname);
  mxSetFieldByNumber(mx,0,ix,(mxArray*)mx_value);
}

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Functions for manipulating model handles

//Model handle type
typedef unsigned int model_handle;

//Simple dynamic vector for storing model structures attached to model handles
typedef struct
{
  xip_dds_v6_0** m_data;
  size_t m_size;
} model_handle_vector;

//Destroy a model_handle_vector
void model_handle_vector_destroy(model_handle_vector* mhv)
{
  size_t i;

  if (mhv)
  {
    //Destroy any model objects in the model_handle_vector
    if (mhv->m_data)
    {
      for (i=0; i<mhv->m_size; i++)
      {
        if (mhv->m_data[i]) xip_dds_v6_0_destroy(mhv->m_data[i]);
      }

      free(mhv->m_data);
    }

    free(mhv);
  }
}

//Create a model_handle_vector
model_handle_vector* model_handle_vector_create()
{
  const unsigned int DEFAULT_SIZE=16;
  model_handle_vector* mhv;

  mhv=(model_handle_vector*)calloc(1,sizeof(model_handle_vector));
  if (mhv)
  {
    mhv->m_data=(xip_dds_v6_0**)calloc(DEFAULT_SIZE,sizeof(xip_dds_v6_0*));
    mhv->m_size=DEFAULT_SIZE;
  }

  if (!mhv || !mhv->m_data)
  {
    model_handle_vector_destroy(mhv);
    mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_alloc","ERROR:dds_compiler_v6_0_bitacc_mex:Could not allocate memory for model handle vector");
    return 0;
  }

  return mhv;
}

//Get next unused model_handle in model_handle_vector
model_handle model_handle_vector_get_next(model_handle_vector* mhv)
{
  model_handle res=0;
  xip_dds_v6_0** p=0;

  //Scan array looking for free slot (handle 0 is always unused)
  for (res=1; res<mhv->m_size; res++) if (!mhv->m_data[res]) return res;

  //No spare slot found in array, so extend it
  p=(xip_dds_v6_0**)realloc((void*)mhv->m_data,sizeof(xip_dds_v6_0*)*mhv->m_size*2);
  if (!p) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_model_handle","ERROR:dds_compiler_v6_0_bitacc_mex:Could not allocate a free model handle");

  //Resize was successful
  memset((void*)(p+mhv->m_size),0,sizeof(xip_dds_v6_0*)*mhv->m_size);
  res=(model_handle)mhv->m_size;
  mhv->m_data=p;
  mhv->m_size=mhv->m_size*2;
  return res;
}

//Set xip_dds_v6_0 associated with model_handle
void model_handle_vector_set_structure(model_handle_vector* mhv, model_handle mh, xip_dds_v6_0* s)
{
  if (mh>0 && mh<mhv->m_size) mhv->m_data[mh]=s;
}

//Get xip_dds_v6_0 associated with model_handle
xip_dds_v6_0* model_handle_vector_get_structure(model_handle_vector* mhv, model_handle mh)
{
  if (mh>0 && mh<mhv->m_size) return mhv->m_data[mh];
  return 0;
}

//Get a model_handle from the numeric scalar array mx (or zero if error or invalid)
model_handle mxarray_get_model_handle(const mxArray* mx)
{
  if (!is_real_scalar(mx))
  {
    mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_model_handle","ERROR:dds_compiler_v6_0_bitacc_mex:Model handle must be a real numeric scalar");
    return 0;
  }

  //Get handle as an integer
  return (model_handle)mxGetScalar(mx);
}

//Global model_handle_vector for this MEX function
model_handle_vector* the_model_handle_vector=0;

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Functions for converting between Matlab and Xilinx arrays

//Convert dimensions vector from mwSize* to size_t*
const size_t* mxarray_dimensions_to_xip_array_dimensions(const mxArray* mx)
{
  size_t* res;
  mwSize len;
  const mwSize* p;
  const mwSize* q;
  size_t* r;

  if (sizeof(size_t)==sizeof(mwSize))
  {
    //If sizeof(mwSize)==sizeof(size_t) the vector can be used directly (read only)
    return (const size_t*)mxGetDimensions(mx);
  }
  else
  {
    //Otherwise we need a copy
    len=mxGetNumberOfDimensions(mx);
    res=(size_t*)mxMalloc(len*sizeof(size_t));
    for (p=mxGetDimensions(mx), q=p+len, r=res; p!=q; ++p, ++r) *r=*p;
    return res;
  }
}

const size_t* modified_mxarray_dimensions_to_xip_array_dimensions(const mxArray* mx)
{
  size_t* res;
  mwSize len;
  const mwSize* p;
  const mwSize* q;
  size_t* r;

  //we need a copy because the number of dimensions will be increased to a minimum of 3.
  len=3;
  res=(size_t*)mxMalloc(len*sizeof(size_t));
  for (p=mxGetDimensions(mx), q=p+mxGetNumberOfDimensions(mx), r=res; len>0; ++p, ++r, --len) *r=(p<q ? *p : 1);
  return res;
}

//Convert dimensions vector from size_t* to mwSize*
const mwSize* xip_array_dimensions_to_mxarray_dimensions(const size_t* dim, const size_t dim_size)
{
  mwSize* res;
  const size_t* p;
  const size_t* q;
  mwSize* r;

  //Copy so source array can be deleted
  size_t min_dim_size = dim_size;
  if (dim_size < 2) min_dim_size = 2; // Fix up for Octave
  res=(mwSize*)mxMalloc(min_dim_size*sizeof(mwSize));
  for (p=dim, q=p+dim_size, r=res; p!=q; ++p, ++r) *r=(mwSize)(*p);
  if (dim_size < 2) res[1] = 1; // Fix up for Octave
  return res;
}

//Convert a mxArray to a static xip_array_real
xip_array_real* mxarray_to_xip_array_real(const mxArray* mx, const char* name)
{
  xip_array_real* res=0;

  //Create an empty xip_array object on the Matlab heap
  res=(xip_array_real*)mxCalloc(1,sizeof(xip_array_real));
  res->owner=1;  //Memory is owned by Matlab
  res->ops=xip_array_real_get_default_ops();

  if (mx)
  {
    if (!is_numeric_vector(mx)) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; mx is not a numeric vector",name);
    if (mxIsComplex(mx)) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; apparently mx is complex",name);
    if (!is_numeric_vector(mx) || mxIsComplex(mx)) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting real vector",name);
    if (mxGetClassID(mx)!=mxDOUBLE_CLASS) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting class double",name);

    //Create xip_array
    //  xip_array_real uses same data representation as mxarray, so we can link directly to Matlab data
    res->data         =mxGetPr(mx);
    res->data_size    =mxGetNumberOfElements(mx);
    res->data_capacity=mxGetNumberOfElements(mx);
    res->dim          =(size_t*)mxarray_dimensions_to_xip_array_dimensions(mx);  //Discard const qualifier, however model will not modify as owner is not zero
    res->dim_size     =mxGetNumberOfDimensions(mx);
    res->dim_capacity =mxGetNumberOfDimensions(mx);
  }

  return res;
}

//Convert a mxArray to a static xip_array_real, but ensure the xip_array_real is 3D
xip_array_real* modified_mxarray_to_xip_array_real(const mxArray* mx, const char* name)
{
  xip_array_real* res=0;

  //Create an empty xip_array object on the Matlab heap
  res=(xip_array_real*)mxCalloc(1,sizeof(xip_array_real));
  res->owner=1;  //Memory is owned by Matlab
  res->ops=xip_array_real_get_default_ops();

  if (mx)
  {
    if (!is_numeric_vector(mx)) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; mx is not a numeric vector",name);
    if (mxIsComplex(mx)) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; apparently mx is complex",name);
    if (!is_numeric_vector(mx) || mxIsComplex(mx)) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting real vector",name);
    if (mxGetClassID(mx)!=mxDOUBLE_CLASS) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting class double",name);

    //Create xip_array
    //  xip_array_real uses same data representation as mxarray, so we can link directly to Matlab data
    res->data         =mxGetPr(mx);
    res->data_size    =mxGetNumberOfElements(mx);
    res->data_capacity=mxGetNumberOfElements(mx);
    res->dim          =(size_t*)modified_mxarray_dimensions_to_xip_array_dimensions(mx);  //Discard const qualifier, however model will not modify as owner is not zero
    res->dim_size     =3;//mxGetNumberOfDimensions(mx);
    res->dim_capacity =3;//mxGetNumberOfDimensions(mx);
  }

  return res;
}

//Convert a xip_array_real to a mxArray
mxArray* xip_array_real_to_mxarray(const xip_array_real* x)
{
  mxArray* res;
  const xip_real* p;
  const xip_real* q;
  double* r;

  // Ensure min dim size, fix up for Octave
  res=mxCreateNumericArray(((int)x->dim_size < 2 ? 2 : (int)x->dim_size),xip_array_dimensions_to_mxarray_dimensions(x->dim,x->dim_size),mxDOUBLE_CLASS,mxREAL);
  for (p=x->data, q=x->data+mxGetNumberOfElements(res), r=(double*)mxGetPr(res); p!=q; ++p, ++r) *r=(double)*p;
  return res;
}


//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Functions to handle xip_dds_v6_0_* structures

//Convert a mxArray to a xip_dds_v6_0_config structure
xip_dds_v6_0_config* mxarray_to_xip_dds_v6_0_config(const mxArray* mx, const char* name)
{
  xip_dds_v6_0_config* res=0;
  int i;

  res=(xip_dds_v6_0_config*)mxCalloc(1,sizeof(xip_dds_v6_0_config));
  xip_dds_v6_0_default_config(res);

  if (mx)
  {
    if (!mxIsStruct(mx) || mxGetNumberOfElements(mx)!=1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_structure","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting scalar structure",name);

    for (i=0; i<mxGetNumberOfFields(mx); i++)
    {
      const char* fieldname=mxGetFieldNameByNumber(mx,i);
           if (!strcmp(fieldname,"name"                        )) res->name                        =mxarray_to_string(mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"PartsPresent"                )) res->PartsPresent                =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"DDS_Clock_Rate"              )) res->DDS_Clock_Rate              =mxarray_to_double   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Channels"                    )) res->Channels                    =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Mode_of_Operation"           )) res->Mode_of_Operation           =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Modulus"                     )) res->Modulus                     =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"ParameterEntry"              )) res->ParameterEntry              =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Spurious_Free_Dynamic_Range" )) res->Spurious_Free_Dynamic_Range =mxarray_to_double   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Frequency_Resolution"        )) res->Frequency_Resolution        =mxarray_to_double   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Noise_Shaping"               )) res->Noise_Shaping               =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Phase_Increment"             )) res->Phase_Increment             =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Resync"                      )) res->Resync                      =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Phase_Offset"                )) res->Phase_Offset                =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Output_Selection"            )) res->Output_Selection            =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Negative_Sine"               )) res->Negative_Sine               =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Negative_Cosine"             )) res->Negative_Cosine             =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Amplitude_Mode"              )) res->Amplitude_Mode              =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Memory_Type"                 )) res->Memory_Type                 =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Optimization_Goal"           )) res->Optimization_Goal           =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"DSP48_Use"                   )) res->DSP48_Use                   =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Has_TREADY"                  )) res->Has_TREADY                  =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"S_CONFIG_Sync_Mode"          )) res->S_CONFIG_Sync_Mode          =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Output_Form"                 )) res->Output_Form                 =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Latency_Configuration"       )) res->Latency_Configuration       =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Has_ARESETn"                 )) res->Has_ARESETn                 =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));

      else if (!strcmp(fieldname,"PINC"               )) {
        if (!is_numeric_vector(mxGetFieldByNumber(mx,0,i))) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting numeric vector",name);
        if (mxGetClassID(mxGetFieldByNumber(mx,0,i))!=mxDOUBLE_CLASS) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting class double",name);
        if (mxGetNumberOfDimensions(mxGetFieldByNumber(mx,0,i))>2) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid array, expecting 1 by n or n by 1 array");
        if ( ((*mxGetDimensions(mxGetFieldByNumber(mx,0,i)) == 1) ^ (*(mxGetDimensions(mxGetFieldByNumber(mx,0,i))+1) == 1)) == 0 ) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid coefficient array, expecting 1 by n or n by 1 array");

        //for (pinc_i = 0; pinc_i < res->Channels; pinc_i++) res->PINC[pinc_i] = mxarray_to_double(mxGetFieldByNumber(mx,0,i));
        // the following doesn't work because it applies to pointers of double only
        //res->PINC = mxGetPr(mxGetFieldByNumber(mx,0,i));
  double *pinc = mxGetPr(mxGetFieldByNumber(mx,0,i));
  int pinc_i;
  for (pinc_i = 0; pinc_i < res->Channels; pinc_i++)
    res->PINC[pinc_i] = (xip_dds_v6_0_data)pinc[pinc_i];
  //mxFree(pinc);
      }
      else if (!strcmp(fieldname,"POFF"               )) {
        if (!is_numeric_vector(mxGetFieldByNumber(mx,0,i))) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting numeric vector",name);
        if (mxGetClassID(mxGetFieldByNumber(mx,0,i))!=mxDOUBLE_CLASS) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting class double",name);
        if (mxGetNumberOfDimensions(mxGetFieldByNumber(mx,0,i))>2) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid array, expecting 1 by n or n by 1 array");
        if ( ((*mxGetDimensions(mxGetFieldByNumber(mx,0,i)) == 1) ^ (*(mxGetDimensions(mxGetFieldByNumber(mx,0,i))+1) == 1)) == 0 ) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_array","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid coefficient array, expecting 1 by n or n by 1 array");

        //int poff_i;
  //for (poff_i = 0; poff_i < res->Channels; poff_i++) res->POFF[poff_i] = mxarray_to_double(mxGetFieldByNumber(mx,0,i));
        // the following doesn't work because it applies to pointers of double only
        //        res->POFF = mxGetPr(mxGetFieldByNumber(mx,0,i));
  double *poff = mxGetPr(mxGetFieldByNumber(mx,0,i));
  int poff_i;
  for (poff_i = 0; poff_i < res->Channels; poff_i++)
    res->POFF[poff_i] = (xip_dds_v6_0_data)poff[poff_i];
  //mxFree(poff);
      }

      else if (!strcmp(fieldname,"Latency"                   )) res->Latency                       =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Phase_Width"               )) res->Phase_Width                   =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));
      else if (!strcmp(fieldname,"Output_Width"              )) res->Output_Width                  =mxarray_to_int   (mxGetFieldByNumber(mx,0,i));

      else mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_fieldname","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; unexpected fieldname %s",name,fieldname);
    }
  }

  return res;
}

//Convert a xip_dds_v6_0_config structure to a mxArray
mxArray* xip_dds_v6_0_config_to_mxarray(const xip_dds_v6_0_config* s)
{
  mxArray* mx;
  mxArray* pinc;
  mwSize*  pinc_dims;
  mxArray* poff;
  mwSize*  poff_dims;
  double*  r;

  //Create structure and populate
  mx=mxstruct_create();
  mxstruct_add_field_string(mx,"name"                       ,s->name);
  mxstruct_add_field_int(mx,"PartsPresent"                  ,s->PartsPresent);
  mxstruct_add_field_double(mx,"DDS_Clock_Rate"              ,s->DDS_Clock_Rate);
  mxstruct_add_field_int(mx,"Channels"                      ,s->Channels);
  mxstruct_add_field_int(mx,"Mode_of_Operation"             ,s->Mode_of_Operation);
  mxstruct_add_field_int(mx,"Modulus"                       ,s->Modulus);
  mxstruct_add_field_int(mx,"ParameterEntry"                ,s->ParameterEntry);
  mxstruct_add_field_double(mx,"Spurious_Free_Dynamic_Range" ,s->Spurious_Free_Dynamic_Range);
  mxstruct_add_field_double(mx,"Frequency_Resolution"        ,s->Frequency_Resolution);
  mxstruct_add_field_int(mx,"Noise_Shaping"                 ,s->Noise_Shaping);
  mxstruct_add_field_int(mx,"Phase_Increment"               ,s->Phase_Increment);
  mxstruct_add_field_int(mx,"Resync"                        ,s->Resync);
  mxstruct_add_field_int(mx,"Phase_Offset"                  ,s->Phase_Offset);
  mxstruct_add_field_int(mx,"Output_Selection"              ,s->Output_Selection);
  mxstruct_add_field_int(mx,"Negative_Sine"                 ,s->Negative_Sine);
  mxstruct_add_field_int(mx,"Negative_Cosine"               ,s->Negative_Cosine);
  mxstruct_add_field_int(mx,"Amplitude_Mode"                ,s->Amplitude_Mode);
  mxstruct_add_field_int(mx,"Memory_Type"                   ,s->Memory_Type);
  mxstruct_add_field_int(mx,"Optimization_Goal"             ,s->Optimization_Goal);
  mxstruct_add_field_int(mx,"DSP48_Use"                     ,s->DSP48_Use);
  mxstruct_add_field_int(mx,"Has_TREADY"                    ,s->Has_TREADY);
  mxstruct_add_field_int(mx,"S_CONFIG_Sync_Mode"            ,s->S_CONFIG_Sync_Mode);
  mxstruct_add_field_int(mx,"Output_Form"                   ,s->Output_Form);
  mxstruct_add_field_int(mx,"Latency_Configuration"         ,s->Latency_Configuration);
  mxstruct_add_field_int(mx,"Has_ARESETn"                   ,s->Has_ARESETn);

  if ( s->PINC != NULL ) {
    pinc_dims=(mwSize*)mxMalloc(2*sizeof(mwSize));                 // Ensure min dim size, fix up for Octave
    pinc_dims[0]=XIP_DDS_CHANNELS_MAX;
    pinc_dims[1]=1;//fixup for Octave
    pinc=mxCreateNumericArray(2,pinc_dims,mxDOUBLE_CLASS,mxREAL);//Ensure min dim size, fixup for Octave
    int pinc_i;
    for (pinc_i = 0, r=(double*)mxGetPr(pinc); pinc_i < s->Channels;pinc_i++,r++) *r=s->PINC[pinc_i];
    mxstruct_add_field_mxarray(mx,"PINC",pinc);
  }

  if ( s->POFF != NULL ) {
    poff_dims=(mwSize*)mxMalloc(2*sizeof(mwSize));//Ensure min dim size, fixup for Octave
    poff_dims[0]=XIP_DDS_CHANNELS_MAX;
    poff_dims[1]=1;//fixup for Octave
    poff=mxCreateNumericArray(2,poff_dims,mxDOUBLE_CLASS,mxREAL);//Ensure min dim size, fixup for Octave
    int poff_i;
    for (poff_i = 0, r=(double*)mxGetPr(poff); poff_i < s->Channels;poff_i++,r++) *r=s->POFF[poff_i];
    mxstruct_add_field_mxarray(mx,"POFF",poff);
  }

  mxstruct_add_field_int(mx,"Latency"                       ,s->Latency);
  mxstruct_add_field_int(mx,"Phase_Width"                   ,s->Phase_Width);
  mxstruct_add_field_int(mx,"Output_Width"                  ,s->Output_Width);

  return mx;
}

//Convert a mxArray to a xip_dds_v6_0_cnfg_packet structure
xip_dds_v6_0_config_pkt* mxarray_to_xip_dds_v6_0_config_pkt(const mxArray* mx, const char* name)
{
  xip_dds_v6_0_config_pkt* res=0;
  int i;
  const int MAX_CHANNELS=16;

  xip_dds_v6_0_alloc_config_pkt(&res, MAX_CHANNELS, MAX_CHANNELS);

  if (mx)
  {
    if (!mxIsStruct(mx) || mxGetNumberOfElements(mx)!=1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_structure","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid %s; expecting scalar structure",name);

    for (i=0; i<mxGetNumberOfFields(mx); i++) {
      const char* fieldname=mxGetFieldNameByNumber(mx,i);
      if (!strcmp(fieldname,"PINC"               )) {
  double *pinc = mxGetPr(mxGetFieldByNumber(mx,0,i));
  int pinc_i;
  for (pinc_i = 0; pinc_i < MAX_CHANNELS; pinc_i++)
    res->din_pinc[pinc_i] = (xip_dds_v6_0_data)pinc[pinc_i];
  //mxFree(pinc);
      } else if (!strcmp(fieldname,"POFF"               )) {
  double *poff = mxGetPr(mxGetFieldByNumber(mx,0,i));
  int poff_i;
  for (poff_i = 0; poff_i < MAX_CHANNELS; poff_i++)
    res->din_poff[poff_i] = (xip_dds_v6_0_data)poff[poff_i];
  //mxFree(poff);
      }
    }
  }

  return res;
}


//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
//Main body of MEX function

//Opcodes
typedef enum
{
  OP_GET_VERSION=0,
  OP_GET_DEFAULT_CONFIG=1,
  OP_CREATE=2,
  OP_DESTROY=3,
  OP_RESET=4,
  OP_CONFIG_DO=5,
  OP_RUN=6,
  OP_GET_CONFIG=7,
} mex_opcode;

//Called at MEX exit
void mex_at_exit()
{
  //Destroy all outstanding model objects
  model_handle_vector_destroy(the_model_handle_vector);
}

//Pass messages to Matlab
void mex_message_handler(void* handle, int error, const char* msg)
{
  if (error)
  {
    mexErrMsgTxt(msg);
  }
  else
  {
    mexPrintf("%s\n",msg);
  }
}

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void do_get_version(mex_opcode opcode, int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  if (nrhs!=0) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:get_version:Expecting zero input arguments");

  plhs[0]=mxCreateString(xip_dds_v6_0_get_version());
  if (!plhs[0])
  {
    mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_string","ERROR:dds_compiler_v6_0_bitacc_mex:get_version:Could not create string array");
    return;
  }
}

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void do_get_default_config(mex_opcode opcode, int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  xip_dds_v6_0_config* config;

  if (nrhs!=0) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:get_default_config:Expecting zero input arguments");

  //Convert default config to mxArray structure
  config=mxarray_to_xip_dds_v6_0_config(0,"default_config");
  plhs[0]=xip_dds_v6_0_config_to_mxarray(config);
  mxFree(config);
}

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void do_create(mex_opcode opcode, int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  xip_dds_v6_0_config* config;
  model_handle mh;
  xip_dds_v6_0* model;

  if (nrhs!=1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:create:Expecting one input argument");

  //Get config
  config=mxarray_to_xip_dds_v6_0_config(prhs[0],"config");

  //Get next model_handle to use
  mh=model_handle_vector_get_next(the_model_handle_vector);

  //Now create the model
  model=xip_dds_v6_0_create(config,mex_message_handler,0);
  if (!model) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_create","ERROR:dds_compiler_v6_0_bitacc_mex:create:Could not create model");

  //Register pointer and return handle
  model_handle_vector_set_structure(the_model_handle_vector,mh,model);
  plhs[0]=mxarray_create_scalar(mh);
}

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void do_destroy(mex_opcode opcode, int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  model_handle mh;
  xip_dds_v6_0* model;

  if (nrhs!=1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:destroy:Expecting one input argument");
  if (nlhs!=0) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_output","ERROR:dds_compiler_v6_0_bitacc_mex:destroy:Expecting zero output arguments");

  //Get model_handle
  mh=mxarray_get_model_handle(prhs[0]);
  model=model_handle_vector_get_structure(the_model_handle_vector,mh);

  //Destroy object if it still exists
  xip_dds_v6_0_destroy(model);
  model_handle_vector_set_structure(the_model_handle_vector,mh,0);
}

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void do_reset(mex_opcode opcode, int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  model_handle mh;
  xip_dds_v6_0* model;

  if (nrhs!=1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:reset:Expecting one input argument");
  if (nlhs!=0) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_output","ERROR:dds_compiler_v6_0_bitacc_mex:reset:Expecting zero output arguments");

  //Get model_handle
  mh=mxarray_get_model_handle(prhs[0]);
  model=model_handle_vector_get_structure(the_model_handle_vector,mh);
  if (!model) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_model_handle","ERROR:dds_compiler_v6_0_bitacc_mex:reset:Invalid model pointer");

  xip_dds_v6_0_reset(model);
}

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void do_config(mex_opcode opcode, int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  model_handle mh;
  xip_dds_v6_0* model;
  xip_dds_v6_0_config_pkt* config_pkt=0;

  if (nrhs!=2) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:config_do:Expecting two input arguments");
  if (nlhs!=0) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_output","ERROR:dds_compiler_v6_0_bitacc_mex:config_do:Expecting zero output arguments");

  //Get model_handle
  mh=mxarray_get_model_handle(prhs[0]);
  model=model_handle_vector_get_structure(the_model_handle_vector,mh);
  if (!model) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_model_handle","ERROR:dds_compiler_v6_0_bitacc_mex:config_do:Invalid model pointer");

  config_pkt=mxarray_to_xip_dds_v6_0_config_pkt(prhs[1],"config_pkt");

  xip_dds_v6_0_config_do(model,config_pkt);
  //mxFree(config_pkt);
}

//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void do_run(mex_opcode opcode, int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  model_handle mh;
  xip_dds_v6_0* model;
  xip_array_real* req;
  xip_array_real* resp;
  xip_dds_v6_0_config config;
  int form=1; //This makes the DDS c model return data in signed form rather than as raw slv casts

  if (nrhs!=3) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:run:Expecting three input arguments");
  if (nlhs!=1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_output","ERROR:dds_compiler_v6_0_bitacc_mex:run:Expecting one output argument");

  // Get model_handle
  mh=mxarray_get_model_handle(prhs[0]);
  model=model_handle_vector_get_structure(the_model_handle_vector,mh);
  if (!model) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_model_handle","ERROR:dds_compiler_v6_0_bitacc_mex:run:Invalid model pointer");

  //Input and output format is very much determined by the DDS configuration so lets get the current configuration
  xip_dds_v6_0_get_config(model,&config);

  // Inputs

  int samples = mxarray_to_int(prhs[1]);

  //Calculate the number of input fields
  int in_fields = 0;
  if (config.PartsPresent == XIP_DDS_SIN_COS_LUT_ONLY) {
    in_fields++; //Phase_In
  } else {
    if (config.Phase_Increment == XIP_DDS_PINCPOFF_STREAM) {
      in_fields++; //PINC
      if (config.Resync == XIP_DDS_PRESENT) {
        in_fields++; //RESYNC
      }
    }
    if (config.Phase_Offset == XIP_DDS_PINCPOFF_STREAM) {
      in_fields++; //POFF
    }
  }

  req = modified_mxarray_to_xip_array_real(prhs[2],"req");

  req->dim_size=3;
  req->dim[0]=samples;
  req->dim[1]=config.Channels;
  req->dim[2]=in_fields;



  //Calculate the number of output fields
  int out_fields = 0; //phase output is not optional in the c model.
  if (config.PartsPresent != XIP_DDS_SIN_COS_LUT_ONLY) {
    out_fields = 1; //PHASE_OUT
  }
  if (config.PartsPresent != XIP_DDS_PHASE_GEN_ONLY) {
    if (config.Output_Selection == XIP_DDS_OUT_SIN_ONLY) out_fields++; //SIN
    if (config.Output_Selection == XIP_DDS_OUT_COS_ONLY) out_fields++; //COS
    if (config.Output_Selection == XIP_DDS_OUT_SIN_AND_COS) out_fields += 2; //SIN and COS
  }

  resp = xip_array_real_create();
  xip_array_real_reserve_dim(resp,3); //dimensions are (Number of samples, channels, PINC/POFF/Phase)
  resp->dim_size = 3;
  resp->dim[0] = samples;
  resp->dim[1] = config.Channels;
  resp->dim[2] = out_fields;
  resp->data_size = resp->dim[0] * resp->dim[1] * resp->dim[2];
  if (xip_array_real_reserve_data(resp,resp->data_size) != XIP_STATUS_OK) {
    mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:run:memory_allocation error for output structure");
  }

  // Run model
  xip_dds_v6_0_data_do_signed(model,req,resp,samples,config.Channels,in_fields,out_fields,form);

  //Copy-cum-Convert results to mxarray and deallocate c model results array once copied.
  plhs[0]=xip_array_real_to_mxarray(resp);
  xip_array_real_destroy(resp);

  mxFree(req);
}
//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void do_get_config(mex_opcode opcode, int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  model_handle mh;
  xip_dds_v6_0* model;
  xip_dds_v6_0_config* config;

  config=(xip_dds_v6_0_config*)mxCalloc(1,sizeof(xip_dds_v6_0_config));

  if (nrhs!=1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_input","ERROR:dds_compiler_v6_0_bitacc_mex:get_config:Expecting one input argument");
  if (nlhs!=1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_output","ERROR:dds_compiler_v6_0_bitacc_mex:get_config:Expecting one output argument");

  // Get model_handle
  mh=mxarray_get_model_handle(prhs[0]);
  model=model_handle_vector_get_structure(the_model_handle_vector,mh);
  if (!model) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_model_handle","ERROR:dds_compiler_v6_0_bitacc_mex:do_get_config:Invalid model pointer");

  xip_dds_v6_0_get_config(model,config);

  //Convert results to mxarray
  plhs[0]=xip_dds_v6_0_config_to_mxarray(config);
  mxFree(config);
}
//- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
void mexFunction(int nlhs, mxArray* plhs[], int nrhs, const mxArray* prhs[])
{
  double x;
  mex_opcode opcode;

  //First time initialisation
  if (!the_model_handle_vector)
  {
    //Register our exit function
    mexAtExit(mex_at_exit);

    //Ensure datatypes are equivalent
    if (sizeof(xip_uint)!=sizeof(unsigned int )) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_mex","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid MEX function; size of xip_uint and unsigned int types are incompatible");
    if (sizeof(xip_real)!=sizeof(double       )) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_mex","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid MEX function; size of xip_real and double types are incompatible");

    //Create model repository
    the_model_handle_vector=model_handle_vector_create();
  }

  //Consume and check opcode
  if (nrhs<1) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_opcode","ERROR:dds_compiler_v6_0_bitacc_mex:Missing opcode");
  if (!is_real_scalar(prhs[0])) mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_opcode","ERROR:dds_compiler_v6_0_bitacc_mex:opcode must be a real numeric scalar");
  x=mxGetScalar(prhs[0]);
  opcode=(mex_opcode)((int)x);
  nrhs--;
  prhs++;

  //Dispatch opcode
  switch (opcode)
  {
    //version=get_version()
    case OP_GET_VERSION:
    {
      do_get_version(opcode,nlhs,plhs,nrhs,prhs);
    } break;

    //config=get_default_config()
    case OP_GET_DEFAULT_CONFIG:
    {
      do_get_default_config(opcode,nlhs,plhs,nrhs,prhs);
    } break;

    //model=create(config)
    case OP_CREATE:
    {
      do_create(opcode,nlhs,plhs,nrhs,prhs);
    } break;

    //destroy(model)
    case OP_DESTROY:
    {
      do_destroy(opcode,nlhs,plhs,nrhs,prhs);
    } break;

    //reset(model)
    case OP_RESET:
    {
      do_reset(opcode,nlhs,plhs,nrhs,prhs);
    } break;

    //apply config(model,config_pkt)
    case OP_CONFIG_DO:
    {
      do_config(opcode,nlhs,plhs,nrhs,prhs);
    } break;

    //[data_out]=run(model,data_in,samples)
    case OP_RUN:
    {
      do_run(opcode,nlhs,plhs,nrhs,prhs);
    } break;

    //[config]=get_config(model)
    case OP_GET_CONFIG:
    {
      do_get_config(opcode,nlhs,plhs,nrhs,prhs);
    } break;

    default:
    {
      mexErrMsgIdAndTxt("dds_compiler_v6_0_bitacc_mex:bad_opcode","ERROR:dds_compiler_v6_0_bitacc_mex:Invalid opcode %d",opcode);
    } break;
  }
}
