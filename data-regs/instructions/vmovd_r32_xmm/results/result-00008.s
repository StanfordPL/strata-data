  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode             
.target:                                        #        0     0      OPC=<label>        
  vmovq %xmm1, %rax                             #  1     0     5      OPC=vmovq_r64_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label    
  movsbq %r10b, %rbx                            #  3     0xa   4      OPC=movsbq_r64_r8  
  xaddl %ebx, %eax                              #  4     0xe   3      OPC=xaddl_r32_r32  
  retq                                          #  5     0x11  1      OPC=retq           
                                                                                         
.size target, .-target
