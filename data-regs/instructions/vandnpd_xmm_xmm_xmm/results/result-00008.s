  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movdqu %xmm2, %xmm8         #  1     0    5      OPC=movdqu_xmm_xmm      
  vpandn %xmm3, %xmm8, %xmm1  #  2     0x5  4      OPC=vpandn_xmm_xmm_xmm  
  retq                        #  3     0x9  1      OPC=retq                
                                                                           
.size target, .-target
