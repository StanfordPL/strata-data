  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movshdup %xmm1, %xmm1  #  1     0    4      OPC=movshdup_xmm_xmm  
  pmovzxwq %xmm1, %xmm1  #  2     0x4  5      OPC=pmovzxwq_xmm_xmm  
  movq %xmm1, %rbx       #  3     0x9  5      OPC=movq_r64_xmm      
  retq                   #  4     0xe  1      OPC=retq              
                                                                    
.size target, .-target
