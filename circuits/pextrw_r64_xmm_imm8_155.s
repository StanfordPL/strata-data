  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm5, %xmm3                          #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label        
  movd %xmm9, %ebx                                #  4     0xf   5      OPC=movd_r32_xmm       
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target