  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhpd %xmm2, %xmm1, %xmm5  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovshdup %ymm5, %ymm13        #  2     0x4  4      OPC=vmovshdup_ymm_ymm      
  punpckhqdq %xmm13, %xmm1       #  3     0x8  5      OPC=punpckhqdq_xmm_xmm     
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
