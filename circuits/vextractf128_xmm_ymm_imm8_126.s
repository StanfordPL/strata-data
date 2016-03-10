  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmovupd %ymm1, %ymm11              #  1     0     4      OPC=vmovupd_ymm_ymm           
  vmaxss %xmm11, %xmm11, %xmm7       #  2     0x4   5      OPC=vmaxss_xmm_xmm_xmm        
  vfnmsub213ss %xmm11, %xmm7, %xmm1  #  3     0x9   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  movdqa %xmm11, %xmm1               #  4     0xe   5      OPC=movdqa_xmm_xmm            
  retq                               #  5     0x13  1      OPC=retq                      
                                                                                         
.size target, .-target
