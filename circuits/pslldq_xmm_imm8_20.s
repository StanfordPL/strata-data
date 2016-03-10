  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorpd %xmm1, %xmm1, %xmm4  #  1     0    4      OPC=vxorpd_xmm_xmm_xmm  
  cvtdq2pd %xmm4, %xmm1       #  2     0x4  4      OPC=cvtdq2pd_xmm_xmm    
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
