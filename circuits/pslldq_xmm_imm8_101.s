  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                   
.target:                          #        0    0      OPC=<label>              
  vpandn %xmm1, %xmm1, %xmm12     #  1     0    4      OPC=vpandn_xmm_xmm_xmm   
  vhaddps %xmm12, %xmm12, %xmm15  #  2     0x4  5      OPC=vhaddps_xmm_xmm_xmm  
  cvtdq2pd %xmm15, %xmm1          #  3     0x9  5      OPC=cvtdq2pd_xmm_xmm     
  retq                            #  4     0xe  1      OPC=retq                 
                                                                                
.size target, .-target
