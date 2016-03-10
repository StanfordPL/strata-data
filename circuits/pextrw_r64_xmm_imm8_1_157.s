  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm1, %r11d                    #  2     0x5   4      OPC=vmovmskpd_r32_xmm  
  callq .move_032_064_r8d_r9d_rbx           #  3     0x9   5      OPC=callq_label        
  callq .move_032_016_ebx_r10w_r11w         #  4     0xe   5      OPC=callq_label        
  xchgl %r11d, %ebx                         #  5     0x13  3      OPC=xchgl_r32_r32      
  retq                                      #  6     0x16  1      OPC=retq               
                                                                                         
.size target, .-target
