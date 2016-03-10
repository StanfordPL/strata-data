  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  movd %ebx, %xmm6                                #  2     0x5   4      OPC=movd_xmm_r32        
  punpckldq %xmm11, %xmm6                         #  3     0x9   5      OPC=punpckldq_xmm_xmm   
  punpcklqdq %xmm6, %xmm1                         #  4     0xe   4      OPC=punpcklqdq_xmm_xmm  
  retq                                            #  5     0x12  1      OPC=retq                
                                                                                                
.size target, .-target
