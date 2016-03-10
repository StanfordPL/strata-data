  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm5                        #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  vpor %ymm5, %ymm5, %ymm1                      #  2     0x5   4      OPC=vpor_ymm_ymm_ymm   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label        
  movzwq %r13w, %rbx                            #  4     0xe   4      OPC=movzwq_r64_r16     
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
