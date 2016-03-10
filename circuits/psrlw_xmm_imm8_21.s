  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  xorps %xmm0, %xmm0    #  1     0    3      OPC=xorps_xmm_xmm    
  movddup %xmm0, %xmm1  #  2     0x3  4      OPC=movddup_xmm_xmm  
  retq                  #  3     0x7  1      OPC=retq             
                                                                  
.size target, .-target
