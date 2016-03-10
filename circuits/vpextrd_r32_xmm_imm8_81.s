  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                 
.target:                            #        0    0      OPC=<label>            
  vmovshdup %xmm1, %xmm2            #  1     0    4      OPC=vmovshdup_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x4  5      OPC=callq_label        
  movl %r10d, %ebx                  #  3     0x9  3      OPC=movl_r32_r32       
  retq                              #  4     0xc  1      OPC=retq               
                                                                                
.size target, .-target
