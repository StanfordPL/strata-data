  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpunpcklqdq %xmm4, %xmm5, %xmm10              #  2     0x5   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovsldup %xmm10, %xmm1                       #  3     0x9   5      OPC=vmovsldup_xmm_xmm        
  vbroadcastss %xmm7, %ymm12                    #  4     0xe   5      OPC=vbroadcastss_ymm_xmm     
  vpunpckldq %xmm1, %xmm12, %xmm1               #  5     0x13  4      OPC=vpunpckldq_xmm_xmm_xmm   
  retq                                          #  6     0x17  1      OPC=retq                     
                                                                                                   
.size target, .-target
