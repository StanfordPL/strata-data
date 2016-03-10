  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm1                         #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  movq $0x80, %rbx                                #  3     0xa   10     OPC=movq_r64_imm64     
  callq .move_128_064_xmm1_r10_r11                #  4     0x14  5      OPC=callq_label        
  stc                                             #  5     0x19  1      OPC=stc                
  sbbb %bh, %bl                                   #  6     0x1a  2      OPC=sbbb_r8_rh         
  cmovnew %r10w, %bx                              #  7     0x1c  5      OPC=cmovnew_r16_r16    
  retq                                            #  8     0x21  1      OPC=retq               
                                                                                               
.size target, .-target
