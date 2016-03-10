  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm9, %xmm5                          #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  vmovq %xmm5, %rbp                               #  3     0xa   5      OPC=vmovq_r64_xmm      
  movq $0x0, %rbx                                 #  4     0xf   10     OPC=movq_r64_imm64     
  rorb $0x1, %bh                                  #  5     0x19  2      OPC=rorb_rh_one        
  xorw %bp, %bx                                   #  6     0x1b  3      OPC=xorw_r16_r16       
  retq                                            #  7     0x1e  1      OPC=retq               
                                                                                               
.size target, .-target
