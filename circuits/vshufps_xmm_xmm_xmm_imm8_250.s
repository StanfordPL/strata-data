  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vbroadcastss %xmm10, %xmm2                      #  2     0x5   5      OPC=vbroadcastss_xmm_xmm     
  vmovshdup %xmm3, %xmm6                          #  3     0xa   4      OPC=vmovshdup_xmm_xmm        
  vpunpckhqdq %xmm6, %xmm2, %xmm1                 #  4     0xe   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                                            #  5     0x12  1      OPC=retq                     
                                                                                                     
.size target, .-target
