  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vandps %xmm2, %xmm1, %xmm4  #  1     0    4      OPC=vandps_xmm_xmm_xmm  
  movdqa %xmm4, %xmm1         #  2     0x4  4      OPC=movdqa_xmm_xmm      
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
