  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  punpckhqdq %xmm1, %xmm1  #  1     0    4      OPC=punpckhqdq_xmm_xmm  
  pmovzxwq %xmm1, %xmm8    #  2     0x4  6      OPC=pmovzxwq_xmm_xmm    
  movq %xmm8, %rbx         #  3     0xa  5      OPC=movq_r64_xmm        
  retq                     #  4     0xf  1      OPC=retq                
                                                                        
.size target, .-target
