  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vminsd %xmm1, %xmm1, %xmm14                   #  1     0     4      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x4   5      OPC=callq_label         
  vpmovsxbd %xmm14, %ymm1                       #  3     0x9   5      OPC=vpmovsxbd_ymm_xmm   
  callq .move_byte_28_of_ymm1_to_r8b            #  4     0xe   5      OPC=callq_label         
  movsbq %r8b, %rbx                             #  5     0x13  4      OPC=movsbq_r64_r8       
  xaddl %ebx, %r11d                             #  6     0x17  4      OPC=xaddl_r32_r32       
  retq                                          #  7     0x1b  1      OPC=retq                
                                                                                              
.size target, .-target
