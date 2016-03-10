  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxdq %xmm1, %xmm13                       #  1     0     5      OPC=vpmovzxdq_xmm_xmm  
  vcvtps2dq %ymm13, %ymm1                       #  2     0x5   5      OPC=vcvtps2dq_ymm_ymm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label        
  callq .move_032_064_r12d_r13d_rbx             #  4     0xf   5      OPC=callq_label        
  xaddl %ebx, %r10d                             #  5     0x14  4      OPC=xaddl_r32_r32      
  retq                                          #  6     0x18  1      OPC=retq               
                                                                                             
.size target, .-target
