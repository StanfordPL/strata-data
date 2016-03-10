  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  pmovzxbq %xmm1, %xmm15  #  1     0    6      OPC=pmovzxbq_xmm_xmm  
  movq %xmm15, %rbx       #  2     0x6  5      OPC=movq_r64_xmm      
  retq                    #  3     0xb  1      OPC=retq              
                                                                     
.size target, .-target
