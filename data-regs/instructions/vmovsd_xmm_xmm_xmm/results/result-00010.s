  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  punpcklqdq %xmm3, %xmm3           #  1     0     4      OPC=punpcklqdq_xmm_xmm  
  punpckhqdq %xmm2, %xmm3           #  2     0x4   4      OPC=punpckhqdq_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  3     0x8   5      OPC=callq_label         
  vzeroall                          #  4     0xd   3      OPC=vzeroall            
  callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label         
  retq                              #  6     0x15  1      OPC=retq                
                                                                                  
.size target, .-target
