  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vmovapd %xmm2, %xmm0        #  1     0    4      OPC=vmovapd_xmm_xmm    
  vorpd %xmm1, %xmm0, %xmm15  #  2     0x4  4      OPC=vorpd_xmm_xmm_xmm  
  movdqa %xmm15, %xmm1        #  3     0x8  5      OPC=movdqa_xmm_xmm     
  retq                        #  4     0xd  1      OPC=retq               
                                                                          
.size target, .-target
