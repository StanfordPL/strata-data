  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vsqrtpd %xmm2, %xmm4        #  1     0    4      OPC=vsqrtpd_xmm_xmm     
  vpandn %xmm4, %xmm4, %xmm9  #  2     0x4  4      OPC=vpandn_xmm_xmm_xmm  
  movddup %xmm9, %xmm1        #  3     0x8  5      OPC=movddup_xmm_xmm     
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
