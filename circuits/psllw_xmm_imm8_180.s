  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vxorpd %xmm1, %xmm1, %xmm5    #  1     0     4      OPC=vxorpd_xmm_xmm_xmm   
  pmovzxbq %xmm5, %xmm13        #  2     0x4   6      OPC=pmovzxbq_xmm_xmm     
  vhaddps %xmm13, %xmm5, %xmm3  #  3     0xa   5      OPC=vhaddps_xmm_xmm_xmm  
  movddup %xmm3, %xmm1          #  4     0xf   4      OPC=movddup_xmm_xmm      
  retq                          #  5     0x13  1      OPC=retq                 
                                                                               
.size target, .-target
