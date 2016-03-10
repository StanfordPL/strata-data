  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm0    #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vmaxsd %xmm1, %xmm0, %xmm10  #  2     0x5   4      OPC=vmaxsd_xmm_xmm_xmm    
  pmovzxwq %xmm10, %xmm8       #  3     0x9   6      OPC=pmovzxwq_xmm_xmm      
  movq %xmm8, %rbx             #  4     0xf   5      OPC=movq_r64_xmm          
  retq                         #  5     0x14  1      OPC=retq                  
                                                                               
.size target, .-target
