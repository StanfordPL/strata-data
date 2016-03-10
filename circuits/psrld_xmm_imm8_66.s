  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm8  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  haddpd %xmm8, %xmm1         #  2     0x4  5      OPC=haddpd_xmm_xmm      
  movhlps %xmm1, %xmm1        #  3     0x9  3      OPC=movhlps_xmm_xmm     
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
