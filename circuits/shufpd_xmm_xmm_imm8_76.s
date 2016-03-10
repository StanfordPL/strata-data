  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpcklpd %xmm1, %xmm2, %xmm13  #  1     0    4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmaxpd %xmm13, %xmm13, %xmm5    #  2     0x4  5      OPC=vmaxpd_xmm_xmm_xmm     
  punpcklqdq %xmm5, %xmm1         #  3     0x9  4      OPC=punpcklqdq_xmm_xmm     
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
