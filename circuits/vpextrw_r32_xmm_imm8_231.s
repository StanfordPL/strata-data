  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movq $0x0, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64     
  vpmovzxwq %xmm7, %xmm3                        #  3     0xf   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11              #  4     0x14  5      OPC=callq_label        
  andb %bl, %bh                                 #  5     0x19  2      OPC=andb_rh_r8         
  addw %r11w, %bx                               #  6     0x1b  4      OPC=addw_r16_r16       
  retq                                          #  7     0x1f  1      OPC=retq               
                                                                                             
.size target, .-target
