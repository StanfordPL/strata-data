  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm5, %ebx                         #  2     0x5   4      OPC=vmovmskpd_r32_xmm  
  clc                                           #  3     0x9   1      OPC=clc                
  movd %xmm7, %r11d                             #  4     0xa   5      OPC=movd_r32_xmm       
  adcl %r11d, %ebx                              #  5     0xf   3      OPC=adcl_r32_r32       
  retq                                          #  6     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
