  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  movaps %xmm1, %xmm9         #  1     0    4      OPC=movaps_xmm_xmm      
  vminsd %xmm9, %xmm9, %xmm2  #  2     0x4  5      OPC=vminsd_xmm_xmm_xmm  
  vpor %xmm2, %xmm2, %xmm1    #  3     0x9  4      OPC=vpor_xmm_xmm_xmm    
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
