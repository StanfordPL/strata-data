  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm1                        #  1     0     5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label        
  movzwq %r10w, %rbx                            #  3     0xa   4      OPC=movzwq_r64_r16     
  xaddw %bx, %r12w                              #  4     0xe   5      OPC=xaddw_r16_r16      
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target
