  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm1                          #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  movq $0x7, %rbx                                 #  3     0xa   10     OPC=movq_r64_imm64     
  movd %xmm9, %esp                                #  4     0x14  5      OPC=movd_r32_xmm       
  xchgw %sp, %bx                                  #  5     0x19  3      OPC=xchgw_r16_r16      
  retq                                            #  6     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
