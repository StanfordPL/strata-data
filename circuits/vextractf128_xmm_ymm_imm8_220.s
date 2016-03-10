  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  movdqa %xmm1, %xmm12          #  1     0    5      OPC=movdqa_xmm_xmm      
  vmaxpd %xmm12, %xmm1, %xmm12  #  2     0x5  5      OPC=vmaxpd_xmm_xmm_xmm  
  vorpd %xmm12, %xmm1, %xmm1    #  3     0xa  5      OPC=vorpd_xmm_xmm_xmm   
  retq                          #  4     0xf  1      OPC=retq                
                                                                             
.size target, .-target
