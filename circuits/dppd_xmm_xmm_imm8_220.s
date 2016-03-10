  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  pmovzxdq %xmm9, %xmm1                           #  2     0x5   6      OPC=pmovzxdq_xmm_xmm    
  punpckhqdq %xmm8, %xmm1                         #  3     0xb   5      OPC=punpckhqdq_xmm_xmm  
  retq                                            #  4     0x10  1      OPC=retq                
                                                                                                
.size target, .-target
