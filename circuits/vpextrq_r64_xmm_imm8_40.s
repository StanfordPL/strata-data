  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                 
.target:                           #        0     0      OPC=<label>            
  movddup %xmm1, %xmm7             #  1     0     4      OPC=movddup_xmm_xmm    
  vpmovzxdq %xmm7, %xmm1           #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9   #  3     0x9   5      OPC=callq_label        
  callq .move_032_064_r8d_r9d_rbx  #  4     0xe   5      OPC=callq_label        
  retq                             #  5     0x13  1      OPC=retq               
                                                                                
.size target, .-target
