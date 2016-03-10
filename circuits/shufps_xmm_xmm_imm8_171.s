  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm1, %xmm0               #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label              
  movsldup %xmm0, %xmm1                         #  3     0x9   4      OPC=movsldup_xmm_xmm         
  movss %xmm7, %xmm1                            #  4     0xd   4      OPC=movss_xmm_xmm            
  retq                                          #  5     0x11  1      OPC=retq                     
                                                                                                   
.size target, .-target
