  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm10, %xmm8, %xmm11                 #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  movups %xmm11, %xmm1                            #  3     0xa   4      OPC=movups_xmm_xmm         
  unpcklpd %xmm10, %xmm1                          #  4     0xe   5      OPC=unpcklpd_xmm_xmm       
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
