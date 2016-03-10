  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vaddps %xmm2, %xmm1, %xmm2  #  1     0    4      OPC=vaddps_xmm_xmm_xmm  
  movdqu %xmm2, %xmm1         #  2     0x4  4      OPC=movdqu_xmm_xmm      
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
