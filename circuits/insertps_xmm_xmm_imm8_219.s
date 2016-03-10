  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vxorps %ymm4, %ymm4, %ymm13                     #  1     0     4      OPC=vxorps_ymm_ymm_ymm  
  movsd %xmm13, %xmm1                             #  2     0x4   5      OPC=movsd_xmm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label         
  punpcklqdq %xmm10, %xmm1                        #  4     0xe   5      OPC=punpcklqdq_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
