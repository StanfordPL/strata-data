  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm3   #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  2     0x4  5      OPC=callq_label              
  movzbl %r13b, %ebx                #  3     0x9  4      OPC=movzbl_r32_r8            
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
