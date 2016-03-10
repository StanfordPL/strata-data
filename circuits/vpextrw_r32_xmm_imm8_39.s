  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  movq $0x10, %rbx                                #  2     0x5   10     OPC=movq_r64_imm64     
  salb $0x1, %bh                                  #  3     0xf   2      OPC=salb_rh_one        
  vpmovzxwq %xmm11, %ymm1                         #  4     0x11  5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r12_r13                #  5     0x16  5      OPC=callq_label        
  cmovnaw %r13w, %bx                              #  6     0x1b  5      OPC=cmovnaw_r16_r16    
  retq                                            #  7     0x20  1      OPC=retq               
                                                                                               
.size target, .-target
