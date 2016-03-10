  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  movddup %xmm1, %xmm9                            #  1     0     5      OPC=movddup_xmm_xmm    
  vpmovzxwd %xmm9, %xmm3                          #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label        
  movd %xmm9, %ebx                                #  4     0xf   5      OPC=movd_r32_xmm       
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
