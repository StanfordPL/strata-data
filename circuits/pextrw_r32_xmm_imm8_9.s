  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  xorl %r11d, %r11d                 #  1     0     3      OPC=xorl_r32_r32       
  vpmovzxwq %xmm1, %xmm2            #  2     0x3   5      OPC=vpmovzxwq_xmm_xmm  
  movq $0x5, %rbx                   #  3     0x8   10     OPC=movq_r64_imm64     
  callq .move_128_064_xmm2_r12_r13  #  4     0x12  5      OPC=callq_label        
  cmovnbw %r13w, %bx                #  5     0x17  5      OPC=cmovnbw_r16_r16    
  retq                              #  6     0x1c  1      OPC=retq               
                                                                                 
.size target, .-target
