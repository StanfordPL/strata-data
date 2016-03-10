  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                 
.target:                          #        0    0      OPC=<label>            
  vmovshdup %xmm1, %xmm3          #  1     0    4      OPC=vmovshdup_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9  #  2     0x4  5      OPC=callq_label        
  movzwl %r9w, %ebx               #  3     0x9  4      OPC=movzwl_r32_r16     
  retq                            #  4     0xd  1      OPC=retq               
                                                                              
.size target, .-target
