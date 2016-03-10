  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm2            #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label        
  movq $0x20, %rbx                  #  3     0xa   10     OPC=movq_r64_imm64     
  xchgw %r13w, %bx                  #  4     0x14  4      OPC=xchgw_r16_r16      
  retq                              #  5     0x18  1      OPC=retq               
                                                                                 
.size target, .-target
