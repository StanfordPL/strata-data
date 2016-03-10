  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm1                        #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  movq $0x7, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64     
  orb %bh, %bh                                  #  3     0xf   2      OPC=orb_rh_rh          
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0x11  5      OPC=callq_label        
  cmovzw %r12w, %bx                             #  5     0x16  5      OPC=cmovzw_r16_r16     
  retq                                          #  6     0x1b  1      OPC=retq               
                                                                                             
.size target, .-target
