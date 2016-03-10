  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm9, %xmm3             #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9     #  3     0xa   5      OPC=callq_label        
  callq .move_032_064_r8d_r9d_rbx    #  4     0xf   5      OPC=callq_label        
  xchgl %ebx, %r9d                   #  5     0x14  3      OPC=xchgl_r32_r32      
  retq                               #  6     0x17  1      OPC=retq               
                                                                                  
.size target, .-target
