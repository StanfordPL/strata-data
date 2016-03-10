  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovupd %xmm10, %xmm6                           #  2     0x5   5      OPC=vmovupd_xmm_xmm    
  vpmovzxbq %xmm6, %xmm3                          #  3     0xa   5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11                #  4     0xf   5      OPC=callq_label        
  movq $0x1, %rbx                                 #  5     0x14  10     OPC=movq_r64_imm64     
  callq .move_008_016_r10b_r11b_bx                #  6     0x1e  5      OPC=callq_label        
  retq                                            #  7     0x23  1      OPC=retq               
                                                                                               
.size target, .-target
