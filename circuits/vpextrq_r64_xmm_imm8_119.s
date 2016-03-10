  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtss2sd %xmm1, %xmm1, %xmm0  #  1     0     4      OPC=vcvtss2sd_xmm_xmm_xmm  
  vmulpd %ymm0, %ymm0, %ymm4     #  2     0x4   4      OPC=vmulpd_ymm_ymm_ymm     
  punpckhqdq %xmm4, %xmm0        #  3     0x8   4      OPC=punpckhqdq_xmm_xmm     
  vmovq %xmm0, %rbx              #  4     0xc   5      OPC=vmovq_r64_xmm          
  retq                           #  5     0x11  1      OPC=retq                   
                                                                                  
.size target, .-target
