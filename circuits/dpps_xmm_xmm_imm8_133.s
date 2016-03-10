  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  mulps %xmm2, %xmm1                              #  1     0     3      OPC=mulps_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label      
  haddps %xmm11, %xmm11                           #  3     0x8   5      OPC=haddps_xmm_xmm   
  movddup %xmm11, %xmm1                           #  4     0xd   5      OPC=movddup_xmm_xmm  
  retq                                            #  5     0x12  1      OPC=retq             
                                                                                             
.size target, .-target
