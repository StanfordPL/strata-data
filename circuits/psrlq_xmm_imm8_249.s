  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  xorps %xmm15, %xmm15    #  1     0    4      OPC=xorps_xmm_xmm     
  pmovzxbq %xmm15, %xmm5  #  2     0x4  6      OPC=pmovzxbq_xmm_xmm  
  pmovzxbq %xmm5, %xmm1   #  3     0xa  5      OPC=pmovzxbq_xmm_xmm  
  retq                    #  4     0xf  1      OPC=retq              
                                                                     
.size target, .-target
