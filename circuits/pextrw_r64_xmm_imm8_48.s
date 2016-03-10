  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  pmovsxbd %xmm10, %xmm12              #  2     0x5   6      OPC=pmovsxbd_xmm_xmm        
  vpunpckldq %xmm12, %xmm10, %xmm3     #  3     0xb   5      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r10_r11     #  4     0x10  5      OPC=callq_label             
  movzwq %r10w, %rbx                   #  5     0x15  4      OPC=movzwq_r64_r16          
  retq                                 #  6     0x19  1      OPC=retq                    
                                                                                         
.size target, .-target
