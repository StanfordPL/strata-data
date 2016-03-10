  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovsxdq %xmm1, %xmm4  #  1     0    5      OPC=vpmovsxdq_xmm_xmm  
  movd %xmm4, %ebx        #  2     0x5  4      OPC=movd_r32_xmm       
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
