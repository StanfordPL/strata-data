  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpaddd %xmm3, %xmm7, %xmm11                   #  2     0x5   4      OPC=vpaddd_xmm_xmm_xmm       
  vmovss %xmm2, %xmm11, %xmm7                   #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm       
  vpunpcklqdq %xmm3, %xmm7, %xmm1               #  4     0xd   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  unpckhpd %xmm5, %xmm2                         #  5     0x11  4      OPC=unpckhpd_xmm_xmm         
  vunpcklpd %xmm2, %xmm1, %xmm1                 #  6     0x15  4      OPC=vunpcklpd_xmm_xmm_xmm    
  retq                                          #  7     0x19  1      OPC=retq                     
                                                                                                   
.size target, .-target
