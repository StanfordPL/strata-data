  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  movhlps %xmm2, %xmm2                            #  1     0     3      OPC=movhlps_xmm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label         
  unpcklps %xmm2, %xmm9                           #  3     0x8   4      OPC=unpcklps_xmm_xmm    
  punpcklqdq %xmm9, %xmm1                         #  4     0xc   5      OPC=punpcklqdq_xmm_xmm  
  retq                                            #  5     0x11  1      OPC=retq                
                                                                                                
.size target, .-target
