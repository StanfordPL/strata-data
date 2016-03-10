  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vminps %xmm2, %xmm2, %xmm6                      #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  punpckhqdq %xmm6, %xmm1                         #  2     0x4   4      OPC=punpckhqdq_xmm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label         
  movaps %xmm9, %xmm10                            #  4     0xd   4      OPC=movaps_xmm_xmm      
  callq .move_128_64_xmm1_xmm8_xmm9               #  5     0x11  5      OPC=callq_label         
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x16  5      OPC=callq_label         
  retq                                            #  7     0x1b  1      OPC=retq                
                                                                                                
.size target, .-target
