  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  movshdup %xmm1, %xmm11                        #  1     0     5      OPC=movshdup_xmm_xmm   
  vpmovzxwq %xmm11, %ymm1                       #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label        
  callq .move_032_064_r10d_r11d_rbx             #  4     0xf   5      OPC=callq_label        
  xchgw %bx, %r12w                              #  5     0x14  4      OPC=xchgw_r16_r16      
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
