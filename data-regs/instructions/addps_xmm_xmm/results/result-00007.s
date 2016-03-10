  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vaddps %xmm2, %xmm1, %xmm3  #  1     0    4      OPC=vaddps_xmm_xmm_xmm  
  movups %xmm3, %xmm1         #  2     0x4  3      OPC=movups_xmm_xmm      
  retq                        #  3     0x7  1      OPC=retq                
                                                                           
.size target, .-target
