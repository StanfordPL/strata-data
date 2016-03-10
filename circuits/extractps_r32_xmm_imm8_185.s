  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm7  #  1     0    4      OPC=movshdup_xmm_xmm  
  pmovzxdq %xmm7, %xmm6  #  2     0x4  5      OPC=pmovzxdq_xmm_xmm  
  vmovq %xmm6, %rbx      #  3     0x9  5      OPC=vmovq_r64_xmm     
  retq                   #  4     0xe  1      OPC=retq              
                                                                    
.size target, .-target
