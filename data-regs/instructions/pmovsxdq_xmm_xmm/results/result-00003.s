  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovsxdq %xmm2, %xmm9  #  1     0    5      OPC=vpmovsxdq_xmm_xmm  
  movaps %xmm9, %xmm1     #  2     0x5  4      OPC=movaps_xmm_xmm     
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
