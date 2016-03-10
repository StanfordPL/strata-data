  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vpand %xmm2, %xmm1, %xmm14  #  1     0    4      OPC=vpand_xmm_xmm_xmm  
  movdqa %xmm14, %xmm1        #  2     0x4  5      OPC=movdqa_xmm_xmm     
  retq                        #  3     0x9  1      OPC=retq               
                                                                          
.size target, .-target
