  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm1_r10_r11  #  1     0     5      OPC=callq_label        
  andnl %r10d, %r10d, %edx          #  2     0x5   5      OPC=andnl_r32_r32_r32  
  callq .read_of_into_rbx           #  3     0xa   5      OPC=callq_label        
  addw %r10w, %bx                   #  4     0xf   4      OPC=addw_r16_r16       
  retq                              #  5     0x13  1      OPC=retq               
                                                                                 
.size target, .-target
