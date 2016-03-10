  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmovd %ebx, %xmm4                             #  1     0     4      OPC=vmovd_xmm_r32       
  vmovdqa %xmm4, %xmm11                         #  2     0x4   4      OPC=vmovdqa_xmm_xmm     
  vmovapd %ymm4, %ymm10                         #  3     0x8   4      OPC=vmovapd_ymm_ymm     
  punpckhqdq %xmm4, %xmm10                      #  4     0xc   5      OPC=punpckhqdq_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm2           #  5     0x11  5      OPC=callq_label         
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  6     0x16  5      OPC=callq_label         
  xaddb %r13b, %al                              #  7     0x1b  4      OPC=xaddb_r8_r8         
  xchgq %rax, %rbx                              #  8     0x1f  3      OPC=xchgq_r64_r64       
  retq                                          #  9     0x22  1      OPC=retq                
                                                                                              
.size target, .-target
