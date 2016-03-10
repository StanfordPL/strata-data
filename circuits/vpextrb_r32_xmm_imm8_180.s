  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxbq %xmm9, %xmm12                         #  2     0x5   5      OPC=vpmovzxbq_xmm_xmm  
  vmovapd %xmm12, %xmm14                          #  3     0xa   5      OPC=vmovapd_xmm_xmm    
  movd %xmm14, %ebx                               #  4     0xf   5      OPC=movd_r32_xmm       
  salb $0x1, %bh                                  #  5     0x14  2      OPC=salb_rh_one        
  retq                                            #  6     0x16  1      OPC=retq               
                                                                                               
.size target, .-target
