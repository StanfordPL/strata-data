  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovlhps %xmm8, %xmm10, %xmm0                   #  2     0x5   5      OPC=vmovlhps_xmm_xmm_xmm  
  xorpd %xmm1, %xmm1                              #  3     0xa   4      OPC=xorpd_xmm_xmm         
  punpcklqdq %xmm0, %xmm1                         #  4     0xe   4      OPC=punpcklqdq_xmm_xmm    
  retq                                            #  5     0x12  1      OPC=retq                  
                                                                                                  
.size target, .-target
