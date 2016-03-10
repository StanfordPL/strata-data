  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckldq %xmm10, %xmm11, %xmm8                #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm   
  vbroadcastss %xmm9, %ymm10                      #  3     0xa   5      OPC=vbroadcastss_ymm_xmm     
  vpunpcklqdq %xmm10, %xmm8, %xmm1                #  4     0xf   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  5     0x14  1      OPC=retq                     
                                                                                                     
.size target, .-target
