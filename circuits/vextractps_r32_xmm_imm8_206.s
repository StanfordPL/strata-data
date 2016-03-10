  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vminpd %xmm1, %xmm1, %xmm4       #  1     0     4      OPC=vminpd_xmm_xmm_xmm       
  vpunpckhqdq %ymm4, %ymm4, %ymm8  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movapd %xmm8, %xmm2              #  3     0x8   5      OPC=movapd_xmm_xmm           
  vmovd %xmm2, %ebx                #  4     0xd   4      OPC=vmovd_r32_xmm            
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
