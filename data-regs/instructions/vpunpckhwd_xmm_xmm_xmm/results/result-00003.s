  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vdivpd %xmm2, %xmm3, %xmm10       #  1     0     4      OPC=vdivpd_xmm_xmm_xmm        
  vmaxsd %xmm3, %xmm2, %xmm1        #  2     0x4   4      OPC=vmaxsd_xmm_xmm_xmm        
  vfmadd231ps %xmm2, %xmm1, %xmm10  #  3     0x8   5      OPC=vfmadd231ps_xmm_xmm_xmm   
  vcvtdq2pd %xmm10, %xmm8           #  4     0xd   5      OPC=vcvtdq2pd_xmm_xmm         
  vfnmsub132ss %xmm8, %xmm3, %xmm3  #  5     0x12  5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  vpunpckhwd %ymm3, %ymm1, %ymm1    #  6     0x17  4      OPC=vpunpckhwd_ymm_ymm_ymm    
  retq                              #  7     0x1b  1      OPC=retq                      
                                                                                        
.size target, .-target
