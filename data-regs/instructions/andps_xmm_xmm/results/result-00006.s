  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vandps %xmm2, %xmm1, %xmm5  #  1     0    4      OPC=vandps_xmm_xmm_xmm  
  movups %xmm5, %xmm7         #  2     0x4  3      OPC=movups_xmm_xmm      
  movaps %xmm7, %xmm1         #  3     0x7  3      OPC=movaps_xmm_xmm      
  retq                        #  4     0xa  1      OPC=retq                
                                                                           
.size target, .-target
