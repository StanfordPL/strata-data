  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vpxor %xmm0, %xmm0, %xmm12  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  movddup %xmm12, %xmm1       #  2     0x4  5      OPC=movddup_xmm_xmm    
  retq                        #  3     0x9  1      OPC=retq               
                                                                          
.size target, .-target
