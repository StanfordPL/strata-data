  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm3, %xmm7  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovdqu %ymm7, %ymm11            #  2     0x4   4      OPC=vmovdqu_ymm_ymm          
  vunpckhpd %ymm7, %ymm11, %ymm0   #  3     0x8   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vfmadd231pd %xmm3, %xmm2, %xmm1  #  4     0xc   5      OPC=vfmadd231pd_xmm_xmm_xmm  
  movlhps %xmm0, %xmm1             #  5     0x11  3      OPC=movlhps_xmm_xmm          
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
