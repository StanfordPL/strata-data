  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  sqrtps %xmm2, %xmm6         #  1     0    3      OPC=sqrtps_xmm_xmm      
  vmovss %xmm6, %xmm1, %xmm9  #  2     0x3  4      OPC=vmovss_xmm_xmm_xmm  
  movaps %xmm9, %xmm1         #  3     0x7  4      OPC=movaps_xmm_xmm      
  retq                        #  4     0xb  1      OPC=retq                
                                                                           
.size target, .-target
