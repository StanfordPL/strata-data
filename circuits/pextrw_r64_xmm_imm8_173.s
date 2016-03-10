  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm6, %ymm3                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  movq $0xfffffffffffffff0, %rbx                #  3     0xa   10     OPC=movq_r64_imm64     
  notq %rbx                                     #  4     0x14  3      OPC=notq_r64           
  callq .move_128_064_xmm3_r12_r13              #  5     0x17  5      OPC=callq_label        
  xchgw %bx, %r13w                              #  6     0x1c  4      OPC=xchgw_r16_r16      
  retq                                          #  7     0x20  1      OPC=retq               
                                                                                             
.size target, .-target
