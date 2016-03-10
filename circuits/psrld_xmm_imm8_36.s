  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  andnpd %xmm1, %xmm1    #  1     0    4      OPC=andnpd_xmm_xmm    
  cvtdq2pd %xmm1, %xmm8  #  2     0x4  5      OPC=cvtdq2pd_xmm_xmm  
  movapd %xmm8, %xmm1    #  3     0x9  5      OPC=movapd_xmm_xmm    
  retq                   #  4     0xe  1      OPC=retq              
                                                                    
.size target, .-target
