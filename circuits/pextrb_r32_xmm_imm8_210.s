  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm1            #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  movq $0xd2, %rbx                  #  2     0x5   10     OPC=movq_r64_imm64     
  callq .move_128_064_xmm1_r10_r11  #  3     0xf   5      OPC=callq_label        
  movsbw %r11b, %r10w               #  4     0x14  5      OPC=movsbw_r16_r8      
  xchgb %r10b, %bl                  #  5     0x19  3      OPC=xchgb_r8_r8        
  retq                              #  6     0x1c  1      OPC=retq               
                                                                                 
.size target, .-target
