  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pmovzxwq %xmm1, %xmm7  #  1     0    5      OPC=pmovzxwq_xmm_xmm  
  vmovq %xmm7, %rbx      #  2     0x5  5      OPC=vmovq_r64_xmm     
  retq                   #  3     0xa  1      OPC=retq              
                                                                    
.size target, .-target
