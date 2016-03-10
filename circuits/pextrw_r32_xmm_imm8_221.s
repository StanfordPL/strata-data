  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  cvtss2sil %xmm1, %ebx                           #  1     0     4      OPC=cvtss2sil_r32_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label        
  vpmovzxwq %xmm10, %ymm1                         #  3     0x9   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d    #  4     0xe   5      OPC=callq_label        
  callq .move_016_032_r12w_r13w_ebx               #  5     0x13  5      OPC=callq_label        
  retq                                            #  6     0x18  1      OPC=retq               
                                                                                               
.size target, .-target
