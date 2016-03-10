  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movmskpd %xmm7, %r13d                         #  2     0x5   5      OPC=movmskpd_r32_xmm  
  movzbl %r13b, %ebx                            #  3     0xa   4      OPC=movzbl_r32_r8     
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  4     0xe   5      OPC=callq_label       
  xaddl %ebx, %r13d                             #  5     0x13  4      OPC=xaddl_r32_r32     
  retq                                          #  6     0x17  1      OPC=retq              
                                                                                            
.size target, .-target
