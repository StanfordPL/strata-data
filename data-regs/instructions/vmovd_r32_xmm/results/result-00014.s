  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  vmovq %xmm1, %xmm2                #  1     0     4      OPC=vmovq_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x4   5      OPC=callq_label    
  vmovq %xmm1, %rbx                 #  3     0x9   5      OPC=vmovq_r64_xmm  
  addl %r11d, %ebx                  #  4     0xe   3      OPC=addl_r32_r32   
  retq                              #  5     0x11  1      OPC=retq           
                                                                             
.size target, .-target
