  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm2            #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  xorl %edi, %edi                   #  2     0x5   2      OPC=xorl_r32_r32       
  callq .read_cf_into_rbx           #  3     0x7   5      OPC=callq_label        
  callq .move_128_064_xmm2_r10_r11  #  4     0xc   5      OPC=callq_label        
  xchgl %r11d, %ebx                 #  5     0x11  3      OPC=xchgl_r32_r32      
  retq                              #  6     0x14  1      OPC=retq               
                                                                                 
.size target, .-target
