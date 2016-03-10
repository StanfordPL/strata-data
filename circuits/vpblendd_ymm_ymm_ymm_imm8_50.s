  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovddup %ymm3, %ymm5            #  1     0     4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm2, %ymm5, %ymm1  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vfmsub213ss %xmm3, %xmm2, %xmm3  #  3     0x8   5      OPC=vfmsub213ss_xmm_xmm_xmm  
  vunpcklps %xmm5, %xmm3, %xmm11   #  4     0xd   4      OPC=vunpcklps_xmm_xmm_xmm    
  vmovsd %xmm2, %xmm11, %xmm10     #  5     0x11  4      OPC=vmovsd_xmm_xmm_xmm       
  movss %xmm10, %xmm1              #  6     0x15  5      OPC=movss_xmm_xmm            
  retq                             #  7     0x1a  1      OPC=retq                     
                                                                                      
.size target, .-target
