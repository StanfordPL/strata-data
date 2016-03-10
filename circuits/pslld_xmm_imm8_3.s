  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vpaddd %xmm1, %xmm1, %xmm14   #  1     0     4      OPC=vpaddd_xmm_xmm_xmm  
  vpaddd %xmm14, %xmm14, %xmm7  #  2     0x4   5      OPC=vpaddd_xmm_xmm_xmm  
  vpaddd %xmm7, %xmm7, %xmm5    #  3     0x9   4      OPC=vpaddd_xmm_xmm_xmm  
  movdqu %xmm5, %xmm1           #  4     0xd   4      OPC=movdqu_xmm_xmm      
  retq                          #  5     0x11  1      OPC=retq                
                                                                              
.size target, .-target
