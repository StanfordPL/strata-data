  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm3                   #  1     0     4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  vpmovzxwq %xmm9, %xmm8                          #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm      
  movd %xmm8, %ebx                                #  4     0xe   5      OPC=movd_r32_xmm           
  retq                                            #  5     0x13  1      OPC=retq                   
                                                                                                   
.size target, .-target
