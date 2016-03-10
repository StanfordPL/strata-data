  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode              
.target:                                          #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label     
  vmovq %xmm9, %rbx                               #  2     0x5  5      OPC=vmovq_r64_xmm   
  movzwl %bx, %ebx                                #  3     0xa  3      OPC=movzwl_r32_r16  
  retq                                            #  4     0xd  1      OPC=retq            
                                                                                           
.size target, .-target
