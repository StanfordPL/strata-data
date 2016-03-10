  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpmovzxwq %xmm9, %xmm14                         #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm      
  vunpckhps %xmm9, %xmm14, %xmm4                  #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  movupd %xmm4, %xmm1                             #  4     0xf   4      OPC=movupd_xmm_xmm         
  callq .move_128_064_xmm1_r10_r11                #  5     0x13  5      OPC=callq_label            
  callq .move_032_064_r10d_r11d_rbx               #  6     0x18  5      OPC=callq_label            
  retq                                            #  7     0x1d  1      OPC=retq                   
                                                                                                   
.size target, .-target
