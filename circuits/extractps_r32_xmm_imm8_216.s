  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmaxsd %xmm1, %xmm1, %xmm2                    #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm  
  movq $0x0, %rbx                               #  2     0x4   10     OPC=movq_r64_imm64      
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0xe   5      OPC=callq_label         
  xaddl %r12d, %ebx                             #  4     0x13  4      OPC=xaddl_r32_r32       
  xchgl %r10d, %ebx                             #  5     0x17  3      OPC=xchgl_r32_r32       
  retq                                          #  6     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
