  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  movq $0x4, %rbx                                 #  1     0     10     OPC=movq_r64_imm64     
  subl %ebx, %ebx                                 #  2     0xa   2      OPC=subl_r32_r32       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xc   5      OPC=callq_label        
  cmovgw %bx, %bx                                 #  4     0x11  4      OPC=cmovgw_r16_r16     
  vpmovzxwq %xmm11, %ymm1                         #  5     0x15  5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9                  #  6     0x1a  5      OPC=callq_label        
  adcw %r9w, %bx                                  #  7     0x1f  4      OPC=adcw_r16_r16       
  retq                                            #  8     0x23  1      OPC=retq               
                                                                                               
.size target, .-target
