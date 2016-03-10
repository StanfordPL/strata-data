  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  movq $0x4, %rbx                               #  2     0x5   10     OPC=movq_r64_imm64     
  vpmovzxwq %xmm7, %ymm1                        #  3     0xf   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm1_r8_r9                #  4     0x14  5      OPC=callq_label        
  xchgw %bx, %r8w                               #  5     0x19  4      OPC=xchgw_r16_r16      
  retq                                          #  6     0x1d  1      OPC=retq               
                                                                                             
.size target, .-target
