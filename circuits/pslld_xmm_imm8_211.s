  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  pmovzxwq %xmm1, %xmm10  #  1     0    6      OPC=pmovzxwq_xmm_xmm  
  movshdup %xmm10, %xmm1  #  2     0x6  5      OPC=movshdup_xmm_xmm  
  retq                    #  3     0xb  1      OPC=retq              
                                                                     
.size target, .-target
