  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm1                #  1     0     4      OPC=vmovd_xmm_r32            
  vpxor %ymm9, %ymm9, %ymm0        #  2     0x4   5      OPC=vpxor_ymm_ymm_ymm        
  vcvttpd2dq %xmm2, %xmm5          #  3     0x9   4      OPC=vcvttpd2dq_xmm_xmm       
  vfmsub213ss %xmm5, %xmm0, %xmm2  #  4     0xd   5      OPC=vfmsub213ss_xmm_xmm_xmm  
  vmovss %xmm1, %xmm2, %xmm1       #  5     0x12  4      OPC=vmovss_xmm_xmm_xmm       
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
