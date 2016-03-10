  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmulps %xmm2, %xmm1, %xmm3                      #  1     0     4      OPC=vmulps_xmm_xmm_xmm  
  punpckhqdq %xmm3, %xmm3                         #  2     0x4   4      OPC=punpckhqdq_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label         
  addsubps %xmm9, %xmm3                           #  4     0xd   5      OPC=addsubps_xmm_xmm    
  movshdup %xmm3, %xmm1                           #  5     0x12  4      OPC=movshdup_xmm_xmm    
  retq                                            #  6     0x16  1      OPC=retq                
                                                                                                
.size target, .-target
