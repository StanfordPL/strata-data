  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  punpcklqdq %xmm9, %xmm9             #  2     0x5   5      OPC=punpcklqdq_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0xa   5      OPC=callq_label         
  movlhps %xmm2, %xmm1                #  4     0xf   3      OPC=movlhps_xmm_xmm     
  retq                                #  5     0x12  1      OPC=retq                
                                                                                    
.size target, .-target
