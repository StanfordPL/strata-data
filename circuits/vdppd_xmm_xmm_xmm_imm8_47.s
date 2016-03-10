  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  movaps %xmm3, %xmm1                             #  2     0x5   3      OPC=movaps_xmm_xmm           
  vcvtpd2ps %xmm1, %xmm0                          #  3     0x8   4      OPC=vcvtpd2ps_xmm_xmm        
  vfmadd132pd %xmm10, %xmm0, %xmm1                #  4     0xc   5      OPC=vfmadd132pd_xmm_xmm_xmm  
  vandpd %ymm0, %ymm1, %ymm1                      #  5     0x11  4      OPC=vandpd_ymm_ymm_ymm       
  vfmsub213pd %xmm0, %xmm2, %xmm3                 #  6     0x15  5      OPC=vfmsub213pd_xmm_xmm_xmm  
  vfmadd231pd %ymm0, %ymm1, %ymm3                 #  7     0x1a  5      OPC=vfmadd231pd_ymm_ymm_ymm  
  vpunpckhqdq %xmm3, %xmm3, %xmm1                 #  8     0x1f  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                            #  9     0x23  1      OPC=retq                     
                                                                                                     
.size target, .-target
