  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vcvttpd2dq %xmm1, %xmm7                       #  1     0     4      OPC=vcvttpd2dq_xmm_xmm    
  vmovhlps %xmm1, %xmm7, %xmm1                  #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x8   5      OPC=callq_label           
  movzwl %r11w, %ebx                            #  4     0xd   4      OPC=movzwl_r32_r16        
  retq                                          #  5     0x11  1      OPC=retq                  
                                                                                                
.size target, .-target
