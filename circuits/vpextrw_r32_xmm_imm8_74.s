  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  xorq %rbx, %rbx                   #  1     0     3      OPC=xorq_r64_r64       
  movshdup %xmm1, %xmm6             #  2     0x3   4      OPC=movshdup_xmm_xmm   
  vpmovzxwq %xmm6, %ymm3            #  3     0x7   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm3_r10_r11  #  4     0xc   5      OPC=callq_label        
  cmovncw %r10w, %bx                #  5     0x11  5      OPC=cmovncw_r16_r16    
  retq                              #  6     0x16  1      OPC=retq               
                                                                                 
.size target, .-target
