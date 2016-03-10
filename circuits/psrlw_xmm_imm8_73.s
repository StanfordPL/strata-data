  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm6  #  1     0    4      OPC=vpandn_xmm_xmm_xmm  
  movddup %xmm6, %xmm1        #  2     0x4  4      OPC=movddup_xmm_xmm     
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
